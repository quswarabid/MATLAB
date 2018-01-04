%   Communication Systems
%   lab 10 - Task 2
%   BSEE14013 - BSEE14063

%   Task 1 was to create the functions that I have created. This is Task 2.
[a1,b1] = Sine(1000,20000,0.005);
[a2,b2] = Sine(1000,1500,0.005);
subplot 211;
plot(b1,a1);
title '1KHz sampled at 20KHz';
subplot 212;
plot(b2,a2);
title '1KHz sampled at 1.5KHz';

soundsc(a1,20000);
soundsc(a2,1500);
