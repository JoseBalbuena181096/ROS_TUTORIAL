#usr/bin/env python
import numpy as np
import cv2

#The original image
image=cv2.imread("images/tennisball04.jpg")
cv2.imshow("Original",image)
#Image hsv
hsv=cv2.cvtColor(image,cv2.COLOR_BGR2HSV)
cv2.imshow("HSV image",hsv)
#find the upper an lower bounds of the yellow color tenniball
#lower bounds (Hve,Saturation,Value)
yellowLower=(30,150,100)
yellowUpper=(35,255,255)
#Define mask using the lower and upper  bound of the yellow color 
mask=cv2.inRange(hsv,yellowLower,yellowUpper)
cv2.imshow("Mask image",mask)
cv2.waitKey(0)
cv2.destroyAllWindows() 