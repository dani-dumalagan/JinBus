% ----------------------------------------------------------------- %
%  FILENAME    : dumalagan_LE4.m
%  COURSE      : CPE 3102
%  GROUP NO.   : 3
%  AUTHOR      : Dumalagan, Danica Marie A.
%  DESCRIPTION : Time-Response – Second Order System
% ----------------------------------------------------------------- %

% ----------------------------------------------------------------- %
% Part A: Figure 1 - Second-Order System Form
% Initial values
soSystem1 = tf(25.000, [1 4 25.00]);

% a. Imaginary part of the poles remains the same, but the real part is increased twice over the initial value.
soSystem2 = tf(37.000, [1 8 37.00]);

% b. Imaginary part of the poles remains the same, but the real part is  decreased ½ time over the initial value.
soSystem3 = tf(22.000, [1 2 22.00]);

% c. Real part of the poles remains the same, but the imaginary part is increased 2 times over the initial value.
soSystem4 = tf(88.000, [1 4 88.00]);

% d. Real part of the poles remains the same, but the imaginary part is increased 4 times over the initial value
soSystem5 = tf(340.003, [1 4 340.00]);

% e. Damping ratio remains the same, but the natural frequency is increased 2 times over the initial value.
soSystem6 = tf(100.000, [1 8 100.00]);

% f. Damping ratio remains the same, but the natural frequency is increased  4 times over the initial value.
soSystem7 = tf(400.000, [1 16 400.00]);

linearSystemAnalyzer(soSystem1,soSystem2,soSystem3,soSystem4,soSystem5,soSystem6,soSystem7);

% ----------------------------------------------------------------- %
% Part B: Figure 2 - Mechanical System
soSystem8 = tf(3.84818469, [1 4 19.24092345]);

linearSystemAnalyzer(soSystem8);