function fitness = EvaluateIndividual(x,cityLocation)
numberOfCity = size(x,2);
Distance = norm(cityLocation(x(1),:) - cityLocation(x(numberOfCity),:));
for i = 1:(numberOfCity-1)
    cityOne = x(i);
    cityTwo = x(i+1);
    Distance = Distance + norm(cityLocation(cityOne,:) - cityLocation(cityTwo,:));
end
fitness = 1/Distance;

end