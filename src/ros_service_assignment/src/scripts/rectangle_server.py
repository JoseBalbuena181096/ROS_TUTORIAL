#!/usr/bin/env python
#Import packages of service RectangleArea, RectangleAreaRequest, RectangleAreaResponse
from ros_service_assignment.srv import RectangleArea
from ros_service_assignment.srv import RectangleAreaRequest
from ros_service_assignment.srv import RectangleAreaResponse
#import the module rospy
import rospy
#definiton of the funtion callback
def rectangle_area_callback(req):
    print("Returning the area of a rectangle [%s* %s = %s]"%(req.width,req.height,(req.width*req.height)))
    return RectangleAreaResponse(req.height*req.width)
#Definition of the funtion of rectangle_area_server
def rectangle_area_server():
    rospy.init_node("rectangle_area_server_node")
    s=rospy.Service("rectangle_area_service",RectangleArea,rectangle_area_callback)
    print("Ready to calculate the area of a rectangle")
    rospy.spin()
if __name__ == "__main__":
    rectangle_area_server()