function xMinimum = RunGradientDescent(startingPoints, mu, stepLength, threshold)

condition=true;
x1=startingPoints(1);
x2=startingPoints(2);

    while condition
        gradient = ComputeGradient(x1,x2,mu);
        x1 = x1 - (stepLength*gradient(1));
        x2 = x2 - (stepLength*gradient(2));
        normCheck = norm(gradient);
        if normCheck < threshold
            condition = false;
        end
    end
    xMinimum = [round(x1,3) round(x2,3)];
end
