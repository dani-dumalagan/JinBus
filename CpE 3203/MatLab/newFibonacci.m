% ----------------------------------------------------------------- %
%  FILENAME    : newFibonacci.m
%  COURSE      : CPE 3102
%  GROUP NO.   : 3
%  AUTHOR      : Dumalagan, Danica Marie A.
%  DESCRIPTION : Displays the Fibonacci numbers that exist within 
%                the range of the numbers given.
% ----------------------------------------------------------------- %
function newFibonacci(x,y)
    t1 = 0;
    t2 = 1;
    
    while t2 <= y
        if t1 >= x && t2 <= y
            fprintf(' %d', t1);
        end
        t3 = t1 + t2;
        t1 = t2;
        t2 = t3;
    end
    fprintf(' %d\n', t1);