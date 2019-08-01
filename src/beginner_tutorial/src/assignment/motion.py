#!/usr/bin/env python
#Import the module rospy
import rospy
# Import Twist from the module geometry_msgs.msg
from geometry_msgs.msg import Twist
#Import Pose from the module turtlesim.msg
from turtlesim.msg import Pose
#Import module math
import math
#Import the modulo time
import time
#Import Empty from the modulo std_srvs.srv
from std_srvs.srv import Empty

x=0
y=0
z=0
yaw=0

#Definition of the funtion  poseCallback for subscribe
def poseCallback(pose_message):
    #Declaration of global variables on the environment 
    global x,y,z,yaw
    #we equal x to pose_message.x
    x=pose_message.x
    y=pose_message.y
    #z=pose_message.z
    #yaw=pose_message.theta
    print("x = {}".format(x))
    print("y = {}".format(y))
    #print("z = {}".format(z))
    #print("yaw = {}".format(yaw))
#Definition of the funtion move
def move(speed,distance):
    #Declarate a Twist message to send velocity commands 
    velocity_message=Twist()
    #get current location
    x0=x
    y0=y
    #z0=z
    #yaw0=yaw
    #The parameter  message velocity linear we  equal to speed
    velocity_message.linear.x=speed
    distance_move = 0.0
    #We publish the velocity at 10 Hz(10 times per second)
    loop_rate=rospy.Rate(10)
    #Variable with the topic /turtle/cmd_vel
    cmd_vel_topic="/turtle1/cmd_vel"
    velocity_publisher=rospy.Publisher(cmd_vel_topic,Twist,queue_size=10)
    #Loop infinite
    while True:
        rospy.loginfo("Turtlesim moves forwards")
        velocity_publisher.publish(velocity_message)
        loop_rate.sleep()
        #rospy.Duration(1.0)
        distance_move=distance_move+abs(0.5*math.sqrt(((x-x0)**2)+((y-y0)**2)))
        print(distance_move)
        if not (distance_move<distance):
            rospy.loginfo("reached")
            break
        velocity_message.linear.x=0
        velocity_publisher.publish(velocity_message)
if __name__=="__main__":
    try:
        rospy.init_node("turtle_motion_pose",anonymous=True) 
        #declare velocity publisher
        cmd_vel_topic="/turtle1/cmd_vel"
        velocity_publisher=rospy.Publisher(cmd_vel_topic,Twist,queue_size=10)

        position_topic="/turtle1/pose"
        pose_subscriber=rospy.Subscriber(position_topic,Pose,poseCallback)
        time.sleep(2)
        print("Move")
        move(1.0,5.0)
        time.sleep(2)
        #Services
        rospy.wait_for_service("reset")
        reset_turtle=rospy.ServiceProxy("reset",Empty)
        print("End reset: ")
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated")
