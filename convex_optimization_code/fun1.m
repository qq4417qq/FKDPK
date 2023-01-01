% x = ones(1001000,1)*0.2;
% f = 0;
% i = 1;
% n=1001000;
% f1 = n - sum(x);
% while i <= 1001000
%      f = f + (f1 + i*(1-cos(x(i)))-sin(x(i)))^2;
%      i = i + 1;
% end

n = 100100;
x=sym('x',[1,n]);
for i=1:n

syms(['x',num2str(i)]);

end
syms i;
f = symsum(n-symsum(cos(x(i)),1,n)+(1-cos(x(i)))-sin(x(i)),i,1,n);

  

