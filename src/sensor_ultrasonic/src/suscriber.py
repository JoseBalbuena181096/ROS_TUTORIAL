#!/usr/bin/env python
import rospy
from std_msgs.msg import String
#from std.msgs.msg import Float32
def callback_control(data):
    rospy.loginfo("Control in mode %s",data.data)
def callback_sensor1(data):
    rospy.loginfo("Lecture  %s: ",data.data)
#def callback_sensor2(data):
#    rospy.loginfo("Number %f",data.data)
    
    
def listener():
    rospy.init_node("SensorInfo")
    rospy.Subscriber("control_sensor",String,callback_control)
    rospy.Subscriber("sensor_distance",String,callback_sensor1)
 #   rospy.Subscriber("sensor_distance_number",Float32,callback_sensor2)
    rospy.spin()
if __name__ == '__main__':
    listener()