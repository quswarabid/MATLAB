clc;
gx = input('GX = ');
gy = input('GY = ');
gz = input('GZ = ');

thetaX = acosd(gx/sqrt(gx*gx + gy*gy + gz*gz))
thetaY = acosd(gy/sqrt(gx*gx + gy*gy + gz*gz))
thetaZ = acosd(gz/sqrt(gx*gx + gy*gy + gz*gz))

