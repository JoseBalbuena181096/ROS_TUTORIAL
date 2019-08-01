#!/usr/bin/env python 
import rospy
from std_msgs.msg import String

pub=rospy.Publisher("control_sensor",String,queue_size=10)
rospy.init_node("Control",anonymous=True)
rate=rospy.Rate(1)

def data():
     while 1:
        user=raw_input("Introduce start or off : ")
        if user=="start" or user=="off" :
            return user
        else: 
            pass
while not rospy.is_shutdown():
    user_init=data()
    rospy.loginfo("I publish: ")
    rospy.loginfo(user_init)
    pub.publish(user_init)
    rate.sleep()
