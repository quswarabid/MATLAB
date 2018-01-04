LTI_sys = tf([33*10^-9 0] ,[1.32*10^-10 7.793*10^-6 1])
step(LTI_sys,'r');
hold on
impulse(LTI_sys,'b');
grid on
