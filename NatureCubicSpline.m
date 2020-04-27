%% nature cubic spline(equal distance)
%% parameters

h=0.25;
x=0:h:1;
n=length(x);
a=cos(pi*x)';
%% calculate Ac=B

B=zeros(n,1);
A=zeros(n,n);
A(1,1)=1;A(n,n)=1;
for i=2:n-1
    B(i)=3*(a(i+1)-2*a(i)+a(i-1))/h;
    A(i,i-1)=h;A(i,i)=4*h;A(i,i+1)=h;
end
c=A^-1*B;
d=ones(n-1,1);% 
b=ones(n-1,1);
for i=1:n-1
   d(i)=(c(i+1)-c(i))/(3*h);
   b(i)=(a(i+1)-a(i))/h-(2*c(i)+c(i+1))*h/3;
end
%% Produce Function
F=cell(n-1,1);
for i=1:n-1
    a_i=['@(x)',num2str(a(i)),'+'];
    b_i=[num2str(b(i)),'*','(x-',num2str(x(i)),')','+'];
    c_i=[num2str(c(i)),'*','(x-',num2str(x(i)),').^2','+'];
    d_i=[num2str(d(i)),'*','(x-',num2str(x(i)),').^3'];
    str=[a_i,b_i,c_i,d_i];
    F{i}=str2func(str);
end
F
%% plot
h2=0.01;
for i=1:n-1
    plot(x(i):h2:x(i+1),F{i}(x(i):h2:x(i+1))),
    hold on
end
h3=0.01;
plot(x(1):h3:x(n),cos(pi*(x(1):h3:x(n))))
title('nature cubic spline')
%% integral
inte_gral=[n-1,1];
for i=1:n-1
    inte_gral(i)=integral(F{i},x(i),x(i+1));
end
sum(inte_gral)

    


