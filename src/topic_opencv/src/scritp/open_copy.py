#!/usr/bin/env python
#import numpy the data structure that will handle a image
import numpy as np 
#import openCV
import cv2

image_name="tree"
print("read an image from file")
img=cv2.imread("images/"+image_name+".jpg")
print("create a window holder for the image")
cv2.namedWindow("images",cv2.WINDOW_NORMAL)
print("display the image")
cv2.imshow("images",img)
print("press a key inside the image to make a copy")
cv2.waitKey(0)
print("image copied to folder image/copy")
cv2.imwrite("image/"+image_name+"-copy.jpg",img)
