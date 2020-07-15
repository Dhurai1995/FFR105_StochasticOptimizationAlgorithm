function velocity = restrictVelocity(velocity,maxVelocity)

swarmSize=size(velocity,1);
for iTemporary = 1:swarmSize
    if norm(velocity(iTemporary,:))>maxVelocity
        velocity(iTemporary,:)=velocity(iTemporary,:)*maxVelocity / norm(velocity(iTemporary,:));
    end
end
end
