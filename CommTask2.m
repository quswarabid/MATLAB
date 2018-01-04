%Task2CommunicationLab5
%t = (0:0.1:10)';
%x = sawtooth(t);
%y = awgn(x,10,'measured');

t = (0:0.1:10);
x = sawtooth(t);
y = awgn(x,10,'measured');

%y=xcorr(x,x);

z=(2*pi/L)*k;
Y=y*(exp(-2*1i*pi/L)).^(n'*k);