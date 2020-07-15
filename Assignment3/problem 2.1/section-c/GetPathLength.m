function pathLength = GetPathLength(path,cityLocation)

numberOfNode = size(path,2);

pathLength  =  norm(cityLocation(path(1),:) - cityLocation(path(end),:));

for iTemporary =1:(numberOfNode-1)
    nodeOne = path(iTemporary);
    nodeTwo = path(iTemporary+1);
    pathLength = pathLength + norm(cityLocation(nodeOne,:) - cityLocation(nodeTwo,:));
end
end

