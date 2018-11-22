##Observe the effects of changing gamma on an image.
##Show their effects on band of interest using histogram
##of the input image and corresponding processed image.

#Explaination:
#Gamma is done to artificially boost or increase image 
#tonal data values.
#the purpose of Gamma Correction is to oppositely correct for the deficiencies (non-linearity) of CRT monitors 
#(CRT = Cathode Ray Tubes), which we used for many years, from earliest television. 
#CRT losses make dimmer values darker, therefore the data is intentionally made overly 
#bright first, in the special way so that it will come out just right (data to power of exponent 1/gamma).


#However, today's LCD monitors (LCD = Liquid Crystal Display) are already linear, and don't need gamma, 
#but we continue to use and expect gamma, because all of the worlds digital photo images already 
#contain gamma correction (and CRT will still need it too).

#https://www.scantips.com/lights/gamma2.html

pkg load image;
clear;
clc;
clf;

p=imread('cameraman.tif');
imshow(p)
#numel(i) to calculate number of pixels in image
#x axis from 0(black)-255(white) 
z=numel(p)  #=65536

#gamma = 1.0
#i=double(ones(100,100));
i=p;
for j=1:100
 for k = 1:100
 i(j,k)=round(k/10)./10;
 end
end
figure
subplot(1,2,1);imagesc(i);colormap gray;
subplot(1,2,2);plot(0:0.01:1);axis tight;

#gamma=0.2
x=p
for j=1:100
 for k = 1:100
 x(j,k)=(round(k/10)./10).^0.2;
 end
end
figure
subplot(1,2,1);imagesc(x);colormap gray;
subplot(1,2,2);plot((0:0.01:1).^0.2);axis tight;


figure
subplot(1,3,1)
imhist(p)
title('original')

subplot(1,3,2)
imhist(i)
title('gamma=1')

subplot(1,3,3)
imhist(x)
title('gamma=0.2')
 