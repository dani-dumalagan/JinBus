clc

%% Sample input signal
dt = 0.001;
t = 0:dt:1;
%fclean = sin(2*pi*50*t) + sin(2*pi*120*t);
f = audioread('Recording.m4a');

figure('Name','Signal Filtering'); 
subplot(4,1,1)
plot(f)
%plot(t,f,'g','LineWidth',1.5), hold on
%plot(t,fclean,'bl','LineWidth',0.5)
%l1 = legend('Noisy','Clean'); set(l1,'FontSize',10)
