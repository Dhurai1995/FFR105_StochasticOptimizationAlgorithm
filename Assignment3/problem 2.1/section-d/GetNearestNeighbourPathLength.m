function pathLength = GetNearestNeighbourPathLength(cityLocation)

numberOfCity = size(cityLocation,1);
firstCity=1+fix(rand*numberOfCity);
currentCity =firstCity;
cityList = setdiff(1:numberOfCity,currentCity);
pathLength=0;
temporaryCityList= cityList;

for iCurrentCity = 1: (size(cityList,2)-1)
    
    for iNextCity = 1:size(temporaryCityList,2)
        distance(iNextCity) = norm(cityLocation(currentCity,:) - cityLocation(temporaryCityList(iNextCity),:));
    end
    [minimumDistance,iCity]=min(distance);
    distance =[];
    nearestCity = temporaryCityList(iCity);
    pathLength =pathLength+minimumDistance;
    temporaryCityList(temporaryCityList==nearestCity)=[];
end

pathLength = pathLength + norm(cityLocation(currentCity,:) - cityLocation(firstCity,:));
end