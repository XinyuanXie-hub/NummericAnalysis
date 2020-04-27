% INPUT initial approximation p0; tolerance TOL; maximum number of iterations N0
% OUTPUT approximate solution p or message of failure

% version 1.1
function MyFixedPoint(p0,TOL)
N0=100;
P=[0,p0]
for i=1:N0
    P0=P(2);
    P=[i,MyFunction(P0)]
    if(abs(P0-P(2))<TOL)
        break;
    end
end
end
    