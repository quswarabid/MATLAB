%% CommunicationsLab4Task1a
t =0:1/100:1;
x = signal_id;
y =fft(x)/length(x);	
stem(y);
ylabel Y(f)

%% CommunicationsLab4Task1b
t =0:1/100:1;
x = signal_id;
y =fft(x)/length(x);	
subplot(3,1,1);
stem(abs(y));
xlabel Amplitude
subplot(3,1,2);
stem((y));
xlabel Frequency
subplot(3,1,3);
stem(imag(y));
xlabel Phase