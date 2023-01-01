clc,clear
tStart = cputime;%记录开始时间
global js;
js = 0;%记录函数计算的次数
episilon = 1e-5;%计算精度设置
x0 = ones(1000,1)*0.2;
n = length(x0);
S = zeros(n,n);
s = zeros(n,1);
X = zeros(n,n);
Grad = zeros(n,n);
X(:,1) = x0;
k = 1;
f = @fun;
Grad(:,1) = gfun(X(:,1));%k = 0时,计算目标函数的梯度
S(:,1) = -Grad(:,1);%相当于k = 0时,取d为负的梯度
while 1
    s(k) = armijo(X(:,k),S(:,k));%用armijo非精确线性搜索的方法来确定步长
    X(:,k+1) = X(:,k) + s(k)*S(:,k);%计算出新的x
    Grad(:,k+1) = gfun(X(:,k+1));%计算出第k步的梯度
    if norm(Grad(:,k+1)) <= episilon%判断是否满足精度
        BestPoint = X(:,k+1);%记录下最小值点
        BestValue = f(X(:,k+1));%记录下最小值
        break
    else
        Bata = (norm(Grad(:,k+1))/norm(Grad(:,k)))^2;%用FR计算出Bata值
        S(:,k+1) = Bata.*S(:,k) - Grad(:,k+1);%计算新的d
        gd = Grad(:,k+1)'*S(:,k+1);%用来判断d是否为下降的方向
        if(gd>=0.0)
            S(:,k+1) = -Grad(:,k+1);%如果d不下降就使用插值法，取d为负的梯度方向
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



