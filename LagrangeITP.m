%�������ղ�ֵ�㷨
%���� �Ա�������X �۲�ֵ���� Y Ԥ���x Ԥ�⺯��f����tΪ�Ա�������
%��� ���Ԥ��ֵy���������Error
%�������� X=[1.0 1.3 1.6 1.9 2.2]
%         Y=[0.765197 0.6200860 0.4554022 0.2818186 0.1103623]
%         x=1.5��f(x=0.5118277)

%author xxy

function [Error,y]=LagrangeITP(X,Y,x,f)
n=length(X);
base=ones(1,n);
X0=ones(1,n-1)*x;
for i=1:n
    X1=X;
    X1(i)=[];
    Xk=ones(1,n-1)*X(i);
    fenzi=prod(X0-X1);
    fenmu=prod(Xk-X1);
    base(i)=fenzi/fenmu;
end
%base
y=base*Y'
syms t
%f=-abs(diff(f,n))
%diffmin=fminbnd(@(t)f,min(X),max(X))

diffmax=max(subs(abs(diff(f,n)),t,(min(X):0.001:max(X))));
Error=diffmax*prod(ones(1,n)*x-X)/factorial(n);

end


    
    

