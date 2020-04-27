f=@(x)log(x);
x=1.8;h=[0.1,0.01,0.001];
result=result(4,3);
result{1,1}='n';result{1,2}='h';result{1,3}='diff';
for i=1:3
    diff=(f(x+h(i))-f(x))/h(i);
    result{i+1,1}=i;result{i+1,2}=h(i);result{i+1,3}=diff;
end
result