function int=MyInt(a,b,f,option)
if(option=='s')
    int=Simpson(a,b,f);
end
if(option=='t')
        int=Trap(a,b,f);
end
if(option=='m')
    int=Mid(a,b,f);
end
    
% Simpson
function int=Simpson(a,b,f)
h=(b-a)/2;
x=a:h:b;
int=h*(f(x(1))+4*f(x(2))+f(x(3)))/3;
end
%  Trapezoidal
function int=Trap(a,b,f)
h=b-a;
int=h*(f(a)+f(b))/2;
end
% Midpoint(n=2)
function int=Mid(a,b,f)
h=(b-a)/4;
x=a:h:b;
int=4*h*(2*f(x(2))-f(x(3))+2*f(x(4)))/3;
end
end

