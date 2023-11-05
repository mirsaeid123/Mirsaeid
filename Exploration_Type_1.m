function [ Particle1 ] = Exploration_Type_1(Particle,m)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
  BEG=1;
  END=0;  
  while BEG>=END
     BEG=randi([2,m-1]);
     END=randi([2,m-1]);
  end
  %BEG
  %END
  Particle1(1:BEG-1)=Particle(1:BEG-1);
  j=0;
  for i=END:-1:BEG
    Particle1(BEG+j)=Particle(i);
    j=j+1;
  end
  Particle1(END+1:m)=Particle(END+1:m);
end

