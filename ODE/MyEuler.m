%input:initial t0,y0;step h;function @(t,y)f(t,y);loop count n
%example MyEuler(0,0.5,0.2,@(t,y)y-t^2+1,10)

function MyEuler(t0,y0,h,f,n)
for i=1:n
y0=y0+h*f(t0,y0)
t0=t0+h;
end



    