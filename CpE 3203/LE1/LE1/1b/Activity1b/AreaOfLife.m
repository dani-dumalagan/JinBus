% ----------------------------------------------------------------- %
%  FILENAME    : AreaOfLife.m
%  COURSE      : CPE 3203
%  GROUP NO.   : 4
%  AUTHOR      : Danica Marie A. Dumalagan
% ----------------------------------------------------------------- %

% Area
function AreaOfLife(shapeName,a,b)
    area = 0;
    fprintf('\nArea of a %s:\n', shapeName);
    switch shapeName
        case 'circle'
            fprintf('Radius: %d\n', a);
            area = pi*(a^2);
        case 'rectangle'
            fprintf('Length: %d\n', a);
            fprintf('Width: %d\n', b);
            area = a*b;
        case 'square'
            fprintf('Side: %d\n', a);
            area = a^2;
        case 'triangle'
            fprintf('Base: %d\n', a);
            fprintf('Height: %d\n', b);
            area = 0.5*(a*b);
        case 'ellipse'
            fprintf('Radius of the major axis: %d\n', a);
            fprintf('Radius of the minor axis: %d\n', b);
            area = pi*a*b;
    end
    fprintf('Area: %f\n', area);
end 