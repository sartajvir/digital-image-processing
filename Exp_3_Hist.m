%To Perform the histogram processing and histogram equalization
%SARTAJVIR SINGH
%DIP EXPERIMENT 3
img = imread('sanchi_stupa.jpg');
subplot(2,2,1);
imshow(img);
title('Sanchi Stupa (Original Image)');
img = rgb2gray(img);
subplot(2,2,2);
imshow(img);
title('Sanchi Stupa (Grey_scaled)');
xaxis = linspace(0,255,50);
yaxis = imhist(img,50);
imwrite(img,'grey_sanchi_stupa.jpg');
subplot(2,2,3);
stem(xaxis,yaxis);
title('Histogram');
img = histeq(img);
imwrite(img, 'eq_hist_grey_sanchi_stupa.jpg');
xaxis = linspace(0,255,50);
yaxis = imhist(img,50);
subplot(2,2,4);
stem(xaxis,yaxis);
title('Equalized Histogram');
%END OF PROGRAM