function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)

numberOfNode = size(pheromoneLevel,1);
newNode = 1+fix(rand*numberOfNode);
path = newNode;
tabuList = path;

for iNode = 2:numberOfNode
    newNode =  GetNode(tabuList,pheromoneLevel, visibility, alpha, beta);
    path(iNode) = newNode;
    tabuList(iNode) = newNode;
end

end
