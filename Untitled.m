%%
%Task2CommunicationLab5
t = (0:0.1:10)';
x = sawtooth(t);
y = awgn(x,10,'measured');

%%
%Task3CommunicationLab5
%pulstran(t,pulseperiods,@rectpuls,pulsewidth)
pulstran(10,1,1,0.5)