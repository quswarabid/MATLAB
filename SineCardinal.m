function [x, t] = SineCardinal(f0, fs, T)
t = -T/2: 1/fs : +T/2;
x = zeros(1,length(t));
for i=1:length(t)
    x(i) = sin(2*pi*f0*t(i))/(2*pi*f0*t(i));
end
end