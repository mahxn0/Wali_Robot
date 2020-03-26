# -*- coding: utf-8 -*-

import rospy

from std_msgs.msg import String
import thread

def callback_faceRecog(data):
    print('recog result:',data)
def sub_faceRecog():
    rospy.Subscriber('faceRecog',String,callback_faceRecog,queue_size=1)
    rospy.spin()

thread.start_new_thread(sub_faceRecog,())

