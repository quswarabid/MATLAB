function PowerSpectrum=PlotFrequencySpectrum(xx,yy,plotmode,XMODE,LabelPeaks)
% Computes the power spectrum of x,y with optional linear/log plotting.
% plotmode = 0: no plot; =1:linear, =2:semilog X, =3:semilog Y; =4: log-log)
% XMODE = 0: Frequency Spectrum (x is frequency); =1: Periodogram (x is time).
% LabelPeaks: If = 1, uses findpeaks to locate and label frequency of peaks
% Change peak detection parameters in lines 51-54.
% (c) Tom O'Haver 2014.
% EXAMPLE:
% x=[0:.01:2*pi]';
% y=sin(200*x)+randn(size(x));
% subplot(2,1,1);
% plot(x,y);
% subplot(2,1,2);
% PowerSpectrum=PlotFrequencySpectrum(x,y,1,0,1);
fy=fft(yy);
sy=fy .* conj(fy); % Compute power spectrum
plotrange=1:length(fy)/2;
if XMODE,
    f=range(xx)./(plotrange-1);
else
    f=((plotrange-1)./range(xx));
end
realsy=real(sy(plotrange));
maxpower=max(realsy);
maxx=val2ind(realsy,maxpower);
PowerSpectrum=([f' realsy]);
if plotmode,
    hold off
    switch plotmode,
        case 1
            plot(f,realsy,'r.-')
            ylabel('Linear y')
        case 2
            semilogx(f,realsy,'r.-')
            ylabel('Linear y')
        case 3
            semilogy(f,realsy,'r.-')
            ylabel('Log y')
        case 4
            loglog(f,realsy,'r.-')
            ylabel('Log y')
        otherwise,
    end
    if XMODE,
        title('Periodogram: x=Time. ')
        xlabel('Time')
    else
        title('Spectrum: x=Frequency (e.g. 1/time)')
        xlabel('Frequency')
    end
    if LabelPeaks,
        AmpT=0.05.*max(PowerSpectrum(:,2));
        SlopeT=0.01;
        SmoothW=3;
        FitW=3;
        P=findpeaks(PowerSpectrum(:,1),PowerSpectrum(:,2),SlopeT,AmpT,SmoothW,FitW);
        text(P(:,2),P(:,3),num2str(P(:,2)))
    end
end