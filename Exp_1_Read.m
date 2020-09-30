%To study fundamentals of image processing and write program to read and display different types of digital images.
%SARTAJVIR SINGH
%DIP EXPERIMENT 1
clc; 
clear all 
close all
a=imread('Gateway.png');
subplot(2,2,1);
imshow(a);
title('Portable Network Graphics (PNG) Image');
b=imread('hawamahel.jpg');
subplot(2,2,2);
imshow(b);
title('Joint Picture Experts Group (JPG) Image');
c=imread('qutub-minar.tif');
subplot(2,2,3);
imshow(c);
title('Tagged Image File (TIFF) Image');
d=imread('Ranganathaswamy_Temple.bmp');
subplot(2,2,4);
imshow(d);
title('Bitmap image (BMP) Image');
%END OF PROGRAM