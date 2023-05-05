clc
close all;
clear all;
%% Sample input signal
dt = 0.0001;
t = 0:dt:40;
[f, Fs] = audioread('sample5.m4a'); %128kbps


figure('Name','Testing');
subplot(2,2,1);
plot(f);

fh = fft(f);
subplot(2,2,2);
plot(abs(fh));

nh = length(f);
fhshift = (-nh/2:nh/2-1)*(Fs/nh);
yhshift = fftshift(fh);
subplot(2,2,3);
plot(abs(yhshift));


figure('Name','Signal Filtering'); 

subplot(5,2,1);
plot(f)
title("Full Sample")
xlabel("Time")
ylabel("Amplitude")

% Sample audience noise
cut = f([220000:350000]);
subplot(5,2,2); % display cut sample
plot(cut) 
title("Cut Sample")
xlabel("Time")
ylabel("Amplitude")

cuth = fft(cut); % apply fft on cut sample
subplot(5,2,3);
plot(abs(cuth)) % display fft of cut sample
title("FFT of Cut Sample")
xlabel("Frequency")
ylabel("Amplitude")

n = length(cut);
fshift = (-n/2:n/2-1)*(Fs/n);
yshift = fftshift(cuth);
subplot(5,2,4);
plot(abs(yshift));
title("Mirrored FFT of Cut Sample")
xlabel("Frequency")
ylabel("Amplitude")

cuth2 = abs(cuth/n);
cuth1 = cuth2(1:n/2+1);
cuth1(2:end-1) = 2*cuth1(2:end-1);
cuth3 = Fs*(0:(n/2))/n;

subplot(5,2,5);
plot(cuth3,cuth1);
title("Left FFT of Cut Sample")
xlabel("Frequency")
ylabel("Amplitude")

% Initialize butter filter
Fcl = 1000/(Fs/2);
Fch = 22000/(Fs/2);
%[y,x] = butter(5,Fcl/(Fs/2)); % lowpass
%[z,b,a] = butter(5, Fcl/Fs, 'high'); % highpass 
[y,x] = butter(5,[Fcl Fch],'stop');
filtf = filter(y,x,cut);

subplot(5,2,6);
plot([y,x]);
title("Butterworth Filter")
xlabel("Frequency")

subplot(5,2,7);
plot(filtf);
title("Filtered Full Sample")
xlabel("Time")
ylabel("Amplitude")

%% Play sound
%sound(ffilt,Fs)
%sound(filtf,Fs)

% sampling rate = speed


