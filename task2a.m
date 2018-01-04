num1=2;
num2=4097*num
x=melody(num2:num2+4097);
X_mags = abs(fft(x))/length(x);
stem(X_mags);
xlabel('DFT Bins')
ylabel('Magnitude')