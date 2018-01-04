t=-0.04:0.0001:0.04;
message_signal=2*sinc(2*t/0.01) + sinc((2*t/0.01)+1) + sinc((2*t/0.01)-1);
subplot(5,1,1);
title('Message Signal');

plot(t,message_signal);
MS=fft(message_signal)/length(message_signal);

carrier_signal=cos(2*300*pi*t);
subplot(5,1,2);
plot(t,carrier_signal);
title('Carrier Signal');

modulated_signal = (message_signal.*carrier_signal) + carrier_signal;
subplot(5,1,3);
plot(t,modulated_signal);
title('Modulated Signal');


rectified_signal=modulated_signal;
for i=1:length(rectified_signal)
    if (rectified_signal(i)<0)
        rectified_signal(i)=0;
    end
end

subplot(5,1,4);
plot(t,rectified_signal);
title('Rectified Signal');


low_pass_filter = fir1(100,150*10^-4);
demodulated_signal=filter(low_pass_filter,1,rectified_signal);
plot(demodulated_signal);
subplot(5,1,5);
plot(t,demodulated_signal);
title('Demodulated Signal');
