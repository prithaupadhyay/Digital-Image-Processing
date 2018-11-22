#add different amount of GAUSSIAN noise and remove it
pkg load image;
clear;
clc;
clf;

p=imread('cameraman.tif');

#d=noise density
d=0.02;
j = imnoise(p,'gaussian',d);
subplot(1,4,1)
imshow(j)

d=0.08;
k = imnoise(p,'gaussian',d);
subplot(1,4,2)
imshow(k)

d=0.1;
l = imnoise(p,'gaussian',d);
subplot(1,4,3)
imshow(l)

d=0.5;
m = imnoise(p,'gaussian',d);
subplot(1,4,4)
imshow(m)

#################applying filter##############
figure

x=medfilt2(j);
subplot(1,4,1)
imshow(x)

x=medfilt2(k);
subplot(1,4,2)
imshow(x)


x=medfilt2(l);
subplot(1,4,3)
imshow(x)


x=medfilt2(m);
subplot(1,4,4)
imshow(x)