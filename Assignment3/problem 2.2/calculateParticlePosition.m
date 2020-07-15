function bestParticlePosition = calculateParticlePosition(bestParticlePosition,position)
swarmSize =size(position,1);
for iTemporary =1:swarmSize
    if evaluateFunction(position(iTemporary,:))<evaluateFunction(bestParticlePosition(iTemporary,:))
        bestParticlePosition(iTemporary,:)= position(iTemporary,:);
    end
end
end
