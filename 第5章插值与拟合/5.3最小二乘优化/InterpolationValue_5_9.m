clc,clear
load data3
mf = @(cs,xdata)1/sqrt(2*pi)/cs(2)*exp(-(xdata-cs(1)).^2/cs(2)^2/2); %ÄäÃûº¯Êı
cs = lsqcurvefit(mf,rand(2,1),x0,y0)