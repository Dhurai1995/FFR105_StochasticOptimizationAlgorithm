clear all
clc
polynomialCoefficients = [10 -2 -1 1];
startingPoint = 2;
tolerance = 0.0001;
iterationValues = NewtonRaphson(polynomialCoefficients, startingPoint, tolerance);
PlotIterations(polynomialCoefficients,iterationValues);
