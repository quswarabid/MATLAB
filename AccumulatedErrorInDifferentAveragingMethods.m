clear;clc;
n=1:10;

array1=rand(1,10)*10;
array2=zeros(1,10);
array3=zeros(1,10);

for i=1:10
for j=1:i
    array2(i)=array2(i)+array1(j);
    array2(i)=array2(i)/j;
end
end
array3=array1;
for i=1:10
    if i==1
        array3(i)=array1(i);
    else
    array3(i)=(array3(i)+array3(i-1))/2;
    end
end
plot(n,array1,'r');
hold on;

plot(n,array2,'g');
hold on;

plot(n,array3,'b');
hold on;
