import copy
import torch
import torch.nn as nn
from torchvision.models.resnet import resnet50, Bottleneck

num_classes = 751  # change this depend on your dataset


class MCN(nn.Module):
    def __init__(self):
        super(MCN, self).__init__()

        feats = 256
        resnet = resnet50(pretrained=True)

        self.backbone = nn.Sequential(
            resnet.conv1,
            resnet.bn1,
            resnet.relu,
            resnet.maxpool,
            resnet.layer1,
            resnet.layer2,
            resnet.layer3[0],
        )

        res_conv4 = nn.Sequential(*resnet.layer3[1:])

        res_g_conv5 = resnet.layer4

        res_p_conv5 = nn.Sequential(
            Bottleneck(1024, 512, downsample=nn.Sequential(nn.Conv2d(1024, 2048, 1, bias=False), nn.BatchNorm2d(2048))),
            Bottleneck(2048, 512),
            Bottleneck(2048, 512))
        res_p_conv5.load_state_dict(resnet.layer4.state_dict())

        self.p1 = nn.Sequential(copy.deepcopy(res_conv4), copy.deepcopy(res_g_conv5))
        self.p2 = nn.Sequential(copy.deepcopy(res_conv4), copy.deepcopy(res_p_conv5))
        self.p3 = nn.Sequential(copy.deepcopy(res_conv4), copy.deepcopy(res_p_conv5))
        self.p5 = nn.Sequential(copy.deepcopy(res_conv4), copy.deepcopy(res_p_conv5))

        self.maxpool_zg_p1 = nn.MaxPool2d(kernel_size=(12, 4))
        self.maxpool_zg_p2 = nn.MaxPool2d(kernel_size=(24, 8))

        self.maxpool_zp2 = nn.MaxPool2d(kernel_size=(12, 8))
        self.maxpool_zp3 = nn.MaxPool2d(kernel_size=(8, 8))

        self.reduction = nn.Sequential(nn.Conv2d(2048, feats, 1, bias=False), nn.BatchNorm2d(feats), nn.ReLU())
        self.reduction2 = nn.Sequential(nn.Conv2d(512, feats, 1, bias=False), nn.BatchNorm2d(feats), nn.ReLU())

        self.mask0 = nn.Sequential(nn.Conv2d(2048, 1, 1), nn.Sigmoid())
        self.mask1 = nn.Sequential(nn.Conv2d(2048, 1, 1), nn.Sigmoid())
        self.mask2 = nn.Sequential(nn.Conv2d(2048, 1, 1), nn.Sigmoid())  #bs, 1, 24, 8
        self.mask3 = nn.Sequential(nn.Conv2d(2048, 2048, 1), nn.Sigmoid())  #bs, 2048, 1, 1
        self.gap3 = nn.AvgPool2d((24, 8), 1)

        self._init_reduction(self.reduction)
        self._init_reduction(self.reduction2)

        self.fc_id_2048_0 = nn.Linear(feats, num_classes)
        self.fc_id_2048_1 = nn.Linear(feats, num_classes)
        self.fc_id_2048_2 = nn.Linear(feats, num_classes)
        self.fc_id_2048_4 = nn.Linear(feats, num_classes)

        self.fc_id_256_1_0 = nn.Linear(feats, num_classes)
        self.fc_id_256_1_1 = nn.Linear(feats, num_classes)
        self.fc_id_256_2_0 = nn.Linear(feats, num_classes)
        self.fc_id_256_2_1 = nn.Linear(feats, num_classes)
        self.fc_id_256_2_2 = nn.Linear(feats, num_classes)

        self.fc_id_256_4_0 = nn.Linear(feats, num_classes)
        self.fc_id_256_4_1 = nn.Linear(feats, num_classes)
        self.fc_id_256_4_2 = nn.Linear(feats, num_classes)
        self.fc_id_256_4_3 = nn.Linear(feats, num_classes)

        self._init_fc(self.fc_id_2048_0)
        self._init_fc(self.fc_id_2048_1)
        self._init_fc(self.fc_id_2048_2)
        self._init_fc(self.fc_id_2048_4)

        self._init_fc(self.fc_id_256_1_0)
        self._init_fc(self.fc_id_256_1_1)
        self._init_fc(self.fc_id_256_2_0)
        self._init_fc(self.fc_id_256_2_1)
        self._init_fc(self.fc_id_256_2_2)

        self._init_fc(self.fc_id_256_4_0)
        self._init_fc(self.fc_id_256_4_1)
        self._init_fc(self.fc_id_256_4_2)
        self._init_fc(self.fc_id_256_4_3)

        self._init_fc(self.mask0[0])
        self._init_fc(self.mask1[0])
        self._init_fc(self.mask2[0])
        self._init_fc(self.mask3[0])


    @staticmethod
    def _init_reduction(reduction):
        # conv
        nn.init.kaiming_normal_(reduction[0].weight, mode='fan_in')
        # nn.init.constant_(reduction[0].bias, 0.)

        # bn
        nn.init.normal_(reduction[1].weight, mean=1., std=0.02)
        nn.init.constant_(reduction[1].bias, 0.)

    @staticmethod
    def _init_fc(fc):
        nn.init.kaiming_normal_(fc.weight, mode='fan_out')
        # nn.init.normal_(fc.weight, std=0.001)
        nn.init.constant_(fc.bias, 0.)

    def forward(self, x):
        x = self.backbone(x)

        p1 = self.p1(x)
        p2 = self.p2(x)
        p3 = self.p3(x)
        p5 = self.p5(x)

        p1 = torch.mul(p1, self.mask0(p1).expand_as(p1))
        p2 = torch.mul(p2, self.mask1(p2).expand_as(p2))
        p3 = torch.mul(p3, self.mask2(p3).expand_as(p3))
        p5_temp = self.gap3(p5)
        p5 = torch.mul(p5, self.mask3(p5_temp).expand_as(p5))

        zg_p1 = self.maxpool_zg_p1(p1)
        zg_p2 = self.maxpool_zg_p2(p2)
        zg_p3 = self.maxpool_zg_p2(p3)
        zg_p5 = self.maxpool_zg_p2(p5)

        zp2 = self.maxpool_zp2(p2)
        z0_p2 = zp2[:, :, 0:1, :]
        z1_p2 = zp2[:, :, 1:2, :]

        zp3 = self.maxpool_zp3(p3)
        z0_p3 = zp3[:, :, 0:1, :]
        z1_p3 = zp3[:, :, 1:2, :]
        z2_p3 = zp3[:, :, 2:3, :]

        z0_p5 = self.maxpool_zg_p2(p5[:, 0:512, :, :])
        z1_p5 = self.maxpool_zg_p2(p5[:, 512:1024, :, :])
        z2_p5 = self.maxpool_zg_p2(p5[:, 1024:1536, :, :])
        z3_p5 = self.maxpool_zg_p2(p5[:, 1536:2048, :, :])

        fg_p1 = self.reduction(zg_p1).squeeze(dim=3).squeeze(dim=2)
        fg_p2 = self.reduction(zg_p2).squeeze(dim=3).squeeze(dim=2)
        fg_p3 = self.reduction(zg_p3).squeeze(dim=3).squeeze(dim=2)
        fg_p5 = self.reduction(zg_p5).squeeze(dim=3).squeeze(dim=2)

        f0_p2 = self.reduction(z0_p2).squeeze(dim=3).squeeze(dim=2)
        f1_p2 = self.reduction(z1_p2).squeeze(dim=3).squeeze(dim=2)
        f0_p3 = self.reduction(z0_p3).squeeze(dim=3).squeeze(dim=2)
        f1_p3 = self.reduction(z1_p3).squeeze(dim=3).squeeze(dim=2)
        f2_p3 = self.reduction(z2_p3).squeeze(dim=3).squeeze(dim=2)

        f0_p5 = self.reduction2(z0_p5).squeeze(dim=3).squeeze(dim=2)
        f1_p5 = self.reduction2(z1_p5).squeeze(dim=3).squeeze(dim=2)
        f2_p5 = self.reduction2(z2_p5).squeeze(dim=3).squeeze(dim=2)
        f3_p5 = self.reduction2(z3_p5).squeeze(dim=3).squeeze(dim=2)

        l_p1 = self.fc_id_2048_0(fg_p1)
        l_p2 = self.fc_id_2048_1(fg_p2)
        l_p3 = self.fc_id_2048_2(fg_p3)
        l_p5 = self.fc_id_2048_4(fg_p5)

        l0_p2 = self.fc_id_256_1_0(f0_p2)
        l1_p2 = self.fc_id_256_1_1(f1_p2)
        l0_p3 = self.fc_id_256_2_0(f0_p3)
        l1_p3 = self.fc_id_256_2_1(f1_p3)
        l2_p3 = self.fc_id_256_2_2(f2_p3)

        l0_p5 = self.fc_id_256_4_0(f0_p5)
        l1_p5 = self.fc_id_256_4_1(f1_p5)
        l2_p5 = self.fc_id_256_4_2(f2_p5)
        l3_p5 = self.fc_id_256_4_3(f3_p5)

        predict = torch.cat([fg_p1, fg_p2, fg_p3, fg_p5, f0_p2, f1_p2, f0_p3, f1_p3, f2_p3, f0_p5, f1_p5, f2_p5, f3_p5], dim=1)  #256*13=3328

        return predict, fg_p1, fg_p2, fg_p3, fg_p5, l_p1, l_p2, l_p3, l_p5, l0_p2, l1_p2, l0_p3, l1_p3, l2_p3, l0_p5, l1_p5, l2_p5, l3_p5
