% input:n�ǵ���������������T�ı��ʽ����

function MyTaylor(t0,y0,h,f,n)
for i=1:n
    y0=y0+h*f(t0,y0,h)
    t0=t0+h;
end
