%To Perform the different thresholding operations
%SARTAJVIR SINGH
%DIP EXPERIMENT 4
img = imread('Red_fort.jpg');
subplot(2,2,1);
imshow(img);
title('Red Fort (Original Image)');
img = rgb2gray(img);
imwrite(img, 'Grey_Red_fort.jpg');
subplot(2,2,2);
imshow(img);
title('Red Fort (Grey Scaled Image)');
[rows, cols] = size(img);
%set threshold value
thresh = 100;
%thresholding to create binary b and w image
for row = 1:rows
    for col = 1:cols
        if img(row,col) > thresh
            img(row,col) = 255;
        else
            img(row,col) = 0;
        end;
    end;
end;
imwrite(img, 'Binary_Red_fort.jpg');
subplot(2,2,3);
imshow(img);
title('Red Fort (Binary Image)');
%END OF PROGRAM