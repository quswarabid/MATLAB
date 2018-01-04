%%
%%Task2b
LTI_sys1 = tf([0 0 50] ,[0 1 50]);
LTI_sys2 = tf([0 0 100] ,[0 1 100]);
LTI_sys3 = tf([0 0 200] ,[0 1 200]);
t=0 : 0.01 : .12;
step(LTI_sys1,'r');
hold on
step(LTI_sys2,'g');
hold on
step(LTI_sys3,'b');
hold on
grid on

%%
%Task2e

LTI_sys1 = tf([0 0 0.0001] ,[0 1 00.0001])
t=0 : 0.01 : .12;
step(LTI_sys1,'r');
hold on
grid on
%%
%Task2f

LTI_sys1 = tf([0 0 -1] ,[0 1 -1])
t=0 : 0.01 : .12;
impulse(LTI_sys1,'r');
hold on
grid on

%%
%Task5
zeros=[-0.06 -0.2 2];
poles=[0.9 0.1];
hole=poly(zeros);
pole=poly(poles);
transfer=tf(hole, pole)