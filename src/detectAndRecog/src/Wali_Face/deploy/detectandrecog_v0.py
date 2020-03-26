# coding=utf-8
import face_embedding
import argparse
import cv2
import numpy as np
import mxnet as mx
from mtcnn_detector import MtcnnDetector
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

parser.add_argument('--gpu', default=0, type=int, help='gpu id')
parser.add_argument('--det', default=2, type=int, help='mtcnn option, 2 means using R+O, else using O')
parser.add_argument('--flip', default=0, type=int, help='whether do lr flip aug')
parser.add_argument('--threshold', default=1.24, type=float, help='ver dist threshold')
args = parser.parse_args()

#根据args参数，初始化模型的class,
model = face_embedding.FaceModel(args)
#mtcnn人脸检测
detector = MtcnnDetector(model_folder='mtcnn-model', ctx=mx.gpu(0), num_worker = 1 , accurate_landmark = False)
#img = cv2.imread('/raid5data/dplearn/lfw/Jude_Law/Jude_Law_0001.jpg')
capstream=cv2.VideoCapture(0)

if __name__=='__main__':

    print(" 请选择1:注册,2:识别\n  ")
    Facetype=input()
    noface_time=0
    FaceFeaturePath="./feature.yaml"
    LoadFeatureFlag=True
    while True:
        ret,img=capstream.read()
        imgzi=img
        drawimg=img
        results = detector.detect_face(img)
        if results:
            noface_time=0
            total_boxes = results[0]
            points = results[1]
            if Facetype=='1':
                print("请输入你的ID:")
                signid=input()
                ###chips 矫正后的人脸区域
                chips = detector.extract_image_chips(img, points, 144, 0.37)
                for i, chip in enumerate(chips):
                    reg_feature=model.get_feature(chip)
                    faceitem={signid:reg_feature}
                    with open(FaceFeaturePath,"a") as f:
                        yaml.dump(faceitem,f)
                    cv2.imwrite(signid+str(i)+'.png', chip)
                print("是否注册完毕? y/n")
                RegisterFlag=input()
                if RegisterFlag==("y" or "Y"):
                    Facetype='2'
                    print("进入识别模式")
                elif RegisterFlag==("n" or "N"):
                    Facetype='1'
                else:
                    print("输入无效")
            elif Facetype=='2':
                sign_feature={}
                if LoadFeatureFlag:
                    with open(FaceFeaturePath,"rb") as f:
                        data=yaml.load(f)
                sign_feature=data
                for i,key in enumerate(sign_feature):
                    f1=sign_feature[key]
                    if results:
                        for i, chip in enumerate(chips):
                            f2=model.get_feature(chip)
                            if f2 is not None:
                                #计算两张图片特征的差
                                dist = np.sum(np.square(f1-f2))
                                print(dist)
                                for b in total_boxes:
                                        xz=int((b[0]+b[2])/2)
                                        yz=int(b[1])
                                        if dist<=0.9:
                                            print(key)
                                            cv2.putText(drawimg,key, (xz,yz), cv2.FONT_HERSHEY_SIMPLEX, 1.2, (255, 255, 255),4)
                                        else:
                                            print('other')
                                            #计算两张图片相似度结
                                            sim = np.dot(f1, f2.T)
                                            print(sim)
                                            #diff = np.subtract(source_feature, target_feature)
                                            #dist = np.sum(np.square(diff),1)
                            else:
                                continue

            for b in total_boxes:
                cv2.rectangle(drawimg, (int(b[0]), int(b[1])), (int(b[2]), int(b[3])), (255, 255, 255))

            for p in points:
                for i in range(5):
                    cv2.circle(drawimg, (p[i], p[i + 5]), 1, (0, 0, 255), 2)

        else:
            noface_time+=1
            if noface_time%30==0:
                cv2.putText(drawimg,"No Face!!!",(50,50),cv2.FONT_HERSHEY_SIMPLEX,2,(0,0,255),4)
        cv2.imshow("FaceRecognise",drawimg)
        cv2.waitKey(1)
