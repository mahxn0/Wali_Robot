# -*- coding: utf-8 -*-

import os
import sys
import time
import math
import numpy as np
import cv2
import rospy
from std_msgs.msg import String
from yidamsg.msg import walle_audio_broadcase
import face_recog

def detect_recog_face(img):
    global face_recognise
    face_recognise = face_recog.face_recognition()
    recog_results = face_recognise.faceRecog(img)
    return recog_results

if __name__ == '__main__':
    rospy.init_node('faceRecog',anonymous=True)
    recogFace = rospy.Publisher('faceRecog',String,queue_size=1)
    capstream=cv2.VideoCapture(0)
    FaceFeaturePath="./save_feature.yaml"
    while True:
        t1=time.time()
        ret,img=capstream.read()
        if img is not None:
            recog_result = detect_recog_face(img)
            for i in recog_result:
                recogFace.publish(i)
        totaltime=time.time()-t1
        fps=1/totaltime
        print("fps is %d" % fps)
        cv2.imshow("FaceRecognise",img)
        cv2.waitKey(1)
    