%To write program for zooming and shrinking of digital images and compare Nearest Neighbor interpolation, Bilinear interpolation and Bicubic interpolation methods of zooming.
%SARTAJVIR SINGH
%DIP EXPERIMENT 8
i=imread('mahabodhitemple.jpg');

j=imresize(i,1.5,'nearest');
subplot (3,2,1)
imshow(j)
title('nearest shrinking');
k=imresize(i,0.5,'nearest');
subplot (3,2,2)
imshow(k)
title('nearest zooming');

l=imresize(i,1.5,'bilinear');
subplot (3,2,3)
imshow(l)
title('bilinear shrinking');
m=imresize(i,0.5,'bilinear');
subplot (3,2,4)
imshow(m)
title('bilinear zooming');

n=imresize(i,1.5,'bicubic');
subplot (3,2,5)
imshow(n)
title('bicubic shrinking');
o=imresize(i,0.5,'bilinear');
subplot (3,2,6)
imshow(o)
title('bicubic zooming');

%END OF PROGRAM