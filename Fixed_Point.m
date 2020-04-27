%按找MyFunction执行 
%输入：区间端点a、b以及迭代次数n
%输出：次数n,不动点Pn

% Verison 1.0 Writer:xxy

function P=Fixed_Point(a,b,n)
P=ones(n,2);%装在结果
P(1,1)=0;
P(1,2)=(a+b)/2;% p0取值
for i=2:n
    P(i,1)=i;
    P(i,2)=MyFunction(P(i-1,2));
end
end
