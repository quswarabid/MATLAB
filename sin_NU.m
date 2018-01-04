function [x, t] = sin_NU (f0, fs, T)
t = -T/2: 1/fs : +T/2;
%t = 0: 0.01 : 10;
x = sin(2*pi*f0*t);
end