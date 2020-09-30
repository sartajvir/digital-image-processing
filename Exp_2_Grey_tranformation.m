%To Perform enhancement in spatial domain on digital images and write programs for gray-level transformations.
%SARTAJVIR SINGH
%DIP EXPERIMENT 2
clc; 
clear all 
close all
a=imread('Taj.jpg');
subplot(2,2,1);
imshow(a);
title('Taj Mahal (Original)');
b=rgb2gray(a);
subplot(2,2,2);
imshow(b);
title('Taj Mahal (Greyscale)');
imwrite(b,gray(256),'Taj_8_bit.jpg');
subplot(2,2,3);
imshow('Taj_8_bit.jpg');
title('Taj Mahal (Greyscale - 8 Bit)');
imwrite(b,gray(1024),'Taj_10_bit.jpg');
subplot(2,2,4);
imshow('Taj_10_bit.jpg');
title('Taj Mahal (Greyscale - 10 Bit)');
%END OF PROGRAM