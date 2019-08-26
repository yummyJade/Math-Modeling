clc,clear
a = [0.1 5 5000 4.7
    0.2 6 6000 5.6
    0.4 7 7000 6.7
    0.9 10 10000 2.3
    1.2 2 400 1.8
];
[m,n] = size(a);
x2 = @(qujian,lb,ub,x)(1-(qujian(1)-x)./(qujian(1)-lb)).*(x>=lb & x<qujian(1))+(x>=qujian(1)&x<=qujian(2))+(1-(x-qujian(2))./(ub-qujian(2))).*(x>qujian(2)&x<=ub);
qujian=[5,6];lb=2;ub=12;
a(:,2) = x2(qujian,lb,ub,a(:,2));%对属性2进行变化
for j = 1:n
    b(:,j) = a(:,j)/norm(a(:,j));%向量规划化
end
w = [0.2 0.3 0.4 0.1];
c = b.*repmat(w,m,1);%求加权矩阵
Cstar = max(c);%求正理想节
Cstar(4) = min(c(:,4))%属性4为成本形
c0 = min(c);%Q求负理想解
c04 = max(c(:,4))
for i = 1:m
    Sstar(i) = norm(c(i,:)-c0);
    s0(i) = norm(c(i,:)-c0);
end
Sstar,s0
f = s0./(Sstar+s0)
[sf,find] = sort(f,'descend')

