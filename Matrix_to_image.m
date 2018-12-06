###Program to write the matrix values as an image
pkg load image;
clear;
clc;
clf;

#convert matrix to image directly
a=imread('cameraman.tif')
#variable a contains the matrix for image
b=mat2gray(a); #converts matrix to gray image
imshow(b)

#read image in a matrix 'a' and then convert the matrix to a gray image and print it

a=zeros(4,4);
a(2,3)=1;
a(1,3)=1;
a(4,4)=5;
figure 
p=mat2gray(a)
imshow(p)
figure
imagesc(a) #converts matrix to image
