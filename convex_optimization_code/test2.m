%目标函数
function f=test2(x)
f=100*(x(1)^2-x(2))^2+(x(1)-1)^2;

% function gf=gfun(x0)
n = length(x0);
gf = zeros(n,1);
% for i = 1 : n
%     syms(['x',num2str(i)])
% end
s=sym('x',[1,n]);
s2 = 0;
amount = sum(cos(s));
for i=1:n
      s2 = s2 + (n - amount + i*(1 - cos(s(i)) - sin(s(i))))^2;
 end
 f = s2;
for i=1:n

syms(['d',num2str(i)]);

end
e=sym('d',[1,n]);  
 for i=1:n
     e(i)=diff(f,s(i));%分别对f求x1，x2......xn的偏导
 end
%求导程序

8*sin(x1) - 4*cos(x1) - 6*cos(x1)*sin(x1) + 8*cos(x1)^2 - 4
[20*sin(x1) - 6*cos(x1) + 2*cos(x1)*cos(x2) - 8*cos(x1)*sin(x1) - 10*cos(x2)*sin(x1) - 4*sin(x1)*sin(x2) + 8*cos(x1)^2 - 4, 30*sin(x2) - 16*cos(x2) + 4*cos(x1)*cos(x2) - 10*cos(x1)*sin(x2) - 12*cos(x2)*sin(x2) - 2*sin(x1)*sin(x2) + 24*cos(x2)^2 - 12]
[38*sin(x1) - 8*cos(x1) - 5*sin(2*x1) + 2*cos(x1)*cos(x2) + 2*cos(x1)*cos(x3) - 12*cos(x2)*sin(x1) - 14*cos(x3)*sin(x1) - 4*sin(x1)*sin(x2) - 6*sin(x1)*sin(x3) + 8*cos(x1)^2 - 4, 50*sin(x2) - 20*cos(x2) - 7*sin(2*x2) + 4*cos(x1)*cos(x2) + 4*cos(x2)*cos(x3) - 12*cos(x1)*sin(x2) - 16*cos(x3)*sin(x2) - 2*sin(x1)*sin(x2) - 6*sin(x2)*sin(x3) + 24*cos(x2)^2 - 12, 66*sin(x3) - 36*cos(x3) - 9*sin(2*x3) + 6*cos(x1)*cos(x3) + 6*cos(x2)*cos(x3) - 14*cos(x1)*sin(x3) - 16*cos(x2)*sin(x3) - 2*sin(x1)*sin(x3) - 4*sin(x2)*sin(x3) + 48*cos(x3)^2 - 24]


4*cos(x1)^2 - 6*cos(x1)*sin(x1) - 4*cos(x1) - 4*sin(x1)^2 + 8*sin(x1)
[20*sin(x1) - 6*cos(x1) + 2*cos(x1)*cos(x2) - 8*cos(x1)*sin(x1) - 10*cos(x2)*sin(x1) - 4*sin(x1)*sin(x2) + 4*cos(x1)^2 - 4*sin(x1)^2, 30*sin(x2) - 16*cos(x2) + 4*cos(x1)*cos(x2) - 10*cos(x1)*sin(x2) - 12*cos(x2)*sin(x2) - 2*sin(x1)*sin(x2) + 12*cos(x2)^2 - 12*sin(x2)^2]
[38*sin(x1) - 8*cos(x1) + 2*cos(x1)*cos(x2) + 2*cos(x1)*cos(x3) - 10*cos(x1)*sin(x1) - 12*cos(x2)*sin(x1) - 14*cos(x3)*sin(x1) - 4*sin(x1)*sin(x2) - 6*sin(x1)*sin(x3) + 4*cos(x1)^2 - 4*sin(x1)^2, 50*sin(x2) - 20*cos(x2) + 4*cos(x1)*cos(x2) + 4*cos(x2)*cos(x3) - 12*cos(x1)*sin(x2) - 14*cos(x2)*sin(x2) - 16*cos(x3)*sin(x2) - 2*sin(x1)*sin(x2) - 6*sin(x2)*sin(x3) + 12*cos(x2)^2 - 12*sin(x2)^2, 66*sin(x3) - 36*cos(x3) + 6*cos(x1)*cos(x3) + 6*cos(x2)*cos(x3) - 14*cos(x1)*sin(x3) - 16*cos(x2)*sin(x3) - 18*cos(x3)*sin(x3) - 2*sin(x1)*sin(x3) - 4*sin(x2)*sin(x3) + 24*cos(x3)^2 - 24*sin(x3)^2]

2*(2*cos(x2) - 3*sin(x2))*(cos(x1) + 3*cos(x2) + cos(x3) + 2*sin(x2) - 5) - 2*sin(x2)*(2*cos(x1) + cos(x2) + cos(x3) + sin(x1) - 4) - 2*sin(x2)*(cos(x1) + cos(x2) + 4*cos(x3) + 3*sin(x3) - 6)

 2*(3*cos(x3) - 4*sin(x3))*(cos(x1) + cos(x2) + 4*cos(x3) + cos(x4) + 3*sin(x3) - 7) - 2*sin(x3)*(2*cos(x1) + cos(x2) + cos(x3) + cos(x4) + sin(x1) - 5) - 2*sin(x3)*(cos(x1) + 3*cos(x2) + cos(x3) + cos(x4) + 2*sin(x2) - 6) - 2*sin(x3)*(cos(x1) + cos(x2) + cos(x3) + 5*cos(x4) + 4*sin(x4) - 8)