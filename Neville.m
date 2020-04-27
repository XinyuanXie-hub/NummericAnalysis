% Neville’s Iterated Interpolation
% 输入 自变量X 观测值Y 带估点x 误差TOL
% 输出 估计值y,估计矩阵Q

% author:xxy
function y=Neville(X,Y,x,TOL)
if(length(X)==length(Y))
    n=length(X);
end
Q=ones(n,n+1);
Q(:,1)=X';
Q(:,2)=Y';
for i=3:n+1
    for j=i-1:n
        fenzi=(x-Q(j,1))*Q(j-1,i-1)-(x-Q(j-i+2,1))*Q(j,i-1);
        fenmu=Q(j-i+2,1)-Q(j,1);
        Q(j,i)=fenzi/fenmu;
    end
end
Q
for j=2:n
    if(abs(Q(j,j+1)-Q(j-1,j))<TOL)
        y=Q(j,j+1);
        break;
    end
end
end

    