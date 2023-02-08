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

CheckPalindrome('jin')
CheckPalindrome('rotator')

BasicPlotter('sin',0.01,-1 : 0.01 : 1)

% Fibonacci
function Fibonacci(x,y)
    a = 0;
    b = 1;
    
    while b <= y
        if a >= x && b <= y
            fprintf(' %d', a);
        end
        c = a + b;
        a = b;
        b = c;
    end
    fprintf(' %d\n', a);
end

% Area
function AreaOfLife(shapeName,a,b)
    area = 0;

    switch shapeName
        case 'circle'
            area = pi*(a^2);
        case 'rectangle'
            area = a*b;
        case 'square'
            area = a^2;
        case 'triangle'
            area = 0.5*(a*b);
        case 'ellipse'
            area = pi*a*b;
    end
    fprintf('%f\n', area);
end 

% Palindrome
function CheckPalindrome(string)
    string_rev = reverse(string);
    
    if strcmpi(string,string_rev)
        fprintf('%s is a palindrome!\n', string)
    else
        fprintf('%s is not a palindrome!\n', string)
    end
end

% Plot
function BasicPlotter(type,param_vector,time_vector)
    switch type
        case 'sin'
            a = sin(2*pi*param_vector*time_vector);
            plot(time_vector,a)
            title('Sinusoidal Signal')
            xlabel('Time')
            ylabel('Amplitude')
        case 'cos'
            a = cos(2*pi*param_vector*time_vector);
            plot(time_vector,a)
            title('Cosine Function')
            xlabel('Time')
            ylabel('Amplitude')
        case 'sinc'
            a = sin(param_vector);
            title('Sinc Function')
            xlabel('Time')
            ylabel('Amplitude')
        case 'normal'
            a = sin(param_vector);
            title('Normal Distribution')
            xlabel('Time')
            ylabel('Amplitude')
    end
end




