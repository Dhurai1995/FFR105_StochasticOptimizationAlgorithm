function [xJ] = NewtonRaphsonStep(xO, fdotValue,fddotValue)
xJ = xO -(fdotValue/fddotValue);
end