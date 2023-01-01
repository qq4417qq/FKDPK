%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%用Armijo法求单变量函数在单峰区间[a,b]上的近似极小点
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function alpha = armijo(xk, dk)
%功能: Armijo法非精确线搜索
%输入: fun是目标函数, gfun是目标函数的梯度，a, b是搜索区间的两个端点
%      beta,sigma是已知参数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beta = 0.3;    % beta取值范围为[0,1]
sigma = 0.4;   % sigma取值范围为[0,0.5]
m = 0; 
mmax = inf;
while (m<=mmax)
    if fun(xk + beta^m*dk) <= fun(xk) + sigma*beta^m*gfun(xk)'*dk   % 条件1
        mk=m;   break;
    end
    m=m+1;
end
alpha=beta^mk;

