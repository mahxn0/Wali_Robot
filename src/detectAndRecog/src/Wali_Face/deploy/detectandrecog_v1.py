import sys
sys.path.append("/home/mahxn0/M_DeepLearning/ReId/ReId/GetFeature")
import get_feature
import torch
import face_model
import argparse
import cv2
import numpy as np
import mxnet as mx
import torch
from mtcnn_detector import MtcnnDetector
import yolo_usb_py3
import os
import time
import yaml
import math
#args参数设置
parser = argparse.ArgumentParser(description='face model test')
# general
parser.add_argument('--image-size', default='112,112', help='')
parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
#parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
parser.add_argument('--ga-model', default='../models/gamodel-r50/model,0000', help='path to load model.')
parser.add_argument('--gpu', default=0, type=int, help='gpu id')
parser.add_argument('--flip', default=0, type=int, help='whether do lr flip aug')
parser.add_argument('--threshold', default=1.24, type=float, help='ver dist threshold')
parser.add_argument('--feature',default='./save_feature.yaml',help='face feature save file')

args = parser.parse_args()


cap=cv2.VideoCapture(1)
#cap.set(3,1280)
#cap.set(4,720)

Issavevideo=True

class DetectAndRecog():
    def __init__(self,args):
        self.model=face_model.FaceModel(args)
        self.yolo_detect=yolo_usb_py3.Detect_Class()
        self.ReId=get_feature.Extractor()
        self.FaceFeaturePath="./save_feature.yaml"
        self.gender_flag=False
        self.detect_flag=False

    def align_face(self,img):
        #img is bgr img
        return self.model.get_input(img)
    def face_recog(self,img):
        #img is mxnet img
        return self.model.get_feature(img)
    def get_face_galley_features(self):
        Face_galley_features={}
        with open(args.feature,"rb") as f:
            data=yaml.load(f)
        Face_galley_features=data
        return Face_galley_features
    def gender_recog(self,img):
        #img is mxnet img
        return self.model.get_ga(img)
    def person_detect(self,img):
        results=self.yolo_detect.detect(img)
        return results

if __name__ == '__main__':
    model=DetectAndRecog(args)
    Face_galley_features=model.get_face_galley_features()
    owner='swf'
    Reid_query_feature=torch.FloatTensor().cuda()
    Reid_Flag=False
    Reid_thresh=0.8
    #fourcc = cv2.VideoWriter_fourcc(*'XVID')
    #out = cv2.VideoWriter('testwrite.avi',fourcc, 10.0, (640,480),True)
    while True:
        t1=time.time()
        _,img=cap.read()
        results=model.person_detect(img)
        x_min,x_max,y_min,y_max=0,0,0,0
        if len(results)>0:
            for res in results:
                x_min=int(res[2])
                x_max=int(res[4])
                y_min=int(res[3])
                y_max=int(res[5])
                cv2.rectangle(img, (x_min,y_min), (x_max,y_max), (255,0,0),3)
                rect_img=img[y_min:y_max,x_min:x_max]
                #print(rect_img.shape)
                align_results=model.align_face(rect_img)
                bbox=[]
                points=[]
                #人脸标签
                face_index=None
                if align_results:
                    for align_result in align_results:
                        nimg=align_result[0]
                        bbox=align_result[1]
                        #检测框左上角
                        xz=int((bbox[0]+bbox[2])/2)
                        yz=int(bbox[1])
                        points=align_result[2]
                        #print(points)
                        Face_query_feature=model.face_recog(nimg)
                        ###性别+年龄
                        if model.gender_flag:
                            gender, age = model.gender_recog(nimg)
                            if gender==1:
                                gender="man"
                            else:
                                gender="woman"
                            cv2.putText(img,str(gender)+'_'+str(age), (40,40), cv2.FONT_HERSHEY_SIMPLEX, 1.2, (0, 255, 255),4)

                        coptime=0
                        for i,key in enumerate(Face_galley_features):
                            Face_galley_feature=Face_galley_features[key]
                            if Face_query_feature is not None and Face_galley_feature is not None:
                            #计算两张图片特征的差
                                dist = np.sum(np.square(Face_query_feature-Face_galley_feature))
                                if dist<=1.2:
                                    cv2.putText(img,key, (xz+x_min,yz+y_min), cv2.FONT_HERSHEY_SIMPLEX, 1.2, (0, 255, 255),4)
                                    print(key==owner)
                                    print(x_max-x_min)
                                    print(y_max-y_min)
                                    print(Reid_Flag)
                                    if key==owner and ((x_max-x_min) in range(120,300)) and ((y_max-y_min) in range(300,680)):
                                        print("start register owner feature")
                                        Reid_query_feature=model.ReId.extract_feature_cv(rect_img)
                                        Reid_Flag=True
                                elif dist>1.2:
                                    coptime+=1
                        if coptime==len(Face_galley_features):
                            cv2.putText(img,"others", (xz+x_min,yz+y_min), cv2.FONT_HERSHEY_SIMPLEX, 1.2, (255, 255, 255),4)
                        cv2.rectangle(img, (int(bbox[0])+x_min, int(bbox[1])+y_min), (int(bbox[2])+x_min, int(bbox[3])+y_min), (0, 0, 255),3)
                        for p in points:
                            cv2.circle(img, (int(p[0]+x_min), int(p[1]+y_min)), 1, (0, 0, 255), 2)
                if Reid_Flag:
                    Reid_gallay_feature=model.ReId.extract_feature_cv(rect_img)
                    score=torch.mm(Reid_query_feature,Reid_gallay_feature.transpose(0,1))
                    if score>Reid_thresh:
                        print("已找到主人位置")
                        cv2.putText(img,owner,(x_min,y_min),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),2)
                    else:
                        cv2.putText(img,"other",(x_min,y_min),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),2)
        cv2.imshow("Face",img)
        #out.write(img)
        cv2.waitKey(1)
        print("face_detect_and_recog fps is %d" %(1/(time.time()-t1)))
