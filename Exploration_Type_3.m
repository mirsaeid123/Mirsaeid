function [ Particle1 ] = Exploration_Type_3(Particle,m)
% %UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
 Particle1=Particle;
 for i=1:floor(m/2)
     p=(i-1)*2+1;
     q=p+1;
     Particle1(p)=Particle(q);
     Particle1(q)=Particle(p);
 end
end

