#!/usr/bin/env python
import numpy as np 
import cv2

video_capture=cv2.VideoCapture(0)
# video_capture = cv2.VideoCapture("video/ros.mp4")
while(True):
    ret,frame=video_capture.read()
    print(ret)
    #frame=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    frame=cv2.resize(frame,(0,0),fx=0.5,fy=0.5)
    #cv2.line(frame,(0,0),(511,511),(255,0,0),5)
    cv2.imshow("Frame",frame)
    """height,width,channels=frame.shape
    print("heigth = %d"%height)
    print("width= %d"%width)
    print("channels= %d"%channels)
    print("number of pixels: %d"%(frame.shape[0]*frame.shape[1]))
    print("size of the image img.size: %d"%frame.size)
    print("---Convert an image to a gray scale")"""
    ##########################################################
    gray_image=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    cv2.imshow("Gray Image",gray_image)
    ############################################################
    ####################################################################
    """print("Splipt the image into three channels")
    blue,green,red=cv2.split(frame)
    print("blue: {}".format(blue))
    print("green: {}".format(green))
    print("red: {}".format(red))

    cv2.imshow("Blue channel",blue)
    cv2.moveWindow("Blue channel",0,height)

    cv2.imshow("Green channel",blue)
    cv2.moveWindow("Green channel",0,height)

    cv2.imshow("red channel",red)
    cv2.moveWindow("red channel",0,height)"""
    ######################################################################
    ######################################################################
    """
    Hue: Indicates the type of color that we see in 360 degree format.
    Saturation: an indication of how saturated an individual color is
    Value: indicates how luminous the channel is.
    """
    print("---split the image into Hue, Saturation, Value channels....")
    hsv=cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
    print("hsv {}".format(hsv))
    h,s,v=cv2.split(hsv)    
    print("h: {}".format(h))
    print("s: {}".format(s))
    print("v: {}".format(v))
    hsv_image=np.concatenate((h,s,v),axis=1)
    cv2.imshow("Hue,Sturation,Value Image",hsv_image)
    ##########################################################################################
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break
video_capture.release()
cv2.destroyAllWindows()