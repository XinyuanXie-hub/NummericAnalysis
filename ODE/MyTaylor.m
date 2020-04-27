% input:n是迭代次数，阶数由T的表达式决定

function MyTaylor(t0,y0,h,f,n)
for i=1:n
    y0=y0+h*f(t0,y0,h)
    t0=t0+h;
end
