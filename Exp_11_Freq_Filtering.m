%To Perform Frequency domain Enhancement using Filtration of digital images.
%SARTAJVIR SINGH
%DIP EXPERIMENT 11
z=imread('Hampi_virupaksha_temple.jpg');
subplot (2,2,1);
imshow(z);
title('Hampi Virupaksha Temple');
i = rgb2gray(z);
subplot (2,2,2);
imshow(i);
title('Grey Scaled');

m=im2double(i);
G=fft2(m);
X=256;
Y=256;
for u=1;X;
    for v=1:Y
        A(u,v)=((cos(2*pi*u/X)/2)+(cos(2*pi*v/Y))/2);
    end
end
subplot (2,2,3);
imshow(A);
title('LPF without FFT shift');
B=A.*G;
c=ifft2(B);
mag=abs(c);
d=mat2gray(mag);
subplot (2,2,4);
imshow(d);
title('Filtered Image');
%END OF PROGRAM