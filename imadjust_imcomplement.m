#Difference between imadjust and imcomplement
pkg load image;
clear;
clc;
clf;

i=imread('cameraman.tif');
j=imread('hey.jpg');

subplot(1,3,1)
imshow(i)
title("Original")

x=imadjust(i); # gray image imadjust
subplot(1,3,2)
imshow(x)
title("imadjust")

y=imcomplement(i); ##gray image complement
subplot(1,3,3)
imshow(y)
title("imcomplement")


######colored image#######
figure
subplot(1,3,1)
imshow(j)
title("Original")

a=imadjust(j,[.2 .3 0; .6 .7 1],[]);  #coloured image adjust
subplot(1,3,2)
imshow(a)
title("imadjust")

y=imcomplement(j); #coloured image complement
subplot(1,3,3)
imshow(y)
title("imcomplement")





