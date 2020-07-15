a=0.01;
xmin= -5;
xmax =5;

x1 = xmin:0.1:xmax;
x2 = xmin:0.1:xmax;



totalNumber =size(x1,2);
for i = 1:totalNumber
    for j = 1:totalNumber
        functionValue = evaluateFunction([x1(i),x2(j)]);
        logValue(i,j) = log(a+functionValue);
    end
end
contour(x1,x2,logValue);