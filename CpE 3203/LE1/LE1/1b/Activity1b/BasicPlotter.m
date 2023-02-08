% ----------------------------------------------------------------- %
%  FILENAME    : BasicPlotter.m
%  COURSE      : CPE 3203
%  GROUP NO.   : 4
%  AUTHOR      : Danica Marie A. Dumalagan
% ----------------------------------------------------------------- %

% Plot
function BasicPlotter(type,param_vector1,time_vector,param_vector2)
    switch type
        case 'sin'
            x = 2*pi*param_vector1*time_vector;
            y = sin(x);
            plot(time_vector,y)
            title('Sine Wave')
            xlabel('Time')
            ylabel('Amplitude')
            fprintf('\nBasicPlotter for Sine Wave is now displayed!\n');
        case 'cos'
            x = 2*pi*param_vector1*time_vector;
            y = param_vector2*cos(x);
            plot(time_vector,y)
            title('Cosine Wave')
            xlabel('Time')
            ylabel('Amplitude')
            fprintf('\nBasicPlotter for Cosine Wave is now displayed!\n');
        case 'sinc'
            y = sinc(time_vector);
            plot(time_vector,y)
            title('Sinc Function')
            xlabel('Time')
            ylabel('Amplitude')
            fprintf('\nBasicPlotter for Sinc Function is now displayed!\n');
        case 'normal'
            y = normpdf(time_vector,0,param_vector1);
            plot(time_vector,y)
            title('Normal Distribution')
            xlabel('Time')
            ylabel('Amplitude')
            fprintf('\nBasicPlotter for Normal Distribution is now displayed!\n');
    end
end