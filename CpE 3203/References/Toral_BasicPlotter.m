function Toral_BasicPlotter(type, param_vector, time_vector,amplitude)
    
    type = lower(type);
    switch type
     
        case "sin"
            x = sin(2 * pi * param_vector * time_vector)
            subplot(2,2,1)
            plot(time_vector,x,'b')
            xlabel('Time')
            ylabel('Amplitude')
            title('Plot of the Sine Function')
        case "sinc"
            x = sinc(time_vector);
            subplot(2,2,2)
            plot(time_vector,x,'b')
            xlabel('Time')
            ylabel('Amplitude')
            title('Plot of the Sinc Function')

        case "cos"
            x= amplitude*cos(2*pi*param_vector*time_vector)
            subplot(2,2,3)
            plot(time_vector,x,'r')
            xlabel('Time')
            ylabel('Amplitude')
            title('Plot of the Cosine Function')
        case "func"
            x = normpdf(time_vector,0, param_vector)
            subplot(2,2,4)
            plot(time_vector,x, 'g')
            xlabel('Time')
            ylabel('Amplitude')
            title('Plot of the Normal Distribution Function')
        otherwise
            fprintf('\ttype is not available at the moment\n');
    
    end


end