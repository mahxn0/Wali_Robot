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
import yolo_usb_py3
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
parser.add_argument('--ga-model', default='../models/gamodel-r50/model,0000', help='path to load model.')
parser.add_argument('--gpu', default=0, type=int, help='gpu id')
parser.add_argument('--det', default=0, type=int, help='mtcnn option, 2 means using R+O, else using O')
parser.add_argument('--flip', default=0, type=int, help='whether do lr flip aug')
parser.add_argument('--threshold', default=1.24, type=float, help='ver dist threshold')
parser.add_argument('--feature',default='./save_feature.yaml',help='face feature save file')

args = parser.parse_args()


cap=cv2.VideoCapture()
cap.open(1)
#cap.set(3,1280)
#cap.set(4,720)

#detector = MtcnnDetector(model_folder='mtcnn-model', ctx=mx.gpu(0), num_worker = 4 , accurate_landmark = False)

class DetectAndRecog():
    def __init__(self,args):
        self.model=face_model.FaceModel(args)
        self.yolo_detect=yolo_usb_py3.Detect_Class()
        self.ReId=get_feature.Extractor()
        self.FaceFeaturePath="./save_feature.yaml"
        self.gender_flag=False
        self.detect_flag=False

    #aligned faces
    def align_face(self,img):
        align_faces,bboxs,points=self.model.m_get_input(img)
        return align_faces,bboxs,points
    #batch embeddings feature
    def face_recog(self,img):
        embeddings=self.model.m_get_feature(img)
        return embeddings

    #get feature from register yamlfile
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

    def gender_recog(self,img):
        #img is mxnet img
        return self.model.get_ga(img)

    def person_detect(self,img):
        results=self.yolo_detect.detect(img)
        return results

    #feature cosine distance
    def compare(self,fn_0,fn_1):
        cosine = np.dot(fn_0, fn_1.T)
        theta = np.arccos(cosine)
        theta = theta * 180 / math.pi
        return theta

if __name__ == '__main__':
    global model
    model=DetectAndRecog(args)
    owner='mxj'
    Reid_query_feature=torch.FloatTensor().cuda()
    Reid_Flag=False
    Face_Flag=True
    Reid_thresh=0.8
    threshold=68
    #fourcc = cv2.VideoWriter_fourcc(*'XVID')
    #out = cv2.VideoWriter('testwrite.avi',fourcc, 10.0, (640,480),True)
    targets_embeddings,names=model.get_face_galley_features()
    targets_embeddings=np.array(targets_embeddings)
    #print(names)
    rcvData={}
    fourcc = cv2.VideoWriter_fourcc(*'XVID')
    out = cv2.VideoWriter('testwrite1.avi',fourcc, 20.0, (640,480),True)
    while True:
        t1=time.time()
        _,img=cap.read()
        if img is not None:
            faceimg=img
            #detect_img=img
            drawimg=img
            #x_min,x_max,y_min,y_max=0,0,0,0
            rect_xmin,rect_xmax,rect_ymin,rect_ymax=0,0,0,0
            results=model.person_detect(faceimg)
            rect_locations=[]
            reid_locations=[]
            if len(results)>0:
                for res in results:
                    x_min=int(res[2])
                    y_min=int(res[3])
                    x_max=int(res[4])
                    y_max=int(res[5])
                    rect_img=faceimg[y_min:y_max,x_min:x_max]
                    reid_locations.append((rect_img,x_min,y_min,x_max,y_max))
                    cv2.rectangle(drawimg, (x_min,y_min), (x_max,y_max), (0,0,255),3)
                    if 140<(x_max-x_min)<200 and 300<(y_max- y_min)<480:
                        rect_locations.append((rect_img,x_min,y_min,x_max,y_max))
                        cv2.rectangle(drawimg, (x_min,y_min), (x_max,y_max), (255,0,0),3)
            align_results,bboxs,points=model.align_face(faceimg)
            if len(bboxs)>0 and Face_Flag: 
                sources_embeddings=model.face_recog(align_results)
                sources_embeddings=np.array(sources_embeddings)
                probs=model.compare(sources_embeddings,targets_embeddings)
                minmum = np.amin(probs, axis=1)
                min_idx = np.argmin(probs, axis=1)
                #print(minmum,min_idx)
                min_idx[minmum>threshold]=-1                           
                for idx,bbox in enumerate(bboxs):
                    cv2.rectangle(drawimg, (int(bbox[0]), int(bbox[1])), (int(bbox[2]), int(bbox[3])), (0, 0, 255),3)
                    for p in points:
                            for i in range(5):
                                cv2.circle(drawimg, (p[i][0], p[i][1]), 1, (0, 0, 255), 2)
                    if min_idx[idx]==-1:
                        key='others'
                        score=minmum[idx]
                        cv2.putText(drawimg,key+str(score),(int(bbox[0]),int(bbox[1])),cv2.FONT_HERSHEY_SIMPLEX, 1,(0,0,255),2)
                    else:
                        key=names[min_idx[idx]][min_idx[idx]]
                        score=minmum[idx]
                        cv2.putText(drawimg,key+'__'+str(score),(int(bbox[0]),int(bbox[1])),cv2.FONT_HERSHEY_SIMPLEX, 1,(0,0,255),2)    
                        if key==owner:
                            for rect_location in rect_locations:
                                rect_xmin=rect_location[1]
                                rect_ymin=rect_location[2]
                                rect_xmax=rect_location[3]
                                rect_ymax=rect_location[4]
                                print(bbox[0],rect_xmin,rect_xmax)
                                print(int(bbox[0]) in range(rect_xmin,rect_xmax))
                                print(int(bbox[2]) in range(rect_xmin,rect_xmax))
                                print(int(bbox[1]) in range(rect_ymin,rect_ymax))
                                print(int(bbox[3]) in range(rect_ymin,rect_ymax))
                                if (int(bbox[0]) in range(rect_xmin,rect_xmax)) and (int(bbox[2]) in range(rect_xmin,rect_xmax)) and (int(bbox[1]) in range(rect_ymin,rect_ymax)) and (int(bbox[3]) in range(rect_ymin,rect_ymax)):
                                    print("start register owner feature")
                                    Reid_query_feature=model.ReId.extract_feature_cv(rect_location[0])
                                    Reid_Flag=True
                                    Face_Flag=False
            if Reid_Flag:
                if len(reid_locations)>0:
                    scores=[]
                    owner_locations=[]
                    for reid_location in reid_locations:
                        Reid_gallay_feature=model.ReId.extract_feature_cv(reid_location[0])
                        score=torch.mm(Reid_query_feature,Reid_gallay_feature.transpose(0,1))
                        score=score.cpu().detach().numpy()
                        if score>Reid_thresh:
                            scores.append(score)
                            owner_locations.append((reid_location[1],reid_location[2],reid_location[3],reid_location[4]))
                        else:
                            x_center=round((reid_location[1]+ reid_location[3])/2)
                            y_center=round((reid_location[2]+ reid_location[4])/2)
                            cv2.putText(img,"other",(x_center,y_center),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),2)
                    if len(scores)>0:
                        score=np.amax(scores)
                        score_id=np.argmax(scores)
                        owner_location=owner_locations[score_id]
                        print("已找到主人位置")
                        x_center=round((owner_location[0]+owner_location[2])/2)
                        y_center=round((owner_location[1]+owner_location[3])/2)
                        cv2.putText(drawimg,owner+'__'+str(score),(x_center,y_center),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),4)
            t2=time.time()-t1
            print("FPS: %d" %(1/t2))
            cv2.imshow("Face",drawimg)
            out.write(drawimg)
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
