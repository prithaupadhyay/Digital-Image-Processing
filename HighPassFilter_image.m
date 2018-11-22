#High pass filter
pkg load image;
clear;
clc;
clf;

i=imread('cameraman.tif');
imshow(i)

#filter2 for low pass filtering
#filter2 (B, X, SHAPE), apply the 2d filter B to X
f=[-1 -1 -1;-1 8 -1;-1 -1 -1]
y=filter2(f,i,"same")
figure 
imshow(y/255)