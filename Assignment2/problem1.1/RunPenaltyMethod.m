clear all
clc
stepLength = 0.0001;
threshold = 10^-6;
mu = [1 10 100 1000]';
startingPoints = [1 2];

for i =1:length(mu)
xMinimum(i,:) = RunGradientDescent(startingPoints,mu(i),stepLength,threshold) ;
end

x1 = xMinimum(:,1);
x2 = xMinimum(:,2);

tab = table(mu,x1,x2)
