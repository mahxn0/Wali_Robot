#!/usr/bin/env python
# coding=utf-8
# coding: utf-8
import mxnet as mx
from mtcnn_detector import MtcnnDetector
import cv2
import os
import time

detector = MtcnnDetector(model_folder='mtcnn-model', ctx=mx.gpu(0), num_worker = 4 , accurate_landmark = False)


img = cv2.imread('gyy4.jpg')
print(img.shape)
# run detector
# --------------
# test on camera
# --------------
camera = cv2.VideoCapture(1)
while True:
    grab, frame = camera.read()
    img = cv2.resize(frame, (640,360))

    t1 = time.time()
    results = detector.detect_face(img)

    print ('time: ',time.time() - t1)

    if results is None:
        continue

    #print(results)
    total_boxes = results[0]
    points = results[1]
    print(total_boxes)
    print(points)
    #chips = detector.extract_image_chips(img, points, 144, 0.37)
    draw = img.copy()
    for b in total_boxes:
        cv2.rectangle(draw, (int(b[0]), int(b[1])), (int(b[2]), int(b[3])), (255, 255, 255))

    for p in points:
        for i in range(5):
            cv2.circle(draw, (p[i], p[i + 5]), 1, (255, 0, 0), 2)

    cv2.imshow("detection result", draw)
    cv2.waitKey(1)


