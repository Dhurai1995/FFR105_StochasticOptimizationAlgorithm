function mutatedChromosome = Mutate(chromosome,mutationProbability,numberOfOperators,numberOfRegistor,numberOfOperands)

nGenes = size(chromosome,2);
mutatedChromosome = chromosome;
for j = 1:nGenes
    r = rand;
    index =mod(j,4);
    if (r < mutationProbability)
        if index == 1
            mutatedChromosome(j) = 1+fix(rand*numberOfOperators);
        elseif index == 2
            mutatedChromosome(j) = 1+fix(rand*numberOfRegistor);
        else
            mutatedChromosome(j) = 1+fix(rand*numberOfOperands);
        end
    end
end
end
