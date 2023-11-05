function [ Particle1 ] = Exploration_Type_4(Particle,m)
% %UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
 Particle1=Particle;
 for i=2:floor((m+1)/2)
     p=(i-1)*2;
     q=p+1;
     Particle1(p)=Particle(q);
     Particle1(q)=Particle(p);
 end
end

