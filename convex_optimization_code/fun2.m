
n = 2;
s=sym('x',[1,n]);
s1 = 0;s2 = 0;
for i=1:n
    for j = 1:n
        s1 = s1+cos(s(j));
    end
    s2 = s2 + (n - s1 + i*(1 - cos(s(i)) - sin(s(i))))^2;
end
y = s2;
e=sym('d',[1,n]);
for i=1:n
    e(i)=diff(y,s(i));
end
f1 = matlabFunction(e);
% result=f1(0.2,0.2);
% disp(result);

