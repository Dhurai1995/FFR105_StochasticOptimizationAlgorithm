function fitness = EvaluateIndividual(chromosome,functionData,numberOfRegistor,c,cMax)

nbDataPoints = size(functionData,2);
error=0;
for i = 1:nbDataPoints
    x=functionData(i,1);
    y=functionData(i,2);
    registerValue = [zeros(1,numberOfRegistor) , c];
    registerValue(1) = x;
    yDash(i) = evaluateOperation(chromosome,registerValue,cMax);
    error = error + (yDash(i)-y)^2;
end
totalError = sqrt(error/nbDataPoints);
fitness = 1/totalError;
end
