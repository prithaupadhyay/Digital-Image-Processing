###Program to find low pass filtered 
###version of matrix as well as image.
clear;
clc;
clf;

i=imread('cameraman.tif');
# pass image through low pass filter

subplot(1,2,1)
imshow(i)

f=ones(3,3)/9;
x=filter2(f,i,'same');
x
subplot(1,2,2)
imshow(x/255)

#pass matrix through low pass filter 
# i is a matrix 