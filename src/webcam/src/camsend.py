#!/usr/bin/env python
# -*- coding:utf-8 -*-
import cv2, rospy, time
import numpy as np
from sensor_msgs.msg import CompressedImage

if __name__=='__main__':
    rospy.init_node("webcam", anonymous=True)
    publisher = rospy.Publisher("camsend",CompressedImage, queue_size=1)
    cap = cv2.VideoCapture(1)
    # set CV_CAP_PROP_FRAME_WIDTH
    cap.set(3,1280)
    # set CV_CAP_PROP_FRAME_HEIGHT
    cap.set(4,720)
    # set frequency
    cap.set(5,25)

    cnt = 0
    while(True):
        cnt = cnt + 1
        t1 = time.clock()
        # get a frame
        ret, frame = cap.read()
        image = frame
        #image = cv2.resize(frame, (640, 480))o
        if image is not None:
            msg = CompressedImage()
            msg.header.stamp = rospy.Time.now()
            msg.format = "jpeg"
            msg.data = np.array(cv2.imencode('.jpg', image)[1]).tostring()
            publisher.publish(msg)
            # show a frame
            cv2.imshow("image", image)
            cv2.waitKey(1)
            #t2 = time.clock()
            #print 'time is: ', t2-t1
            #rate.sleep()
