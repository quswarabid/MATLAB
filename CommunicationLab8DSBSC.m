%Communication Systems Lab 8 Task 1
%Single Side Band - Suppressed Carrier
clc;
Ta=0.01;
t=-0.04:0.0001:0.04;
afunc=2*sinc(2*t/Ta);
bfunc=1*sinc((2*t/Ta)+1);
cfunc=1*sinc((2*t/Ta)-1);

mt=afunc+bfunc+cfunc;
subplot 331;
plot(t,mt);
title('Message Signal');
Ms=fft(mt)/length(mt);
subplot 332;
plot(t,real(Ms));
title('Message Fourier');

carrierSignal=cos(2*300*pi*t);
subplot 333;
plot(t,carrierSignal);
title('Carrier Signal');
CARRIERSIGNAL=fft(carrierSignal)/length(carrierSignal);
subplot 334;
plot(t,real(CARRIERSIGNAL));
title('Carrier Fourier');

modulatedSignal = (mt.*carrierSignal.*2.5) + carrierSignal;
subplot 335;
plot(t,modulatedSignal);
title('Modulated Signal');
MODULATEDSIGNAL=fft(modulatedSignal)/length(modulatedSignal);
subplot 336;
plot(t,real(MODULATEDSIGNAL));
title('Modulated Fourier');

rectifiedSignal=modulatedSignal;
for i=1:length(rectifiedSignal)
    if (rectifiedSignal(i)<0)
        rectifiedSignal(i)=0;
    end
end
subplot 337;
plot(t,rectifiedSignal);
title('Rectified Signal');
RECTIFIEDSIGNAL=fft(rectifiedSignal)/length(rectifiedSignal);
subplot 338;
plot(t,real(RECTIFIEDSIGNAL));
title('Rectified Fourier');

lowPassFilter = fir1(100,150*10^-4);
demodulatedSignal=filter(lowPassFilter,1,rectifiedSignal);
subplot 339;
plot(demodulatedSignal);
title('Demodulated Signal');