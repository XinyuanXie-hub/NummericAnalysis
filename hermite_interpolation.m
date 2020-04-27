function hermite_interpolation(X,Y,DY)
if(length(X)==length(Y))
    n=length(X);
end
Q=ones(2*n,2*n+1);
for i=1:n
    Q(2*i-1,1)=X(i);
    Q(2*i,1)=X(i);
    Q(2*i-1,2)=Y(i);
    Q(2*i,2)=Y(i);
end

for j=3:n+1
    if(j==3)
        for i=1:n-1
            Q(2*i,j)=DY(i)
        end
    end
end





