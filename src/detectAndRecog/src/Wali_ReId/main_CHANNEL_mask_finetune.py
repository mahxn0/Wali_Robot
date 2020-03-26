import os
import numpy as np
from scipy.spatial.distance import cdist
from tqdm import tqdm
import matplotlib

matplotlib.use('agg')
import matplotlib.pyplot as plt

import torch
from torch.optim import lr_scheduler
import sys
sys.path.append('..')

from opt_CHANNEL_mask_finetune import opt
from data import Data
from network_CHANNEL_mask import MCN
from loss_CHANNEL_mask import Loss
from get_optimizer_mask import get_optimizer
from utils.extract_feature import extract_feature
from utils.metrics import mean_ap, cmc, re_ranking
import tensorboardX
mark = 'CHANNEL_mask_finetune_4'
dim_1 = 3328
# weight_path = '/home/cuimeng/py_projects/ReID-MGN-TEST/CHANNEL_FULL/weights_CHANNEL_FULL/model_400.pt'
# weight_path = '/home/cuimeng/py_projects/ReID-MGN-TEST/CHANNEL_MASK/weights_CHANNEL_mask_finetune/model_100.pt'
weight_path = '/home/cuimeng/py_projects/ReID-MGN-TEST/CHANNEL_MASK_finetune/weights_CHANNEL_mask_finetune_3/model_210.pt'

os.environ['CUDA_VISIBLE_DEVICES'] = '0'


class Main():
    def __init__(self, model, loss, data):
        self.train_loader = data.train_loader
        self.test_loader = data.test_loader
        self.query_loader = data.query_loader
        self.testset = data.testset
        self.queryset = data.queryset

        self.model = model
        self.loss = loss
        self.optimizer = get_optimizer(model, opt)
        self.scheduler = lr_scheduler.MultiStepLR(self.optimizer, milestones=opt.lr_scheduler, gamma=0.1)

    def train(self, epoch, writer):

        self.scheduler.step()

        self.model.train()
        for batch, (inputs, labels) in enumerate(self.train_loader):
            inputs = inputs.to('cuda')
            labels = labels.to('cuda')
            self.optimizer.zero_grad()
            # for key, value in model.named_parameters():
            #     print(key, value.requires_grad)
            outputs = self.model(inputs)
            loss_sum, Triplet_Loss, CrossEntropy_Loss = self.loss(outputs, labels)

            loss_sum.backward()
            self.optimizer.step()
        writer.add_scalars('Losses',
                           {'loss_sum': loss_sum, 'Triplet_Loss': Triplet_Loss, 'CrossEntropy_Loss': CrossEntropy_Loss},
                           epoch)
    def evaluate(self, epoch, writer):

        self.model.eval()

        print('extract features, this may take a few minutes')
        qf = extract_feature(self.model, tqdm(self.query_loader), dim_1=dim_1).numpy()   #num_query, 2048
        gf = extract_feature(self.model, tqdm(self.test_loader), dim_1=dim_1).numpy()    #num_gallery, 2048

        def rank(dist):
            r = cmc(dist, self.queryset.ids, self.testset.ids, self.queryset.cameras, self.testset.cameras,
                    separate_camera_set=False,
                    single_gallery_shot=False,
                    first_match_break=True)
            m_ap = mean_ap(dist, self.queryset.ids, self.testset.ids, self.queryset.cameras, self.testset.cameras)

            return r, m_ap

        #########################   re rank##########################
        q_g_dist = np.dot(qf, np.transpose(gf))
        q_q_dist = np.dot(qf, np.transpose(qf))
        g_g_dist = np.dot(gf, np.transpose(gf))
        dist = re_ranking(q_g_dist, q_q_dist, g_g_dist)

        r, m_ap = rank(dist)
        writer.add_scalars('map_cmc', {'mAP': m_ap, 'rank1': r[0]}, epoch)
        print('[With    Re-Ranking] mAP: {:.4f} rank1: {:.4f} rank3: {:.4f} rank5: {:.4f} rank10: {:.4f}'
              .format(m_ap, r[0], r[2], r[4], r[9]))
        with open('test_results_{}'.format(mark), 'a') as f:
            f.write('Epoch: {} mAP: {:.4f} rank1: {:.4f} rank3: {:.4f} rank5: {:.4f} rank10: {:.4f}\n'
              .format(epoch, m_ap, r[0], r[2], r[4], r[9]))
        '''
        #########################no re rank##########################
        dist = cdist(qf, gf)

        r, m_ap = rank(dist)

        print('[Without Re-Ranking] mAP: {:.4f} rank1: {:.4f} rank3: {:.4f} rank5: {:.4f} rank10: {:.4f}'
              .format(m_ap, r[0], r[2], r[4], r[9]))
        '''
    def vis(self):

        self.model.eval()

        gallery_path = data.testset.imgs
        gallery_label = data.testset.ids

        # Extract feature
        print('extract features, this may take a few minutes')
        query_feature = extract_feature(model, tqdm([(torch.unsqueeze(data.query_image, 0), 1)]))  #1,3328
        gallery_feature = extract_feature(model, tqdm(data.test_loader)) #15913, 3328

        # sort images
        query_feature = query_feature.view(-1, 1)  #2048,1
        score = torch.mm(gallery_feature, query_feature) #15913,1
        score = score.squeeze(1).cpu()
        score = score.numpy()

        index = np.argsort(score)  # from small to large
        index = index[::-1]  # from large to small

        # # Remove junk images
        # junk_index = np.argwhere(gallery_label == -1)
        # mask = np.in1d(index, junk_index, invert=True)
        # index = index[mask]

        # Visualize the rank result
        fig = plt.figure(figsize=(16, 4))

        ax = plt.subplot(1, 11, 1)
        ax.axis('off')
        plt.imshow(plt.imread(opt.query_image))
        ax.set_title('query')

        print('Top 10 images are as follow:')

        for i in range(10):
            img_path = gallery_path[index[i]]
            print(img_path)

            ax = plt.subplot(1, 11, i + 2)
            ax.axis('off')
            plt.imshow(plt.imread(img_path))
            ax.set_title(img_path.split('/')[-1][:9])

        fig.savefig("show.png")
        print('result saved to show.png')


if __name__ == '__main__':

    data = Data()
    model = MCN().cuda()
    print('loading checkpoint.......')
    model_dict = model.state_dict()
    pretrained_dict = torch.load(weight_path)
    pretrained_dict = {k:v for k, v in pretrained_dict.items() if k in model_dict}
    model_dict.update(pretrained_dict)
    model.load_state_dict(model_dict)
    print('loaded successfully!')

    loss = Loss()
    main = Main(model, loss, data)
    writer = tensorboardX.SummaryWriter(log_dir='tensorboard_{}'.format(mark))

    if opt.mode == 'train':

        for epoch in range(211, opt.epoch + 1):
            print('\nepoch', epoch)
            main.train(epoch, writer)
            if epoch % 5 == 0:
                print('\nstart evaluate')
                main.evaluate(epoch, writer)
                os.makedirs('weights_{}'.format(mark), exist_ok=True)
                torch.save(model.state_dict(), ('weights_{}/model_{}.pt'.format(mark, epoch)))

    if opt.mode == 'evaluate':
        print('start evaluate')
        model.load_state_dict(torch.load(opt.weight))
        main.evaluate()

    if opt.mode == 'vis':
        print('visualize')
        model.load_state_dict(torch.load(opt.weight))
        main.vis()
