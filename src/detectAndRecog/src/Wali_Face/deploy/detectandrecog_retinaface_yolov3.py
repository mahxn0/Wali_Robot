import sys
import torch
import face_model
import argparse
import cv2
import numpy as np
import mxnet as mx
import torch
import os
import time
import yaml
import math
import _thread
import queue

detect_img = None
#args参数设置
parser = argparse.ArgumentParser(description='face model test')
# general
parser.add_argument('--image-size', default='112,112', help='')
parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
#parser.add_argument('--model', default='../models/model-r34-amf/model,0', help='path to load model.')
parser.add_argument('--gpu', default=0, type=int, help='gpu id')
parser.add_argument('--det', default=0, type=int, help='mtcnn option, 2 means using R+O, else using O')
parser.add_argument('--flip', default=0, type=int, help='whether do lr flip aug')
parser.add_argument('--threshold', default=1.24, type=float, help='ver dist threshold')
parser.add_argument('--feature',default='./save_feature.yaml',help='face feature save file')

args = parser.parse_args()


cap=cv2.VideoCapture(0)
#cap.set(3,1280)
#cap.set(4,720)

#detector = MtcnnDetector(model_folder='mtcnn-model', ctx=mx.gpu(0), num_worker = 4 , accurate_landmark = False)

class DetectAndRecog():
    def __init__(self,args):
        self.model=face_model.FaceModel(args)

    def align_face(self,img):
        align_faces,bboxs,points=self.model.m_get_input(img)
        return align_faces,bboxs,points
    #batch embeddings feature
    def face_recog(self,img):
        embeddings=self.model.m_get_feature(img)
        return embeddings
    def get_face_galley_features(self):
        Face_galley_features={}
        with open(args.feature,"rb") as f:
            data=yaml.load(f)
            Face_galley_features=data
        galley_feature=[]
        names=[]
        for i,key in enumerate(Face_galley_features):
            galley_feature.append(Face_galley_features[key])
            #print(i,key)
            names.append({i:key})
        return galley_feature,names
    #feature cosine distance
    def compare(self,fn_0,fn_1):
        cosine = np.dot(fn_0, fn_1.T)
        theta = np.arccos(cosine)
        theta = theta * 180 / math.pi
        return theta


if __name__ == '__main__':
    global model
    model=DetectAndRecog(args)
    threshold=68
    #fourcc = cv2.VideoWriter_fourcc(*'XVID')
    #out = cv2.VideoWriter('testwrite.avi',fourcc, 10.0, (640,480),True)
    targets_embeddings,names=model.get_face_galley_features()
    targets_embeddings=np.array(targets_embeddings)
    while True:
        t1=time.time()
        _,img=cap.read()
        faceimg=img
        drawimg=img
        if faceimg is not None:
            align_results,bboxs,points=model.align_face(faceimg)
            if len(bboxs)>0:
                sources_embeddings=model.face_recog(align_results)
                sources_embeddings=np.array(sources_embeddings)
                probs=model.compare(sources_embeddings,targets_embeddings)
                minmum = np.amin(probs, axis=1)
                min_idx = np.argmin(probs, axis=1)
                min_idx[minmum>threshold]=-1
                for idx,bbox in enumerate(bboxs):
                    cv2.rectangle(drawimg, (int(bbox[0]), int(bbox[1])), (int(bbox[2]), int(bbox[3])), (0, 0, 255),3)
                    if min_idx[idx]==-1:
                        key='others'
                        score=minmum[idx]
                        cv2.putText(drawimg,key+str(score),(int(bbox[0]),int(bbox[1])),cv2.FONT_HERSHEY_SIMPLEX, 1,(0,0,255),2)
                    else:
                        key=names[min_idx[idx]][min_idx[idx]]
                        score=minmum[idx]
                        cv2.putText(drawimg,key+'__'+str(score),(int(bbox[0]),int(bbox[1])),cv2.FONT_HERSHEY_SIMPLEX, 1,(0,0,255),2)
                for p in points:
                    for i in range(5):
                        cv2.circle(drawimg, (p[i][0], p[i][1]), 1, (0, 0, 255), 2)

            t2=time.time()-t1
            print("FPS: %d" %(1/t2))
            
            cv2.imshow("Face",drawimg)
            cv2.waitKey(1)

        #results=model.person_detect(img)
        #x_min,x_max,y_min,y_max=0,0,0,0
        #if len(results)>0:
        #    for res in results:
        #        x_min=int(res[2])
        #        x_max=int(res[4])
        #        y_min=int(res[3])
        #        y_max=int(res[5])
        #        cv2.rectangle(img, (x_min,y_min), (x_max,y_max), (255,0,0),3)
        #        rect_img=img[y_min:y_max,x_min:x_max]

        #if Reid_Flag:
        #    Reid_gallay_feature=model.ReId.extract_feature_cv(rect_img)
        #    score=torch.mm(Reid_query_feature,Reid_gallay_feature.transpose(0,1))
        #    if score>Reid_thresh:
        #        print("已找到主人位置")
        #        cv2.putText(img,owner,(x_min,y_min),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),2)
        #    else:
        #        cv2.putText(img,"other",(x_min,y_min),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),2)
        #cv2.imshow("Face",img)
        #out.write(img)
        #cv2.waitKey(1)
        #print("face_detect_and_recog fps is %d" %(1/(time.time()-t1)))
