function f=fun(s)
global js;
n = length(s);%计算n的大小
amount = sum(cos(s));
s2 = 0;
for i=1:n
    s2 = s2 + (n - amount + i*(1 - cos(s(i)) - sin(s(i))))^2;%Extented Trigonometric function
end
js = js + 1;%计算函数的计算次数
f = s2;



 



