function bestSwarmPosition = calculateSwarmPosition(bestSwarmPosition,position)
swarmSize =size(position,1);
for iTemporary =1:swarmSize
    if evaluateFunction(position(iTemporary,:))<evaluateFunction(bestSwarmPosition)
        bestSwarmPosition(1,:)= position(iTemporary,:);
    end
end
end
