function melody_check(signal);

% Written by Mark Bartsch, Winter 2002
% Modification History:
%    8/16/02  --  Added modification history (MB)


specgram(signal,1024,8192);
colormap(flipud(gray));
xlabel('Time (seconds)');
ylabel('Frequency (Hertz)');
colorbar;
title(['Checksum: ' num2str(mean(signal.^4))]);
