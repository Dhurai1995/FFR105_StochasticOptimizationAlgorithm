function  deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)

numberOfAnts = size(pathCollection,1);
numberOfNodes = size(pathCollection,2);

deltaPheromoneLevel = zeros(numberOfNodes);

for i = 1:numberOfAnts
    for j = 1:numberOfNodes-1
        nodeOne = pathCollection(i,j);
        nodeTwo = pathCollection(i,j+1);
        deltaPheromoneLevel(nodeOne,nodeTwo) = deltaPheromoneLevel(nodeOne,nodeTwo) + 1/pathLengthCollection(i);
    end
    nodeOne = pathCollection(i,1);
    nodeTwo = pathCollection(i,numberOfNodes);
    deltaPheromoneLevel(nodeOne,nodeTwo) = deltaPheromoneLevel(nodeOne,nodeTwo) + 1/pathLengthCollection(i);
end
end
