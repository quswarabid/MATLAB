firstsamples=melody(1:4096);
y=fft(firstsamples)/length(firstsamples);
yy=fft(melody)/length(melody);
subplot(2,1,1);
stem(abs(y));
subplot(2,1,2);
stem(abs(yy));