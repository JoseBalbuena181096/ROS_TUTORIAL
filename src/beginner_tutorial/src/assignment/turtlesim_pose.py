#!/usr/bin/env python  
#Import libreries
import rospy
#import the Pose type from the module  turtlesim.msg 
from turtlesim.msg import Pose
#Funtion callback, that funtion is called when data is received(fn(data))
def pose_callback(pose_message):
    print("pose call back")
    print("x={}".format(pose_message.x))
    print("y=%f" %pose_message.y) 
    print("yaw={}".format(pose_message.theta)) 
def listener():
    #Initializate of the node 
        rospy.init_node("turtle__motion_pose",anonymous=True)
        # Name of topic to 
        position_topic="/turtle1/pose"
        #Subscription of node
        pose_subscribe=rospy.Subscriber(position_topic,Pose,pose_callback)
        pose_subscribe
        #rospy.Subscriber(position_topic,Pose,pose_callback)
        #Preven that python from exiting  until node stops
        rospy.spin() 

#If the name of file is main then
if __name__=="__main__":
    #Used exeption
    try:
        listener()
        
    #except when the ros master stops
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated.")
