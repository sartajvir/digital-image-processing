%To perform basic geometric transformations (2-D DFT, FFT etc.) on Digital Images. 
%SARTAJVIR SINGH
%DIP EXPERIMENT 7
F=imread('KSR.jpg');
subplot (2,2,1)
imshow(F)
title('Original Image');
I = rgb2gray(F);
subplot (2,2,2)
imshow(I)
title('Gray Scaled Image');
F=fft2(I);%2-D fast Fourier transform
y=fftshift(F);% Shift zero-frequency component to center of spectrum
s=abs(y); % absolute value of the corresponding element
z=log(1+s); % natural logarithm of each element in array
p=mat2gray(z);% Matrix to gray level
subplot (2,2,3)
imshow(p)
title('FFT of Original Image');
q=ifftshift(y);
t=ifft2(q);
subplot (2,2,4);
m=mat2gray(t);
imshow(m);
title('Inverse FFT of original Image');
%END OF PROGRAM