clc
close all;
clear all;
%% Sample input signal
dt = 0.0001;
t = 0:dt:60;
[f, Fs] = audioread('sample4.mp3'); %128kbps

figure('Name','Signal Filtering'); 

cut = f([220000:350000]);

cuth = fft(cut);
subplot(4,1,1);
plot(cut)
subplot(4,1,2);
plot(abs(cuth))

n = length(cut);
fshift = (-n/2:n/2-1)*(Fs/n);
yshift = fftshift(cuth);
subplot(4,1,3);
plot(abs(yshift));
cuth2 = abs(cuth/n);
cuth1 = cuth2(1:n/2+1);
cuth1(2:end-1) = 2*cuth1(2:end-1);
cuth3 = Fs*(0:(n/2))/n;
%subplot(4,1,4);

figure;
plot(cuth3,cuth1);

%tanggal
for i = 0:n
    cuth1(i) = 0;
end

figure;
plot(cuth3,cuth1);




figure;
subplot(4,1,1)
plot(f)
ylim([-1 1]);

%% FFT
n = length(t);
fhat = fft(f,n);
PSD = fhat.*conj(fhat)/n;
freq = 1/(dt*n)*(0:n);
L = 1:floor(n/2);

%%
subplot(4,1,2)
%plot(freq(L),PSD(L),'c','LineWidth',1), hold on

%% PSD
%indices = PSD>0.01 & PSD<0.2;

%% Filter powers
indices = PSD>1; % > more muffled, < lesser value, sharper sound
% < the lesser the value, the lesser the bass
% higher power intensity, bass
PSDclean = PSD.*indices;

% PSDclean = PSD;
% 
% y = PSDclean;
% x = (0:length(PSD)-1)*Fs/length(PSD);

fhat = indices.*fhat;
ffilt = ifft(fhat);
 
% n = length(f);
% fshift = (-n/2:n/2-1)*(Fs/n);
% yshift = fftshift(y);
%plot(fshift,abs(yshift),'c','LineWidth',1)

plot(freq(L),PSDclean(L),'-','Color',[.5 .1 0],'LineWidth',2.5)

%% Filter frequencies
cut_off = 160000;
%for i = (length(fshift)/2)+cut_off:length(fshift)
%    yshift(i,:) = 0;

for i = cut_off:length(x)
    y(i,:) = 0;
end

%%
subplot(4,1,3);
plot(abs(y),'c','LineWidth',1)

%%
subplot(4,1,4); 
% p
% lot(mul)
% %

ffilt = ifft(y);
plot(ffilt,'b','LineWidth',0.5)
ylim([-1 1]); 

%% Play sound
%sound(ffilt,Fs)
%sound(f,Fs)

% sampling rate = speed


