% ----------------------------------------------------------------- %
%  FILENAME    : Fibonacci.m
%  COURSE      : CPE 3203
%  GROUP NO.   : 4
%  AUTHOR      : Danica Marie A. Dumalagan
% ----------------------------------------------------------------- %

% Fibonacci
function Fibonacci(x,y)
    fprintf('\nThe Fibonacci numbers between %d and %d:\n', x, y);
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