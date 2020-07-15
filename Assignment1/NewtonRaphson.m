function [xJ] = NewtonRaphson(coefficient,xO,tolerance)
condition=true;
i=2;
xJ(1) = xO;

while condition
    fdot = PolynomialDifferentiation (coefficient,1);
    fddot = PolynomialDifferentiation (coefficient,2);
    fdotValue = Polynomial(xO,fdot);
    fddotValue = Polynomial(xO,fddot);
    xJ(i) = NewtonRaphsonStep(xO,fdotValue,fddotValue);
    error = abs(xJ(i)-xO);
    if tolerance > error
        condition =false;
    else
        xO =xJ(i);
        i=i+1;
    end
    
end

    