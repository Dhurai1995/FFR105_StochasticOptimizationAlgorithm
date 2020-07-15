clear all
clc

populationSize = 4000;
mutationProbability = 0.025;
tournamentSelectionParameter = 0.75;
variableRange = [0 20 0 20];
numberOfGenerations = 4000;
cityLocation = LoadCityLocations();
nCities = size(cityLocation,1);

tspFigure = InitializeTspPlot(cityLocation,variableRange); 
connection = InitializeConnections(cityLocation);

population = InitializePopulation(populationSize, nCities);

 for iGeneration = 1:numberOfGenerations
    maximumFitness = 0.0;
    bestPath = zeros(1,2);
    bestIndividualIndex = 0;
    for i = 1:populationSize
        chromosome = population(i,:);
        fitness(i) = EvaluateIndividual(chromosome,cityLocation);
        if (fitness(i) > maximumFitness)
            maximumFitness = fitness(i);
            bestIndividualIndex = i;
            bestPath = chromosome;
            PlotPath(connection,cityLocation,chromosome);
            bestDistance = 1/maximumFitness;
            disp('bestLength');
            disp(1/maximumFitness);
        end
    end
    
    tempPopulation = population;

    
    for i = 1:populationSize
        iValue = TournamentSelect(fitness, tournamentSelectionParameter);
        tempPopulation(i,:) = population(iValue,:);
    end
    
    for i = 1:populationSize
        originalChromosome = tempPopulation(i,:);
        mutatedChromosome = Mutate(originalChromosome,mutationProbability);
        tempPopulation(i,:) = mutatedChromosome;
    end
    population = InsertBestIndividual(tempPopulation,population(bestIndividualIndex,:),3);

 end
 
disp('Best distance');
disp(1/maximumFitness);
disp('Best Chromosome');
disp(population(1,:));