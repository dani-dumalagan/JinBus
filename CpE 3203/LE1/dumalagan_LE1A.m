% ----------------------------------------------------------------- %
%  FILENAME    : dumalagan_LE1A.m
%  COURSE      : CPE 3102
%  GROUP NO.   : 3
%  AUTHOR      : Dumalagan, Danica Marie A.
%  DESCRIPTION : Contains answers to Activity #1a 
% ----------------------------------------------------------------- %

clc

disp('======================[ Number 1a ]======================')
% Number 1a
number1aA = [2 1 1;0 -3 4]
number1aB = [3 -1 3;2 0 5]
number1aAns = number1aA + number1aB

disp('======================[ Number 1b ]======================')
% Number 1b
number1bA = [1 2;3 0]
number1bB = [1 3;0 -4]
number1bAns = 3*number1bA - 2*number1bB

disp('======================[ Number 1c ]======================')
% Number 1c
number1cAns = 5*number1aA - 2*number1aB

disp('======================[ Number 2 ]=======================')
% Number 2
number2A = [1 2;3 0]
number2B = [2 -1;3 4]
number2C = [2 -2;1 3;4 -1]
number2Ans = number2C*(number2A + number2B)

disp('======================[ Number 3 ]=======================')
% Number 3
number3Ans = number2C*number2A + number2C*number2B

disp('======================[ Number 4 ]=======================')
% Number 4
x = -1000:1000;
y1 = x.^2 + 5*x + 3;
plot(x,y1,'r')

hold on

y2 = x.^3 + 4;
plot(x,y2,'b--')

hold off

disp(' ');
disp('Please see pop-up graph. Thanks!')
disp(' ');

disp('======================[ Number 5 ]=======================')
% Number 5
number5ASubplot = subplot (2, 1, 1) 
number5APlot = plot (x, y1)
number5ATitle = title(number5ASubplot,'5A: Quadratic Function')
xlabel('')
ylabel('')

% 5. b. Subplot
number5BSubplot = subplot (2, 1, 2)
number5BPlot = plot (x, y2)
number5BTitle = title(number5BSubplot,'5B: Cubic Function')
  
disp(' ');
disp('Please see pop-up graph. Thanks!')
disp(' ');

disp('======================[ Number 6a ]======================')
% Number 6a
number6a = [1 32 8 85 4 1 3 1]
number6aAns = roots(number6a)

disp('======================[ Number 6b ]======================')
% Number 6b
number6b = [3 -1 24 9 6 2]
number6bAns = roots(number6b)

disp('======================[ Number 6c ]======================')
% Number 6c
number6c = [1 77 11 1]
number6cAns = roots(number6c)

disp('======================[ Number 7a ]======================')
% Number 7a
number7a = conv(number6a,number6b)

disp('======================[ Number 7b ]======================')
% Number 7b
number7b = conv(number6a,number6c)





