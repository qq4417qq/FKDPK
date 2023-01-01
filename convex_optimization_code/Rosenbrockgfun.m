% function gf=Rosenbrockgfun(x)
%   % gf为目标函数句柄
%   % x为自变量值
%   episilon = 1e-15;
%   n = length(x);
%   gf = zeros(n,1);
%   for i = 1:n
%       y = x;
%       y(i) = y(i) + episilon;
%       gf(i,1) = (Rosenbrockfun(y) - Rosenbrockfun(x))/episilon;
%   end

% function gf=Rosenbrockgfun(x0)
% n = length(x0);
% gf = zeros(n,1);
% s=sym('x',[1,n]);
% s2 = 0;
% for i=1:n/2
%     s2 = s2 + 100*(s(2*i)-(s(2*i-1))^2)^2 + (1-s(2*i-1))^2;
% end
% f = s2;
% for i = 1 : n
%     eval(['x',num2str(i),'=','x0(i)',';'])%使用eval给x1，x2.....xn赋值
% end
% for i=1:n
%      gf(i,1)=eval(diff(f,s(i)));%分别对f求x1，x2......xn的偏导
% end
%%使用符号变量的方法

function gf=Rosenbrockgfun(x)
  % gf为目标函数句柄
  % x为自变量值
  n = length(x);
  gf = zeros(n,1);
  for i = 1:n/2
          gf(2*i-1,1) = 400*x(2*i-1)*((x(2*i-1))^2-x(2*i))+2*(x(2*i-1)-1);%求x(2i-1)的偏导
          gf(2*i,1) = 200*(x(2*i) - (x(2*i-1)^2));%求x(2i)的偏导
  end