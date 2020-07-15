function newNode =  GetNode(tabuList,pheromoneLevel, visibility, alpha, beta)

numberOfNode = size(pheromoneLevel,1);
currentNode=tabuList(end);

for iNode = 1:numberOfNode
    if ismember(iNode,tabuList)
        numerator(iNode) = 0;
    else
        numerator(iNode) = pheromoneLevel(iNode,currentNode)^alpha *  visibility(iNode,currentNode)^beta;
    end
end
probability = numerator/sum(numerator);
cumulatedNodeProbabilities = cumsum(probability);
r = rand;
tempNode = 1;
newNode = 0;
while newNode == 0
    if cumulatedNodeProbabilities(tempNode)>=r
        newNode = tempNode;
    end
    tempNode = tempNode+1;
    if tempNode>numberOfNode
        tempNode=numberOfNode;
    end
end
end
