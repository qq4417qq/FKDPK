function f=Rosenbrockfun(s)
global js;
n = length(s)/2;
s2 = 0;
for i=1:n
    s2 = s2 + 100*(s(2*i)-(s(2*i-1))^2)^2 + (1-s(2*i-1))^2;
end
js = js + 1;%计算函数的计算次数
f = s2;
