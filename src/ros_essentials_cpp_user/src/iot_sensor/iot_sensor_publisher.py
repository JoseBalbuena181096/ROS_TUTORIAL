#!/usr/bin/env python
#import the module rospy
import rospy 
#Import the message IoTSensor1 from the packegs ros_essentials_cpp_user.msg
from ros_essentials_cpp_user.msg import IoTSensor1

#import the module random
import random
"""
We create a new publisher, we specify the topic name, then type of massege, 
then the queue size
"""
pub=rospy.Publisher("IoT_Sensor_Topic",IoTSensor1,queue_size=10)
#we need to inicializate the node
rospy.init_node("IoT_Sensor_Publisher_Node",anonymous=True)
#Set the loop rate
rate=rospy.Rate(1)#1hz
#Keep publishing until a ctrl-c is pressed
while not rospy.is_shutdown():
    #We created  a instance of the message IoTSensor1 
    iot_sensor=IoTSensor1()
    ############################
    iot_sensor.id=1
    iot_sensor.name="IoT_Parking"
    iot_sensor.temperature=24.33+(random.random()*2)
    iot_sensor.humidity=33.41+(random.random()*2)
    ############################
    rospy.loginfo("I publish")
    rospy.loginfo(iot_sensor)
    pub.publish(iot_sensor)
    rate.sleep()
    