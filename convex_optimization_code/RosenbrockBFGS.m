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
yk = zeros(n,n);
sk = zeros(n,n);
Grad = zeros(n,n);
X(:,1) = x;
k = 1;
f = @Rosenbrockfun;
Bk = eye(n);%计算出第k=0步的Bk
while 1
    Grad(:,k) = Rosenbrockgfun(X(:,k));%计算出第k步的梯度
    if norm(Grad(:,k)) <= episilon%判断是否满足精度
        BestPoint = X(:,k);%记录下最小值点
        BestValue = f(X(:,k));%记录下最小值
        break
    else
        S(:,k) = -inv(Bk)*Grad(:,k);%-Bk\Grad(:,k);%解线性方程组算出d
        s(k) = Rosenbrockarmijo(X(:,k),S(:,k));%用armijo非精确线性搜索的方法来确定步长
        X(:,k+1) = X(:,k) + s(k)*S(:,k);%计算出新的x
        sk(:,k) = s(k)*S(:,k);%计算出sk的值
        yk(:,k) = Rosenbrockgfun(X(:,k)) - Grad(:,k);%计算出yk的值
        if(yk(:,k)'*sk(:,k)>0)%看是否满足yk'*sk>0的条件
            Bk = Bk- (Bk*sk(:,k)*sk(:,k)'*Bk)/(sk(:,k)'*Bk*sk(:,k)) + (yk(:,k)*yk(:,k)')/(yk(:,k)'*sk(:,k));%%BFGS修正公式
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




