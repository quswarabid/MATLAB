
% Communication Systems
% Lab Task1 - Phase & Frequency Modulation

%ta = -0.02:samplingTime:-0.01;
%tb = -0.01:samplingTime:0.000;
%tc = 0.000:samplingTime:+0.01;
%td = +0.01:samplingTime:+0.02;
%t = 0.000:samplingTime:+0.01;
%Sa = sawtooth(2*pi*t);
%Sb = sawtooth(2*pi*t);
%Sc = -sawtooth(2*pi*t);
%Sd = -sawtooth(2*pi*t);
%S=[Sa,Sb,Sc,Sd];
%T = -0.02:samplingTime:+0.02;
%plot(S);

clc;
%Necessary Cofficients
samplingTime = 0.0001;
t = -0.04:samplingTime:+0.04-samplingTime;
Kf = 160*pi;
Kp = 1*pi;
%Message Signal Construction
a=triang(200);
b=a.*-1;
c=[a',b'];
zeroedout = zeros(1,200);
mt = [zeroedout,c,zeroedout];
subplot 221;
plot(t,mt);
title 'Message Signal';
grid on;

%Carrier Signal Construction
Wct = 2*pi*500.*t;
A = 1;

%Phase Modulation
phaseModulatedSignal = A * cos(Wct+(Kp*mt));
PHASEMODULATEDSIGNAL = fft(phaseModulatedSignal)/length(phaseModulatedSignal);
subplot 222;
plot(t,phaseModulatedSignal);
title 'Phase Modulated Signal';

%Frequency Modulation
frequencyModulatedSignal = A * cos(Wct+(Kf*samplingTime*cumsum(mt)));
FREQUENCYMODULATEDSIGNAL = fft(frequencyModulatedSignal)/length(frequencyModulatedSignal);
subplot 223;
plot(t,frequencyModulatedSignal);
title 'Frequency Modulated Signal';

% Communication Systems
% Lab Task2 - Phase & Frequency Deodulation


%Frequency DeModulation
frequencyDemodulatedSignal = diff(frequencyModulatedSignal);
for i=1:length(frequencyDemodulatedSignal)
    if frequencyDemodulatedSignal(i)<0
        frequencyDemodulatedSignal(i) = 0;
    end
end
lowPassFilter = fir1(50,150*10^-4);
frequencyDemodulatedSignal=filter(lowPassFilter,0.1,frequencyDemodulatedSignal);
subplot 224;
plot(frequencyDemodulatedSignal)
title 'Frequency Demodulated Signal';

% Communication Systems
% Lab Task3 - Comparisons with the built-in functions

%Task 2 is to demodulate the signal (differentiate it, rectify and than
%lowpass filter it). I have already done it!
%Task 3 is to use the builtin functions and than compare the results of
%both the outputs. It's pending!


new1 = fmmod(mt,500,10000,50);
new2 = fmdemod(new1,500,10000,50);
figure
plot(new2)
