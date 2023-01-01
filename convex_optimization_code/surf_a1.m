x = ones(1001000,1)*0.2;
f = 0;
i = 1;
n=1001000;
f1 = n - sum(x);
while i <= 1001000
     f = f + (f1 + i*(1-cos(x(i)))-sin(x(i)))^2;
     i = i + 1;
end
%f1 = symfun(a);
%a = x(1);
%f = symsum(x(i),i,1,5);
%f = symsum(n-symsum(cos(x(i)),i,1,n)+i*(1-cos(x(i))-sin(x(i)))^2,i,1,n);
%f = symsum(n-symsum(cos(x),1,n)+(1-cos(x))-sin(x),1,n);

  

