%����MyFunctionִ�� 
%���룺����˵�a��b�Լ���������n
%���������n,������˵�a�������Ҷ˵�b�������е�p���е㺯��ֵf (pn)�������error

% Verison 1.0 Writer:xxy
function result=Bisection(a,b,n)
%n=ceil(log((b-a)/eps)/log(2))%epsΪ�����
result=ones(n,5);
if(MyFunction(a)==0||MyFunction(b)==0)
    result='�˵㺬���';
elseif(sign(MyFunction(a)*MyFunction(b))~=-1)
    result='�˵�ͬ��';
else
    for i=1:n
        %����
        p=(a+b)/2;
        y1=MyFunction(p);
        y2=MyFunction(a);
        y3=MyFunction(b);
        % ��ʾ���
        result(i,1)=i;
        result(i,2)=a;
        result(i,3)=b;
        result(i,4)=p;
        result(i,5)=(b-a)/2^n;
        %������һ������
        if(y1==0)
            break;
        elseif(sign(y1)==sign(y2))
            a=p;
        elseif(sign(y1)==sign(y3))
            b=p;
        end
    end
end
end


