#!/usr/bin/env python
import numpy as np 
import cv2

image_name="tree"

print("read an image from file")
color_image=cv2.imread("images/"+image_name+".jpg",cv2.IMREAD_COLOR)

print("display image in native color")
cv2.imshow("Original Image",color_image)
cv2.moveWindow("Original Image",0,0)
#####################################################################
print(color_image.shape)
height,width,channels=color_image.shape
print("height: {}".format(height))
print("width: {}".format(width))
print("channels: {}".format(channels))
####################################################################
print("Splipt the image into three channels")
blue,green,red=cv2.split(color_image)
print("blue: {}".format(blue))
print("green: {}".format(green))
print("red: {}".format(red))

cv2.imshow("Blue channel",blue)
cv2.moveWindow("Blue channel",0,height)

cv2.imshow("Green channel",blue)
cv2.moveWindow("Green channel",0,height)

cv2.imshow("red channel",red)
cv2.moveWindow("red channel",0,height)
######################################################################
"""
Hue: Indicates the type of color that we see in 360 degree format.
Saturation: an indication of how saturated an individual color is
Value: indicates how luminous the channel is.
"""
print("---split the image into Hue, Saturation, Value channels....")
hsv=cv2.cvtColor(color_image,cv2.COLOR_BGR2HSV)
print("hsv {}".format(hsv))
h,s,v=cv2.split(hsv)
print("h: {}".format(h))
print("s: {}".format(s))
print("v: {}".format(v))
hsv_image=np.concatenate((h,s,v),axis=1)
cv2.imshow("Hue,Sturation,Value Image",hsv_image)
##########################################################################################
print("---Convert an image to a gray scale")
gray_image=cv2.cvtColor(color_image,cv2.COLOR_BGR2GRAY)
cv2.imshow("Gray Image",gray_image)
print(gray_image)
##########################################################################################
cv2.waitKey(0)
cv2.destroyAllWindows()
