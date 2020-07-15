function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)
pheromoneLevel = repmat(tau0,numberOfCities,numberOfCities);
end