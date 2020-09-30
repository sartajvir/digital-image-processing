%To Perform Spatial domain Enhancement using Filtration of digital images. 
%SARTAJVIR SINGH
%DIP EXPERIMENT 9
z=imread('Humayun_Tomb.jpg');
subplot (3,2,1);
imshow(z);
title('Humayun Tomb');

i = rgb2gray(z);

j=ordfilt2(i,1,true(3));
subplot (3,2,2);
imshow(j);
title('Minimum Filtered Image');

k=ordfilt2(i,4,true(4));
subplot (3,2,3);
imshow(k);
title('Median Filtered Image');

l=ordfilt2(i,9,true(3));
subplot (3,2,4);
imshow(l);
title('Maximum Filtered Image');

m=fspecial('laplacian');
n=imfilter(i,m);
subplot (3,2,5);
imshow(n);
title('Laplacian Image');

isize=[10,10];
o=fspecial('average', isize);
p=imfilter(i,o);
subplot (3,2,6);
imshow(p);
title('Averaging Image');

%END OF PROGRAM
