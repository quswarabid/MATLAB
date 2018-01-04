function [y,t] = adc_NU(x,maxRange,levels)

quantizationLevels =  0 : maxRange/levels : maxRange;
t = 0:1:length(x)-1;

error = zeros(1,length(quantizationLevels));
y=zeros(1,length(x));

for i=1:length(x)
    for j=1:length(quantizationLevels)
        error(j) = abs(quantizationLevels(j) - x(i));
        [minimumValue, minimumIndex] = min(error);
        y(i) = quantizationLevels(minimumIndex);
    end
end
stem(t,y);
grid on
end