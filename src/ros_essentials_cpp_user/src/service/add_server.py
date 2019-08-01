#!/usr/bin/env python
#Import server AddTwoints from ros_essentials_cpp_user.srv 
from ros_essentials_cpp_user.srv import AddTwoints
#Import request AddTwoints from ros_essentials_cpp_user.srv 
from ros_essentials_cpp_user.srv import AddTwointsRequest
#Import responce AddTwoints from ros_essentials_cpp_user.srv 
from ros_essentials_cpp_user.srv import AddTwointsResponse

import rospy 
#funtion that receive how the parameter the request
def handle_add_two_ints(req):
    print "Returing [%s+%s=%s]"%(req.a,req.b,(req.a+req.b))
    #Response to the request
    return AddTwointsResponse(req.a+req.b)
#funtion for add two numbers
def add_two_ints_server():
    rospy.init_node("add_two_ints_server")
    s=rospy.Service("add_two_ints",AddTwoints,handle_add_two_ints)
    print"Ready to add two ints"
    rospy.spin()
if __name__=="__main__":
    add_two_ints_server()
