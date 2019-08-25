%速度曲线
clc,clear
x0 = 0.15:0.01:0.18;
y0 = [3.5 1.5 2.5 2.8];
pp = csape(x0,y0)

format long g
xishu = pp.coefs
s = quadl(@(t)ppval(pp,t),0.15,0.18) %求积分
format%恢复短小数显示格式