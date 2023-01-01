clc;clear;
%% 造初始数据
m=10;
n=4;
Sig=zeros(m,n);
 
for i=1:n
    S_tem=linspace(1,10*i,m)';
    Sig(:,i)=S_tem;
end
%% 利用for循环和eval函数来给多变量命名和赋值
for i=1:n
    eval(['S_',num2str(i),'=','Sig(:,i)',';']);
end