function [coefficientOut] = PolynomialDifferentiation (coefficientIn,order)

if length(coefficientIn)>2
    for j = 1:order
        for i = 2:length(coefficientIn)
            temperory(i) = coefficientIn(i) * (i-1);
        end
        temperory(1) = [];
        coefficientIn=temperory;
    end
    coefficientOut =temperory;
else
    disp("Please enter coefficients of more than two")
    coefficientIn=[];
end


