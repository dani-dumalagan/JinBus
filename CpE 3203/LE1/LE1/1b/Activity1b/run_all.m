% ----------------------------------------------------------------- %
%  FILENAME    : run_all.m
%  COURSE      : CPE 3203
%  GROUP NO.   : 4
%  AUTHOR      : Danica Marie A. Dumalagan
% ----------------------------------------------------------------- %

clc

% run_all
Fibonacci(1,10)
Fibonacci(9,255)

AreaOfLife('circle',10)
AreaOfLife('rectangle',13,7)
AreaOfLife("square",6)
AreaOfLife('triangle',5,8)
AreaOfLife('ellipse',3,11)

fprintf('\n');

CheckPalindrome('jin')
CheckPalindrome('rotator')

figure('Name','BasicPlotter')
BasicPlotter('sin',10,-1 : 0.01 : 1)
figure('Name','BasicPlotter')
BasicPlotter('cos',5,-1 : 0.01 : 1,3)
figure('Name','BasicPlotter')
BasicPlotter('sinc',25,-1 : 0.01 : 1)
figure('Name','BasicPlotter')
BasicPlotter('normal',7,-1 : 0.01 : 1)

