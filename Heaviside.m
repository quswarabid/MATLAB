function [x,t] = Heaviside(time,fs,T)
t = -T/2 : 1/fs : +T/2;
x = zeros(1,length(t));
for i = 1:length(t)
    if t(i) >= time
        x(i) = 1;
    end    
end
end