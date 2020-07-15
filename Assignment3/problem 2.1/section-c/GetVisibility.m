function visibility = GetVisibility(cityLocation)

numberOfCities = size(cityLocation,1);
nbAnts = numberOfCities;
for i = 1:nbAnts
    for j = 1:numberOfCities
          visibility(i,j) = 1/norm(cityLocation(i,:)-cityLocation(j,:));
          if visibility(i,j) == inf
              visibility(i,j)=0;
          end
    end
end
end
