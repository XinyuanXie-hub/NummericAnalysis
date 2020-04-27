% 输入n是偶数
function int=ComSimpson(a,b,f,n,option)
h=(b-a)/(2*n);
x=a:h:b;
sum=0;%储存结果
if(option=='s')
    for i=1:n
        sum=sum+Simpson(x(2*i-1),x(2*i+1),f);
    end
    int=sum;
end
% Simpson
function int=Simpson(a,b,f)
h=(b-a)/2;
x=a:h:b;
int=h*(f(x(1))+4*f(x(2))+f(x(3)))/3;
%  Trap
function int=Trap(a,b,f)
h=b-a;
int=h*(f(a)+f(b))/2;