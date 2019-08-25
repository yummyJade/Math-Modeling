clc,clear
a = textread('data1.txt');
y0 = a(:,[2,7]);
y0 = nonzeros(y0);
x0 = [a(:,[3:5])];a([1:end-1],[8:10]);
canshu0 = rand(2,1); %拟合参数的初始值是任意的
lb = zeros(2,1);
ub = [20;2];
canshu = lsqcurvefit(@fun1,canshu0,x0,y0,lb,ub)