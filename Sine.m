function [x, t] = Sine(f0, fs, T)
t = -T/2: 1/fs : +T/2;
x = sin(2*pi*f0*t);
end