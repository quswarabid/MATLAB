function out_signal = fix_melody(signal)
X = (fft(signal))/length(signal);
div=((12*4096)/144)-.3333;
zc = zeros(1,div);
for i=1:length(zc)
    zc(i)= 1+(div*(i));
end
for i=1:length(zc)
    X(zc(i))=0;
end
low_freq=0.0001;
for i = 1:length(X)
      if X(i) < abs(low_freq)
          X(i)=0;
      end
end
out_signal=real(ifft(X)*length(X));