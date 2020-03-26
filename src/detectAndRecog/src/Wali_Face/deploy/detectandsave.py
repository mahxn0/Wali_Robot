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
print(" 请注册")
print("请输入你的ID:")
signid=input()
capstream=cv2.VideoCapture(0)

while True:
    ret,img = capstream.read()
    noface_time=0
    #特征保存文件
    FaceFeaturePath="./save.yaml"
    LoadFeatureFlag=True

    if img is not None:
        results = detector.detect_face(img)
        #print(results)
        if results:
            noface_time=0
            face_area = []
            total_boxes = results[0]
            points = results[1]
            chips = detector.extract_image_chips(img, points, 144, 0.37)
            for b in total_boxes:
                cv2.rectangle(img, (int(b[0]), int(b[1])), (int(b[2]), int(b[3])), (255, 255, 255))
                face_area.append((int(b[2])-int(b[0]))*(int(b[3])-int(b[1])))
            index = face_area.index(max(face_area))
            for p in points:
                for i in range(5):
                    cv2.circle(img, (p[i], p[i + 5]), 1, (0, 0, 255), 2)
            ###chips 矫正后的人脸区域
            chip = chips[index]
            reg_feature=model.get_feature(chip)
            faceitem={signid:reg_feature}
            k = cv2.waitKey(30)
            if k == ord('s'):
                print('Start Register')
                with open(FaceFeaturePath,"a") as f:
                    yaml.dump(faceitem,f)
                print('Register success!')
                cv2.imwrite(signid+str(i)+'.png', chip)
            if k== ord('q'):
                break
            #elif k == ord('c'):
            #    print("continue register")
            #    signid=raw_input()
                
            cv2.imshow('capture',img)
            cv2.waitKey(1)


        
