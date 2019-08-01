#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def sensor_callback(sensor_message):
    rospy.loginfo("new  data received of sensor: {}".format(sensor_message.data)
    )

pub=rospy.Publisher("control",String,queue_size=10)
while not rospy.is_shutdown():
    rospy.init_node("Python_node",anonymous=True)
    i=int(input("Intriduce 1 para lectura o 2 para no"))
    if i==1:
        flag = "ON"
    elif i==2:
        flag="OFF"
    print(flag)
    rospy.loginfo(flag)
    pub.publish(flag)
    rospy.Subscriber("sensor_distance",String,sensor_callback)
    rospy.spin()
 
