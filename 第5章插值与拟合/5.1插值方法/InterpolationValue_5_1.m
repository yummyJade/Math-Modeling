x0 = [0 3 5 7 9  11 12 13 14 15];
y0 = [0 1.2 1.7 2.0 2.1 2.0 1.8 1.2 1.0 1.6];
x = 0:0.1:15;
y1 = interp1(x0,y0,x);
y2 = interp1(x0,y0,x,'spline');
pp1 = csape(x0,y0);
y3 = fnval(pp1,x); %求插值点的函数值，调用fnval，参数是pp
pp2 = csape(x0,y0,'second');
y4 = fnval(pp2,x);
[x',y1',y2',y3',y4']
subplot(1,3,1);
plot(x0,y0,'+',x,y1);
title('spline2')
dx = diff(x);
dy = diff(y3);
dy_dx = dy./dx;
dy_dx0 = dy_dx(1)
ytemp = y3(131:151);
ymin = min(ytemp);
index = find(y3 == ymin);
xmin = x(index);
[xmin,ymin]
