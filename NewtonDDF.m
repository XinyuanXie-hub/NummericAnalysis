%输入:自变量向量X，观测值向量Y，待测点自变量值x，多项式次数n
%输出:差分系数（coefficient），基函数x点取值（base），估测值result
%测试数据 X=[1.0 1.3 1.6 1.9 2.2]
%         Y=[0.765197 0.6200860 0.4554022 0.2818186 0.1103623]
%         x=1.5，f(x=0.5118277)

%author：xxy
function result=NewtonDDF(X,Y,x,N)
coefficient=ones(1,N+1);
base=ones(1,N+1);
a=chashang(X,Y);
for i=1:N+1
    coefficient(i)=a(i,i+1);
end
base(2)=x-X(1);
for i=3:N+1
    base(i)=base(i-1)*(x-X(i-1));
end
coefficient,base
result= coefficient*base';
end
function juzhen=chashang(x,y)%返回差商矩阵

if(length(x)==length(y))
n=length(x);
end
juzhen=ones(n,n+1);
juzhen(:,1)=x';
juzhen(:,2)=y';
for i=3:n+1
    for j=i-1:n
        juzhen(j,i)=(juzhen(j,i-1)-juzhen(j-1,i-1))/(juzhen(j,1)-juzhen(j-i+2,1));
    end
end
end



