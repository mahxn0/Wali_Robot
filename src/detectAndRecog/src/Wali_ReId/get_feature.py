import numpy as np
import os
import time
from tqdm import tqdm
import random
import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt
import torch
from torch.optim import lr_scheduler
from torchvision import transforms
import sys
sys.path.append('..')
#from data import Data
from network_CHANNEL_mask import MCN
from util_reid.metrics import mean_ap, cmc, re_ranking
from PIL import Image
import cv2
os.environ['CUDA_VISIBLE_DEVICES'] ='0'
dim_1 = 3328
weight_path = '/home/mahxn0/catkin_ws/src/detectAndRecog/src/Wali_ReId/model/model_225.pt'
topk = 10



class Extractor():
    def __init__(self):
        self.model= MCN().cuda()
        self.model.eval()
        self.model.load_state_dict(torch.load(weight_path))
        #self.data = Data()
        self.dim_1=3328
        self.transform = transforms.Compose([
        transforms.Resize((384, 128), interpolation=3),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])])

    def extract_feature_gpu(self,inputs):
        features = torch.FloatTensor().cuda()
        #1,3,384,128
        ff = torch.FloatTensor(inputs.size(0), dim_1).zero_().cuda()
        input_img = inputs.to('cuda')
        outputs = self.model(input_img)
        #f = outputs[0].data.cpu()
        f = outputs[0]
        ff = ff + f
        fnorm = torch.norm(ff, p=2, dim=1, keepdim=True)
        ff = ff.div(fnorm.expand_as(ff))
        features = torch.cat((features, ff), 0)
        return features
    #cpu extract feature
    def extract_feature_cpu(self,loader):
        features = torch.FloatTensor()

        for (inputs, labels) in loader:

            ff = torch.FloatTensor(inputs.size(0), dim_1).zero_()
            for i in range(2):
                if i == 1:
                    inputs = inputs.index_select(3, torch.arange(inputs.size(3) - 1, -1, -1).long()) #127~0
                input_img = inputs.to('cuda')
                outputs = self.model(input_img)
                f = outputs[0].data.cpu()
                ff = ff + f #8,2048

            fnorm = torch.norm(ff, p=2, dim=1, keepdim=True)
            ff = ff.div(fnorm.expand_as(ff))
            features = torch.cat((features, ff), 0)
        return features

    def gallary_feature_extract(self):
        test_dataloader = data.test_loader
        features = self.extract_feature_cpu(self.model, tqdm(test_dataloader),dim_1).numpy()
        np.save('gallary_feature.npy', features)
        print(features.shape)


    def extract_feature_cv(self,img):
        #data type cost 1-5ms
        img = Image.fromarray(img,mode="RGB")
        img=self.transform(img)
        img = img.unsqueeze(dim=0)
        t1=time.time()
        qf = self.extract_feature_gpu(img) # 1,3328
        t2=time.time()-t1
        #qf to cpu
        #qf=qf.squeeze(1).cpu().detach().numpy()
        #np.save("qf1.npy",qf)
        #print(qf.shape)
        print("get_feature process cost: ",t2)
        return qf

if __name__ == '__main__':
    fe=Extractor()
    img1=cv2.imread("/home/mahxn0/M_DeepLearning/ReId/room/23.jpg")
    img2=cv2.imread("/home/mahxn0/M_DeepLearning/ReId/room/452.jpg")
    time1=time.time()
    f1=fe.extract_feature_cv(img1)
    f2=fe.extract_feature_cv(img2)
    score=torch.mm(f1,f2.transpose(0,1))
    time2=time.time()-time1
    #score=score.squeeze(1).cpu().detach.numpy()
    print(score,time2)
