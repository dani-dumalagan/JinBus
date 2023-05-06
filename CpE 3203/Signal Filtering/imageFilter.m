clc
close all;
clear all;

% Upload image
image = imread('img9.jpg');
[x y color] = size(image);
subplot(2,2,1);
imshow(image);
title("Original image");

% Grayscale image
imageGray = rgb2gray(image);

subplot(2,2,2);
imshow(imageGray)
title("Grayscale image");


% Binarize image
level = graythresh(image);
%imageBin = imbinarize(image);
subplot(2,2,4);
%imshowpair(image,imageBin,'montage')

%imhist(fft(imageGray));

I=imread('img9.jpg');
F=fft2(double(I));
S=fftshift(F);
L=log2(S);
A=abs(L);
imagesc(A)

% Gaussian-filtered image
imageGauss = imgaussfilt(image,6);
subplot(2,2,3);
imshow(imageGauss)
title("Gaussian-filtered image");


%title("Gaussian-filtered image");


