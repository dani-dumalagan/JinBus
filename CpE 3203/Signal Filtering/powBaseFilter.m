clc

%% Sample input signal
dt = 0.0001;
t = 0:dt:100;
%fclean = sin(2*pi*50*t) + sin(2*pi*120*t);
[f, Fs] = audioread('Recording.m4a');

figure('Name','Signal Filtering'); 
subplot(4,1,1)
plot(f)
%plot(t,f,'g','LineWidth',1.5), hold on
%plot(t,fclean,'bl','LineWidth',0.5)
%l1 = legend('Noisy','Clean'); set(l1,'FontSize',10)
ylim([-1 1]); 
xlim([0 1000000]); 
%sound(f,Fs)

%% FFT
n = length(t);
fhat = fft(f,n);
PSD = fhat.*conj(fhat)/n;
freq = 1/(dt*n)*(0:n);
L = 1:floor(n/2);

subplot(4,1,2)
plot(freq(L),PSD(L),'c','LineWidth',1), hold on

%% PSD
%indices = PSD>0.01 & PSD<0.2;
indices = PSD>0.01; % > more muffled, < lesser value, sharper sound
% < the lesser the value, the lesser the bass
% higher power intensity, bass
PSDclean = PSD.*indices;
fhat = indices.*fhat;
ffilt = ifft(fhat);

subplot(4,1,3); 
plot(freq(L),PSDclean(L),'-','Color',[.5 .1 0],'LineWidth',2.5)

subplot(4,1,4);
plot(t,ffilt,'b','LineWidth',0.5)
ylim([-1 1]); 

%% Play sound
sound(ffilt,Fs)

% sampling rate = speed

