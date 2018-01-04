function [x,t] = Dirac(time,fs,T)
%   Dirac (Unit Impulse)
t = -T/2 : 1/fs : +T/2;
x = zeros(1,length(t));
for i = 1:length(t)
    if abs(t(i)-time) <= 1/fs
        x(i) = 1;
    end    
end
end