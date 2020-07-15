function [newChromosomePair1,newChromosomePair2]  = Cross(chromosome1,chromosome2)
nChromosome1 = size(chromosome1,2);
nChromosome2 = size(chromosome2,2);

temporaryIndex1 = 1+ fix(rand*nChromosome1);
temporaryIndex2 = 1+ fix(rand*nChromosome1);
temporaryIndex3 = 1+ fix(rand*nChromosome2);
temporaryIndex4 = 1+ fix(rand*nChromosome2);

startingPoint1 = min(temporaryIndex1,temporaryIndex2);
endPoint1 = max(temporaryIndex1,temporaryIndex2);
startingPoint2 = min(temporaryIndex3,temporaryIndex4);
endPoint2 = max(temporaryIndex3,temporaryIndex4);

swapChromosome1 = chromosome1(startingPoint1:endPoint1);
swapChromosome2 = chromosome2(startingPoint2:endPoint2);

newChromosomePair1 = [chromosome1(1:startingPoint1-1),swapChromosome2,chromosome1(endPoint1+1:end)];
newChromosomePair2 = [chromosome2(1:startingPoint2-1),swapChromosome1,chromosome2(endPoint2+1:end)];
end