%按找MyFunction执行 
%输入：区间端点a、b以及迭代次数n
%输出：次数n,区间左端点a，区间右端点b，区间中点p，中点函数值f (pn)，误差限error

% Verison 1.0 Writer:xxy
function result=Bisection(a,b,n)
%n=ceil(log((b-a)/eps)/log(2))%eps为误差限
result=ones(n,5);
if(MyFunction(a)==0||MyFunction(b)==0)
    result='端点含零点';
elseif(sign(MyFunction(a)*MyFunction(b))~=-1)
    result='端点同号';
else
    for i=1:n
        %计算
        p=(a+b)/2;
        y1=MyFunction(p);
        y2=MyFunction(a);
        y3=MyFunction(b);
        % 显示结果
        result(i,1)=i;
        result(i,2)=a;
        result(i,3)=b;
        result(i,4)=p;
        result(i,5)=(b-a)/2^n;
        %生成下一个区间
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


