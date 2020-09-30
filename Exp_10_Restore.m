%To study and perform Image Restoration using Wiener Filters. 
%SARTAJVIR SINGH
%DIP EXPERIMENT 10
i=im2double(imread('Sun.jpg'));
subplot (3,2,1);
imshow(i);
title('Original Image');
M=21;
T=11;
PSF=fspecial('Motion',M,T);
B=imfilter(i,PSF,'conv','circular');
subplot (3,2,2);
imshow(B);
title('Blurred Image');
nm=0;
nv=0.0001;
bn=imnoise(B,'gaussian',nm,nv);
subplot (3,2,3);
imshow(bn);
title('Simulate Blur and Noise');
en=1
wnr2=deconvwnr(bn,PSF,en);
subplot (3,2,4);
imshow(wnr2);
title('Restoration, Noisy Image using NSR=0');
en= nv/var(wnr2(:));
wnr3=deconvwnr(bn,PSF,en);
subplot (3,2,5);
imshow(wnr3);
title('Restored');
%END OF PROGRAM

