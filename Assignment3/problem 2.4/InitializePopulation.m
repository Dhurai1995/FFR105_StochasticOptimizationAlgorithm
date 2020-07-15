function population = InitializePopulation(populationSize,minChromosomeLength,maxChromosomeLength,numberOfOperators,numberOfRegistor,numberOfOperands);

population = [];
for i = 1:populationSize
    chromosomeLength = minChromosomeLength + fix(rand*(maxChromosomeLength-minChromosomeLength+1));
    for j = 1:4:chromosomeLength
        chromosomeLength(j)=1+fix(rand*numberOfOperators);
        chromosomeLength(j+1)=1+fix(rand*numberOfRegistor);
        chromosomeLength(j+2)=1+fix(rand*numberOfOperands);
        chromosomeLength(j+3)=1+fix(rand*numberOfOperands);
    end
        tmpIndividual = struct('Chromosome',chromosomeLength);
        population = [population tmpIndividual];
end
end
