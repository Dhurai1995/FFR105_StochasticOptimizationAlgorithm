function mutatedChromosome = Mutate(originalChromosome, mutationProbability)
    nGenes = size(originalChromosome,2);
    mutatedChromosome = originalChromosome;    
    for j = 1:nGenes
        r = rand;
        if (r < mutationProbability)
            iRandom = 1 + fix(rand*nGenes);
            [mutatedChromosome(iRandom), mutatedChromosome(j)] = deal(mutatedChromosome(j),mutatedChromosome(iRandom));
        end
    end
    
end