clc,clear
a = [
    0.8 0.9 0.99 0.92 0.87 0.95
    326 295 340 287 310 303
    21 38 25 19 27 10
    3.2 2.4 2.2 2.0 0.9 1.7
    0.2 0.25 0.12 0.33 0.2 0.09
    0.15 0.2 0.14 0.09 0.15 0.17
    250 180 300 200 150 175
    0.23 0.15 0.27 0.30 0.18 0.26
    0.87 0.95 0.99 0.89 0.82 0.94
    ]
for i = [1 5:9]
    a(i,:) = (a(i,:)-min(a(i,:)))/(max(a(i,:))-min(a(i,:)));
end
for i =2:4
    a(i,:) = (max(a(i,:))-a(i,:))/(max(a(i,:))-min(a(i,:)));
end
[m,n] = size(a);
cankao = max(a')' %��ο����е�ȡֵ
t = repmat(cankao,[1,n])-a%��ο�������ÿ�����еĲ��
mmin = min(min(t));
mmax = max(max(t));
rho = 0.5;%f�ֱ�ϵ��
xishu = (mmin+rho*mmax)./(t+rho*mmax)%�����ɫ����ϵ��
guanliandu = mean(xishu) %ȡ��Ȩ�أ����������
[gsort,ind] = sort(guanliandu,'descend')%�Թ����ȴӴ��С����

