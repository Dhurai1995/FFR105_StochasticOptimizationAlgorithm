function velocity = calculateVelocity(velocity,bestParticlePosition,position,bestSwarmPosition,deltaT,c1,c2,inertiaWeight)

cognitiveComponent = c1*rand*((bestParticlePosition - position)/deltaT);
socialComponent = c2*rand*((bestSwarmPosition - position)/deltaT);
velocity = inertiaWeight*velocity + cognitiveComponent + socialComponent;

end
