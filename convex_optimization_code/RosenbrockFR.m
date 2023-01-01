clc,clear
tStart = cputime;%记录开始时间
global js;
js = 0;
n = 1000;
episilon = 1e-5;
x = [];
x0 = [-12,10];
for i = 1: n/2
    x = [x x0];
end
x = x';
S = zeros(n,n);
s = zeros(n,1);
X = zeros(n,n);
Grad = zeros(n,n);
X(:,1) = x;
k = 1;
f = @Rosenbrockfun;
Grad(:,1) = Rosenbrockgfun(X(:,1));%k = 0时,计算目标函数的梯度
S(:,1) = -Grad(:,1);%相当于k = 0时,取d为负的梯度
gd = 0;
while 1
    s(k) = Rosenbrockarmijo(X(:,k),S(:,k));%用armijo非精确线性搜索的方法来确定步长
    X(:,k+1) = X(:,k) + s(k)*S(:,k);%计算出新的x
    Grad(:,k+1) = Rosenbrockgfun(X(:,k+1));%计算出第k步的梯度
    if norm(Grad(:,k+1)) <= episilon%判断是否满足精度
        BestPoint = X(:,k+1);%记录下最小值点
        BestValue = f(X(:,k+1));%记录下最小值
        break
    else
        Bata = (norm(Grad(:,k+1))/norm(Grad(:,k)))^2;%用FR计算出Bata值
        S(:,k+1) = Bata.*S(:,k) - Grad(:,k+1);%计算新的d
        gd = Grad(:,k+1)'*S(:,k+1);
        if(gd>=0.0)
            S(:,k+1) = -Grad(:,k+1);%当d>0时，使用插值法
        end
    end
    k = k + 1;%记录迭代次数
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





