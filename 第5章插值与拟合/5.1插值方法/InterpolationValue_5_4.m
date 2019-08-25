clc,clear
x = [129,140,103.5,88,185.5,195,105,157.5,107.5,77,81,162,162,117.5];
y = [7.5,141.5,23,147,22.5,137.5,85.5,-6.5,-81,3,56.5,-66.5,84,-33.5];
z = -[4,8,6,8,6,8,8,9,9,8,8,9,4,9];
xmm = minmax(x)
ymm = minmax(y)
xi = xmm(1):xmm(2);
yi = ymm(1):ymm(2);
zi4 = griddata(x,y,z,xi,yi','cubic');
zi2 = griddata(x,y,z,xi,yi','nearest');
zi = zi4
zi(isnan(zi4)) = zi2(isnan(zi4))
%啥啥立方差值混合的