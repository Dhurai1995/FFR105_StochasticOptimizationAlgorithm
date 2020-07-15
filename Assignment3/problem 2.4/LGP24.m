clear all
clc

populationSize = 500;
mutationProbability = 0.025;
tournamentSelectionParameter = 0.75;
variableRange = [0 20 0 20];
numberOfGenerations = 3000;
minChromosomeLength = 40;
maxChromosomeLength = 120;
numberOfOperators = 4;
numberOfRegistor = 3;
c = [1 10 2];
numberOfOperands = size(c,1)+numberOfRegistor;
functionData = LoadFunctionData;
cMax = 100000;
crossoverProbability = 0.8;
nCopies=3;

population = InitializePopulation(populationSize,minChromosomeLength,maxChromosomeLength,numberOfOperators,numberOfRegistor,numberOfOperands);

 for iGeneration = 1:numberOfGenerations
    maximumFitness = 0.0;
    bestIndividualIndex = 0;
    for i = 1:populationSize
        chromosome = population(i).Chromosome;
        fitness(i) = EvaluateIndividual(chromosome,functionData,numberOfRegistor,c,cMax);
        if (fitness(i) > maximumFitness)
            maximumFitness = fitness(i);
            bestIndividualIndex = i;
            bestChromosome = chromosome;
        end
    end
    
    tempPopulation = population;

    
    for i = 1:2:populationSize
        i1 = TournamentSelect(fitness,tournamentSelectionParameter);
        i2 = TournamentSelect(fitness,tournamentSelectionParameter);
        chromosome1 = population(i1).Chromosome;
        chromosome2 = population(i2).Chromosome;
        
        r = rand;
        if (r < crossoverProbability)
            [newChromosomePair1,newChromosomePair2] = Cross(chromosome1,chromosome2);
            tempPopulation(i,:) = struct('Chromosome',newChromosomePair1);
            tempPopulation(i+1,:) = struct('Chromosome',newChromosomePair2);
        else
            tempPopulation(i).Chromosome = chromosome1;
            tempPopulation(i+1).Chromosome = chromosome2;
        end
    end
    
    for i = 1:populationSize
        originalChromosome = tempPopulation(i);
        mutatedChromosome = Mutate(chromosome,mutationProbability,numberOfOperators,numberOfRegistor,numberOfOperands);
        tempPopulation(i) = struct('Chromosome',mutatedChromosome);
    end
    bestIndividual = population(bestIndividualIndex);
    modPopulation = InsertBestIndividual(tempPopulation,bestIndividual,nCopies);
    
    population = modPopulation;
 end
 
 
disp('Best fitness');
disp(maximumFitness);
disp('Best Chromosome');
disp(population(1,:));