u = 1:1:3000;
y = u*2;
u=u';
y=y';
Ts = 0.2; % Sample time is 0.2 sec
z = iddata(y,u,Ts);
% First 1000 samples used for estimation
ze = z(1:1000);
% Remaining samples used for validation
zv = z(1001:3000);