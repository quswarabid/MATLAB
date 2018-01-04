%Communication Systems
%Lab 12 - ADC Task 1
%BSEE14013 - BSEE14063

clc;
%samplingPeriod = 0.02;
%t = 0: samplingPeriod : 1;
td = 0.002;
t = 0: td : 1;
L = 8;
ts = td;

sig_in1 = sin(2*pi*1*t);
sig_in2 = sin(2*pi*3*t);
sig_in=sig_in1+sig_in2;
SIG_IN = fft(sig_in)/length(sig_in);
[s_out,sq_out,sqh_out,Delta,SQNR]=sampandquant(sig_in,L,td,ts);

stem(s_out);
