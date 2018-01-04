function [x,t] = Sign(time,fs,T)
t = -T/2 : 1/fs : +T/2;
x = zeros(1,length(t));
for i=1:length(t)
    %x(i) = 2*Heaviside(time, fs, i) -1;
    if t(i) < time
        x(i)=-1;
    end
    if t(i) >= time
        x(i)=+1;
    end
end
end

