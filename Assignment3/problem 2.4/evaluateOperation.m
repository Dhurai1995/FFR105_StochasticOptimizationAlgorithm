function yDash = evaluateOperation(chromosome,registerValue,cMax)

chromosomeSize=size(chromosome,2);
for i=1:4:chromosomeSize
    operation = chromosome(i);
    destinationRegistor = chromosome(i+1);
    operand1 = registerValue(chromosome(i+2));
    operand2 = registerValue(chromosome(i+3));
    
    switch operation
        
        case 1
            registerValue(destinationRegistor) =operand1+operand2;
        case 2
                        registerValue(destinationRegistor) =operand1-operand2;
        case 3
                        registerValue(destinationRegistor) =operand1*operand2;
        case 4
            if operand2 ==0 
                 registerValue(destinationRegistor) = cMax;
            else
                registerValue(destinationRegistor)=operand1/operand2;
            end
    end
end
yDash = registerValue(1);
end
