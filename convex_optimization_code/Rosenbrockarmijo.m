%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%用Armijo法求单变量函数在单峰区间[a,b]上的近似极小点
%作者：FKDPK
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function alpha = Rosenbrockarmijo(xk, dk)
%功能: Armijo法非精确线搜索
%输入: fun是目标函数, gfun是目标函数的梯度，a, b是搜索区间的两个端点
%      beta,sigma是已知参数
%输出: newxk, fk分别是近似极小点和极小值,
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beta = 0.3;    % beta取值范围为[0,1]
sigma = 0.4;   % sigma取值范围为[0,0.5]
m = 0;
mmax = 100; 
while (m<=mmax)
    if Rosenbrockfun(xk + beta^m*dk) <= Rosenbrockfun(xk) + sigma*beta^m*Rosenbrockgfun(xk)'*dk   % 条件1
        mk=m;   break;
    end
    m=m+1;
end
alpha=beta^mk;
