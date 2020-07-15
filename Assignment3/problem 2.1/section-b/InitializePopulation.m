function population = InitializePopulation(populationSize, nCities)
for i = 1:populationSize
    population(i,:) = randperm(nCities);
end
end