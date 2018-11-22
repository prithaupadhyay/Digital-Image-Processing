#Extract the edges of image using suitable High pass filter
pkg load image;
clear;
clc;
clf;

i=imread('cameraman.tif');
imshow(i)
#extracting edge for gray image
figure
edge(i)
title("edge()")

figure
edge(i,'canny')
title("canny")

figure
edge(i,'sobel')
title("sobel")

##Sobel detection refers to computing the gradient magnitude of an image using 3x3 filters. Where "gradient magnitude" is, for each a pixel, a number giving the greatest rate of change in light intensity in the direction where intensity is changing fastest.
##Canny edge detection goes a bit further by removing speckle noise with a low pass filter first, 
##then applying a Sobel filter, and then doing non-maximum suppression to pick out the best pixel for edges when there are multiple possibilities in a local neighborhood. 
##That's a simplification, but basically its smarter than just 
##applying a threshold to a Sobel filter, but it is still fairly low level processing.