%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%作者：FKDPK
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc,clear
tStart = cputime;
global js;
js = 0;
episilon = 1e-5;
x0 = ones(1000,1)*2;
n = length(x0);
x = x0;
k = 0;
f = @fun;
while 1
    Gradient = gfun(x);
    S = -Gradient;%采用梯度法
    if norm(Gradient) <= episilon%计算函数的范数是否满足设定好的精度
        BestPoint = x;
        BestValue = fun(x);
        break
    else
        s = armijo(x,S);%使用armijo非精确线性搜索
        x = x + s*S;
    end
    k = k + 1;%记录下迭代的次数
end
tEnd = cputime - tStart;%记录下cpu时间
disp('迭代次数:k=');    
disp(k);
disp('CPU时间:tEnd=');
disp(tEnd);
disp('函数值计算次数:js=');
disp(js);
disp('最后的函数值:BestValue');
disp(BestValue);
