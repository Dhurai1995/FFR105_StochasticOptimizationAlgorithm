function bestSwarm = calculateBestSwarm(position)
swarmSize =size(position,1);
for iTemporary=1:swarmSize
value(iTemporary) = evaluateFunction(position(iTemporary,:));
end
[~,I] = min(value);
bestSwarm = position(I,:);
end

