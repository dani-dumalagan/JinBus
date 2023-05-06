% Image processing by spacial filtering
clear all; 
close all; 
clc;

%% Image processing
filename = 'img9.jpg';

% Get image
sampleImage = imread(filename); %
imageRaw = rgb2gray(sampleImage);
imageSize = size(imageRaw);

% Design filter template
[f1,f2] = freqspace(imageSize,'meshgrid'); % Note: freqspace was used because freqz2 is only limited to 64x64
r = sqrt(f1.^2 + f2.^2); % compute the distance of each position from the center frequency
filt = ones(size(f1)); % create an array of ones with the same size as the image


% Choose filter type
filterType = 'lowpass'; %


% Set cut-off frequencies
maxR = max(r,[],"all");
minR = min(r,[],"all");
midR1 = maxR/2;
cutoff1 = 0.05; %
midR2 = (maxR-cutoff1)/2;
cutoff2 = 0.3; %

% Create filter
switch filterType
    case 'bandpass'
        filt((r<cutoff2)|(r>cutoff1)) = 0;
    case 'bandstop'
        filt((r>cutoff2)|(r<cutoff1)) = 0;
    case 'lowpass'
        filt(r>cutoff1) = 0;
    case 'highpass'
        filt(r<cutoff1) = 0;
end

% Get 2D Fast Fourier Transform
fftRaw = fft2(imageRaw);
fftRaw = fftshift(fftRaw);

% Apply spacial filtering using FFT
filteredFFT = (1.*filt).*fftRaw; % use filter
filteredImage = ifftshift(filteredFFT); % undo fftshift
filteredImage = ifft2(filteredImage); % undo 2D fft
filteredFFT = abs(filteredFFT);

%% Display images
figure('Name','Original Image');

% Original image
title('Original image');
imshow(sampleImage);

figure('Name','Spacial Filtering');
set(gcf,'Position', get(0,'Screensize'));
colormap gray;

% Grayscale image
subplot(4, 3, [1 2]);
title('Grayscaled image');
colorbar;
imagesc(imageRaw);
axis square;
set(gca, 'TickDir', 'out');

% Mesh of grayscale image
subplot(4, 3, 5);
title('Mesh of grayscaled image');
mesh(f1,f2,imageRaw);
set(gca,'XDir','reverse','YDir','reverse')

% FFT of grayscale image
fftRaw = abs(fftRaw);
fftRaw(fftRaw<10^-10) = 10^-10; % set minimum values with a very small positive value
fftRaw = log10(fftRaw); % make data "bigger" 

subplot(4, 3, 7);
title('FFT of grayscaled image');
imagesc(mean(f1),mean(f2,2),fftRaw);
axis xy;
axis square;
set(gca, 'TickDir', 'out');
xlabel('fx (cycles per pixel)');
ylabel('fy (cycles per pixel)');

% Mesh of FFT
subplot(4, 3, 10);
title('Mesh of grayscaled image');
mesh(f1,f2,fftRaw);
set(gca,'XDir','reverse','YDir','reverse')

% filter in sf domain
% filter in the SF domain
subplot(4, 3, 8);
imagesc(mean(f1), mean(f2,2), abs(filt));
title('Filter FFT');
axis xy;
axis square;
set(gca, 'TickDir', 'out');
xlabel('fx (cycles per pixel)');
ylabel('fy (cycles per pixel)');

% Mesh of filter FFT
subplot(4, 3, 11);
mesh(f1,f2,filt);
title('Mesh of filter FFT');

% amplitude spectrum of filtered grayscale image
% spectral amplitude of the filtered image
filteredFFT(filteredFFT < 10^-10) = 10^-10; 
filteredFFT = log10(filteredFFT); 

subplot(4, 3, 9);
imagesc(mean(f1), mean(f2,2), filteredFFT);
title('Amplitude spectrum of filtered image');
axis xy;
axis square;
set(gca, 'TickDir', 'out');
xlabel('fx (cycles per pixel)');
ylabel('fy (cycles per pixel)');

% mesh of grayscale image
subplot(4, 3, 12);
title('Mesh of filtered FFT');
mesh(f1,f2,filteredFFT);
set(gca,'XDir','reverse','YDir','reverse')

% mesh of grayscale image
subplot(4, 3, 6);
title('Mesh of filtered image');
mesh(f1,f2,filteredImage);
set(gca,'XDir','reverse','YDir','reverse')

% filtered image
% filtered image
subplot(4, 3, 3);
title('Filtered image');
imagesc(filteredImage);
colorbar;
axis square;
set(gca, 'TickDir', 'out');
xlabel('x');
ylabel('y');