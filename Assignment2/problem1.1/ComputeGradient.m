function [df] =ComputeGradient(x1,x2,mu)

if (x1^2+x2^2-1) > 0 %constraint unsatisfied
    df1=(2*x1-2)+4*mu*(x1^3+(x1*x2^2)-x1);
    df2=(4*x2-8)+4*mu*((x2*x1^2)+x2^3-x2);
else % constraint satisfied
    df1=(2*x1-2);
    df2=(4*x2-8);
end
df = [df1 df2];

end
