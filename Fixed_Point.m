%����MyFunctionִ�� 
%���룺����˵�a��b�Լ���������n
%���������n,������Pn

% Verison 1.0 Writer:xxy

function P=Fixed_Point(a,b,n)
P=ones(n,2);%װ�ڽ��
P(1,1)=0;
P(1,2)=(a+b)/2;% p0ȡֵ
for i=2:n
    P(i,1)=i;
    P(i,2)=MyFunction(P(i-1,2));
end
end
