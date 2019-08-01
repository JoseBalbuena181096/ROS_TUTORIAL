#!/usr/bin/env python 
import sys
import rospy
from ros_essentials_cpp_user.srv import AddTwoints
from ros_essentials_cpp_user.srv import AddTwointsRequest
from ros_essentials_cpp_user.srv import AddTwointsResponse

#definition of the funtion  add_two_ints_clients
def add_two_ints_clients(x,y):
    #Blok until the service is available
    rospy.wait_for_service("add_two_ints")
    try:
        add_two_ints=rospy.ServiceProxy("add_two_ints",AddTwoints)
        resp1=add_two_ints(x,y)
        return resp1.sum
    except rospy.ServiceException,e:
        print "Service call failed: %s"%e
def usage():
    return "%s [x,y]"%sys.argv[0]

if __name__=="__main__":
    if len(sys.argv)==3:
        x=int(sys.argv[1])
        y=int(sys.argv[2])
    else:
        print usage()
        sys.exit(1)
    print "Requesting %s+%s"%(x,y)
    s=add_two_ints_clients(x,y)
    print "%s + %s = %s"%(x,y,s)
