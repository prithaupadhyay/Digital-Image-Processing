#Program to read an image into a matrix.
clear;
clc;
clf;

a=imread('cameraman.tif');

a

imshow(a)

[rows columns depth]=size(a)