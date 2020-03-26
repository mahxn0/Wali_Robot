#!/usr/bin/env python
#coding:utf-8
import serial
import os,sys
import binascii
import codecs
import time
import rospy
import serial.tools.list_ports

from std_msgs.msg import String
from std_msgs.msg import Int16
from yidamsg.msg import walle_wakeup

ser= serial.Serial()
int16_str=Int16()

if __name__=='__main__':
    rospy.init_node('speech_wakeup', anonymous=True)
    vel_pub = rospy.Publisher("/wall_e/speech_wakeup", walle_wakeup, queue_size=1)
    port_list = list(serial.tools.list_ports.comports())
    print(len(port_list))
    if len(port_list) <= 0:
        print ("The Serial port can't find!")
    else:
        for i in range(0,len(port_list)):
            port_serial = port_list[i][0]
            if ('USB2.0-Serial' in port_list[i][1]):
                ser=serial.Serial(port_serial,115200,timeout=0.5)
                print(ser)
                if ser.isOpen():
                    print("speech serial ok.")
                    ser.write('\x19\xb2\x05\x00\x11\x08\x05\x00\x01\x24')
                    ser.flush()
                    ser.readall()
    while not rospy.is_shutdown():
        rd=ser.readall()

        if len(rd)>=5:
            rdList = rd.split("  ")

            wakeup = 0
            score = 0
            key_word = ""
            for item in rdList:
                tmpList = item.split(":")
                if (tmpList[0] == "wakeup"):
                    wakeup = int(tmpList[1])
                if (tmpList[0] == "score"):
                    score = int(tmpList[1])
                if (tmpList[0] == "key_word"):
                    key_word = tmpList[1]

            msg = walle_wakeup()
            msg.wakeup = wakeup
            msg.score = score
            msg.key_word = key_word

            print("******* publish message *********** \n", msg.wakeup);
            vel_pub.publish(msg)


    ser.close()
