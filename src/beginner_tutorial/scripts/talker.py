#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String

def talker():
    #Create a new publisher, we specify the topic name, then type of message then queue size
    pub = rospy.Publisher('chatter', String, queue_size=10) 
    """
    We need to initialize the node 
    In ROS, node are uniquely named. If two nodes with the same
    node are lauched, the previous one is kicked off. The 
    anonymous=True flag means that rospy will choose a unique
    name for our "talker" node
    """
    rospy.init_node('talker', anonymous=True)
    #set the loop rate
    rate = rospy.Rate(10) # 10hz
    #keep publishing until a Ctrl-C pressed
    i=0
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        hello_str="Hola {}".format(i)
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()
        i=i+1
 
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass