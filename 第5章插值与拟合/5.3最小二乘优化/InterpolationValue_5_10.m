clc,clear
load data3
mf = @(cs)1/sqrt(2*pi)/cs(2)*exp(-(x-cs(1)).^2/cs(2)^2/2)-y0;
cs0 = rand(2,1);
cs = lsqnonlin(mf,cs0)
