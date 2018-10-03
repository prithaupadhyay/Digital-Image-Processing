#Add gaussian noise to an image and then try to remove it using low pass filter.

pkg load image;
clear;
clc;
clf;

i=imread('cameraman.tif');
imshow(i)

j=imnoise(i,'gaussian');

figure
imshow(j)

#Applies linear filter for averaging

x=wiener2(j,[5 5]);
figure
title("wiener2 effect")
imshow(x)

#filter2 for low pass filtering
#filter2 (B, X, SHAPE), apply the 2d filter B to X
f=ones(3,3)/9;
y=filter2(f,j,"same")
figure 
imshow(y/255)