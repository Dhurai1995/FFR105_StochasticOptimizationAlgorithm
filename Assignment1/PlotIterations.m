function flipCoefficient = PlotIterations(coefficeint,xJ)

    flipCoefficient = fliplr(coefficeint);
    xRange =xJ(end)-0.1:0.1:xJ(1)+0.1;
    yRange = polyval(flipCoefficient, xRange);
    yRangeJ = polyval(flipCoefficient, xJ);
    plot(xRange,yRange)
    xlabel(" Value of X")
    ylabel(" Value of f(x)")
    hold on
    scatter(xJ,yRangeJ)
    

end