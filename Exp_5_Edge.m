%To perform detection of discontinuities: point, line and edges in a given image
%SARTAJVIR SINGH
%DIP EXPERIMENT 5
e = imread('ajanta.jpg');
subplot(2,2,1);
imshow(e);
title('Ajanta & Ellora Caves (Original Image)');
i = rgb2gray(e);
subplot(2,2,2);
imshow(i);
title('Ajanta & Ellora Caves (Grey Scaled)');
j=edge(i,'sobel');
subplot(2,2,3);
imshow(j);
title('Ajanta & Ellora Caves (Edges - Sobel)');
h=edge(i,'prewitt');
subplot(2,2,4);
imshow(h);
title('Ajanta & Ellora Caves (Edges - Prewitt)');
%END OF PROGRAM