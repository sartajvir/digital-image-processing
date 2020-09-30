%To perform detection of discontinuities: point, line and edges in a given image
%SARTAJVIR SINGH
%DIP EXPERIMENT 6
I=imread('Tom.jpg');
b=imread('Jerry.jpg');
z=imread('Title.jpg');
j=imadd(I,b);
subplot (2,2,1)
imshow(I)
title('Tom');
subplot (2,2,2)
imshow(b)
title('Jeery');
x=imadd(j,z);
subplot (2,2,3)
imshow(z)
title('Title');
subplot (2,2,4)
imshow(x)
title('Tom and Jerry');
%END OF PROGRAM
