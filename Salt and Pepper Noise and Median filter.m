#Add Salt and Pepper noise to an image and try to remove it using median filter.

pkg load signal;
pkg load image;

clear;
clc;
clf;

i=imread('cameraman.tif');
imshow(i)

k=imnoise(i,'salt & pepper');
figure
imshow(k)

#Replaces elements of A with the median of their neighbours as
#defined by the true elements of logical matrix NHOOD or by a matrix
#of size M by N.
#The default NHOOD is a 3 by 3 matrix of true
#elements.

## median filtering specifying neighborhood dimensions
#medfilt2 (img)         # default is [3 3]
#medfilt2 (img, [3 1])  # a 3x1 vector

#medfilt2 (img, [5 5])  # 5 element wide square

p=medfilt2(k);
figure
imshow(p)