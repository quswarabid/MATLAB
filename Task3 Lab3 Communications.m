%%Task 3
[cc, ww]=fourier_analysis(step_signal,2,50);

subplot(2,1,1);
stem(ww,abs(cc));
subplot(2,1,2);
stem(ww,angle(cc));

%%
t = 0:1/100:1;
x = sin(2*pi*15*t) + sin(2*pi*40*t); 
stem(t,x); 
xlabel time
ylabel x(t)
%%
y = fft(x)/ length(x);
stem(y);
xlabel frequency
ylabel Y(f)
%%
xx = ifft(y)*length(y);
stem(xx,'r');
hold on;
plot(x,'b');
grid on;

