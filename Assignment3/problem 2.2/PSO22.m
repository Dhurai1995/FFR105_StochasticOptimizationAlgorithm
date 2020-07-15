clear all
clc

numberOfSwarm = 40;
xmin = -5;
xmax = 5;
alpha = 1;
deltaT = 1;
numberOfIteration = 100;
c1 = 2;
c2 = 2;
maxVelocity =(xmax-xmin)/deltaT;
inertiaWeight = 1.4;
minimumInertiaWeight = 0.4;
beta = 0.9;
 format long

%%Intitialization
 position = xmin + (rand(numberOfSwarm,2)*(xmax-xmin));
 velocity = (alpha/deltaT)* (-(xmax-xmin)/2 + rand(numberOfSwarm,2)*(xmax-xmin));
 bestParticlePosition = position;
 bestSwarmPosition = calculateBestSwarm(position);
 
 for iTemporary = 1:numberOfIteration
  
     %update particle and swarm position
     bestParticlePosition = calculateParticlePosition(bestParticlePosition,position);
     bestSwarmPosition = calculateSwarmPosition(bestSwarmPosition,position);
     
     %update velocity and position
     velocity = calculateVelocity(velocity,bestParticlePosition,position,bestSwarmPosition,deltaT,c1,c2,inertiaWeight);
     velocity = restrictVelocity(velocity,maxVelocity);
     position = calculatePosition(velocity,position,deltaT);
     
     if inertiaWeight> minimumInertiaWeight
            inertiaWeight = beta*inertiaWeight;
     end
 end

disp('minimum : ');
disp(round(bestSwarmPosition,6));
disp('value of f :')
disp(round(evaluateFunction(bestSwarmPosition),6));