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
import queue
import _thread
#args参数设置
parser = argparse.ArgumentParser(description='face model test')
# general
parser.add_argument('--image-size', default='112,112', help='')
parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
#parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
parser.add_argument('--ga-model', default='../models/gamodel-r50/model,0000', help='path to load model.')
parser.add_argument('--gpu', default=0, type=int, help='gpu id')
parser.add_argument('--det', default=2, type=int, help='mtcnn option, 2 means using R+O, else using O')
parser.add_argument('--flip', default=0, type=int, help='whether do lr flip aug')
parser.add_argument('--threshold', default=1.24, type=float, help='ver dist threshold')
args = parser.parse_args()

#根据args参数，初始化模型的class,
#model = face_embedding.FaceModel(args)
#mtcnn人脸检测
detector = MtcnnDetector(model_folder='mtcnn-model', ctx=mx.gpu(0), num_worker = 1 , accurate_landmark = False)
#img = cv2.imread('/raid5data/dplearn/lfw/Jude_Law/Jude_Law_0001.jpg')
capstream=cv2.VideoCapture(1)
def capture():
    global CaptureQueue
    Senddata={}
    while True:
        _,img=capstream.read()
        Senddata['img']=img
        CaptureQueue.put(Senddata)

if __name__=='__main__':
    _thread.start_new_thread(capture,())
    global CaptureQueue
    CaptureQueue=queue.Queue()
    rcvData={}
    while True:
        t1=time.time()
        #ret,img=capstream.read()
        if not CaptureQueue.empty():
            rcvData=CaptureQueue.get()
            img=rcvData['img']
            results = detector.detect_face(img)
            if results:
                noface_time=0
                total_boxes = results[0]
                points = results[1]
                    
                for b in total_boxes:
                    cv2.rectangle(img, (int(b[0]), int(b[1])), (int(b[2]), int(b[3])), (255, 255, 255))

                for p in points:
                    for i in range(5):
                        cv2.circle(img, (p[i], p[i + 5]), 1, (0, 0, 255), 2)
            print("fps is %d" % (1/(time.time()-t1)))
            cv2.imshow("FaceRecognise",img)
            cv2.waitKey(1)