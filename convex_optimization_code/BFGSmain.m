clc,clear
tStart = cputime;%记录开始时间
global js;
js = 0;%记录函数计算的次数
episilon = 1e-5;
x0 = ones(1000,1)*2;%选取不同的n和x0的值
f = @fun;
x = x0;
n = length(x);
k = 1;
Bk = eye(n);
yk = 0;
while 1
    Gradient  = gfun(x);
    if norm(Gradient) <= episilon
        BestPoint = x;
        BestValue = fun(x);
        break
    else
        S = -Bk\Gradient;%解线性方程组
        s = armijo(x,S);%使用armijo非精确线性搜索
        x = x + s*S;%计算出新的x的值
        sk = s*S;%计算出sk的值
        yk = gfun(x) - Gradient;%计算出yk的值
        if(yk'*sk>0)%看是否满足yk'*sk>0的条件
            Bk = Bk- (Bk*sk*sk'*Bk)/(sk'*Bk*sk) + (yk*yk')/(yk'*sk);%BFGS修正公式
        else
            S = -gfun(x);
            x = x + s*S;%计算出新的x的值
        end
        
    end
    k = k + 1;
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