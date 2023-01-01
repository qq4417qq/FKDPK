clc,clear
tStart = cputime;%记录开始时间
global js;
js = 0;%记录下函数值计算的次数
n = 1000000;
episilon = 1e-5;
x = [];
x0 = [-12,10];
for i = 1: n/2
    x = [x x0];
end
x = x';
k = 0;
f = @Rosenbrockfun;
while 1
    Gradient = Rosenbrockgfun(x);
    S = -Gradient;%采用最速下降法
    if norm(Gradient) <= episilon%计算函数的范数是否满足设定好的精度
        BestPoint = x;
        BestValue = Rosenbrockfun(x);
        break
    else
        s = Rosenbrockarmijo(x,S);%使用armijo非精确线性搜索
        x = x + s*S;
    end
    k = k + 1;%记录下迭代的次数
end
tEnd = cputime - tStart;%记录运行时间
disp('迭代次数:k=');    
disp(k);
disp('CPU时间:tEnd=');
disp(tEnd);
disp('函数值计算次数:js=');
disp(js);
disp('最后的函数值:BestValue');
disp(BestValue);