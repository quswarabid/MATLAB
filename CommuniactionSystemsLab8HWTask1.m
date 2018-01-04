samplingTime=10e-4;
t=-1:samplingTime:1;
fc=500;
mt=2*sinc(2*t/0.01)+sinc((2*t/0.01)+1)+sinc((2*t/0.01)-1);
mf=mt./(pi*t);
mh=mt/(pi*t);
phi_usb=mt.*cos(2*pi*fc*t)-mh.*sin(2*pi*fc*t);
mk=mt/(pi*t);
phiusb=mt.*cos(2*pi*fc*t)-mk.*sin(2*pi*fc*t);

subplot(3,2,1);
plot(t,mt);
title('m(t)');

subplot(3,2,2);
plot(t,mf);
title('m_f(t)');  

axis([-0.2 0.2 -2 2]);
subplot(3,2,3);
plot(phi_usb);
axis([900 1100 -2 2]);
title('SSB-SC');

subplot(3,2,4);
L_fftmt=length(mt);
F_mt=fftshift(fft(mt,L_fftmt));
plot(t,F_mt);
title('Freq Spectrum of m(t)');

subplot(3,2,5);
L_fft=length(phiusb);
F_m=fftshift(fft(phiusb,L_fft));
plot(t,F_m);
title('Freq Spectrum of PhiUSB');
axis([-1 1 -2 2]);

subplot(3,2,6);
%plot();