#!/usr/bin/env python
#Import the module rospy
import rospy
#Import the message IoTSensor1 from the ros_essentials_cpp_user.msg
from ros_essentials_cpp_user.msg import IoTSensor1
#Definition of the funtion callback
def iot_sensor_callback(iot_sensor_message):
    rospy.loginfo("new IoT data received: (%d,%s, %.2f,%.2f)",
    iot_sensor_message.id,
    iot_sensor_message.name,
    iot_sensor_message.temperature,
    iot_sensor_message.humidity
    )
#We inicializate the node 
rospy.init_node("iot_sensor_subscriber_node",anonymous=True)
#We subscribe the topic 
rospy.Subscriber("IoT_Sensor_Topic",IoTSensor1,iot_sensor_callback)
#rospy.spin()keep python exiting until this node is stopped
rospy.spin()