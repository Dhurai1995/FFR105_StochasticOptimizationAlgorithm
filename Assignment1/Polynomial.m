function fx = Polynomial(x, coefficient)

temperary = 0;
for i = 1:length(coefficient)
    fxTemperary(i) = coefficient(i) * x.^(i-1);
     temperary = temperary + fxTemperary(i);
end
fx = temperary;

end