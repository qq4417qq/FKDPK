% function gf=gfun(x0)
% n = length(x0);
% gf = zeros(n,1);
% % for i = 1 : n
% %     syms(['x',num2str(i)])
% % end
% s=sym('x',[1,n]);
% s2 = 0;
% amount = sum(cos(s));
% for i=1:n
%       s2 = s2 + (n - amount + i*(1 - cos(s(i)) - sin(s(i))))^2;
%  end
%  f = s2;
%  for i = 1 : n
%     eval(['x',num2str(i),'=','x0(i)',';'])%使用eval给x1，x2.....xn赋值
%  end
%  for i=1:n
%      gf(i,1)=eval(diff(f,s(i)));%分别对f求x1，x2......xn的偏导
%  end
%使用符号变量的方法

%   function gf=gfun(x)
%   % gf为梯度计算的结果
%   % x为自变量值
%   episilon = 1e-12;
%   n = length(x);
%   gf = zeros(n,1);
%   for i = 1:n
%       y = x;
%       y(i) = y(i) + episilon;
%       gf(i,1) = (fun(y) - fun(x))/episilon;
%   end

function gf=gfun(x)
  % gf为目标函数句柄
  % x为自变量值
  n = length(x);
  gf = zeros(n,1);
  amount = sum(cos(x));
  for j = 1:n
     for k = 1:n
         if(k~=j)
            gf(j,1) = gf(j,1)+2*sin(x(j))*(n-amount+k*(1-cos(x(k))-sin(x(k))));%当k ！= j时
         else
            gf(j,1) = gf(j,1)+2*((j+1)*sin(x(j))-j*cos(x(j)))*(n-amount+j*(1-cos(x(j)))-j*sin(x(j)));%当k = j时
         end
     end
  end
  %公式法

%   function gf=gfun(x)
%   % gf为梯度计算的结果
%   % x为自变量值
%   n = length(x);
%   gf = zeros(n,1);
%   for i = 1:n
%       gf(i,1) = 2*sin(x(i))*cos(x(i));
%   end
%投机取巧求梯度范数达到精确值的方法

% function gf=gfun(x0)
% n = length(x0);
% gf = zeros(n,1);
% % for i = 1 : n
% %     syms(['x',num2str(i)])
% % end
% s=sym('x',[1,n]);
% s2 = 0;
% amount = sum(cos(s));
% for i=1:n
%       s2 = s2 + (n - amount + i*(1 - cos(s(i)) - sin(s(i))))^2;
%  end
%  f = s2;
% for i=1:n
% 
% syms(['d',num2str(i)]);
% 
% end
% e=sym('d',[1,n]);  
%  for i=1:n
%      e(i)=diff(f,s(i));%分别对f求x1，x2......xn的偏导
%  end
%求导程序


% function gf=gfun(x)
%   % f为目标函数句柄
%   % x为自变量值
%   n = length(x);
%   gf = zeros(n,1);
%   y1 = 0;
%   for i = 1:n
%       y1 = y1 + cos(x(i));
%   end
%   for j = 1:n
%      for k = 1:n
%          if(k~=j)
%          gf(j,1) = gf(j,1)+2*sin(x(j))*(n-y1+k*(1-cos( x(k) )-sin(x(k)) ));
%          else
%          gf(j,1) = gf(j,1)+2*( (j+1)*sin(x(j))-j*cos(x(j)))*(n-y1+j*(1-cos(x(j)))-j*sin(x(j)));
%          end
%      end
%   end
 %%新的求导