x=sym('x',[1,n]);
y = 0;
amount = sum(cos(x));
for i = 1 : n
    syms(['x',num2str(i)])
end
for i=1:n/2
    y = y + 100*(x(2*i)-(x(2*i-1))^2)^2 + (1-x(2*i-1))^2;
end
% for i=1:n
%       y = y + (n - amount + i*(1 - cos(x(i)) - sin(x(i))))^2;
% end
% ezsurf(y);