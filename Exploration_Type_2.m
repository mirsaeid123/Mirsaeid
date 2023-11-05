function [ Particle1 ] = Exploration_Type_2(Particle,m)
% %UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
  BEG=1;
  END=0;  
  while BEG>=END
     BEG=randi([2,m-1]);
     END=randi([2,m-1]);
  end
  %BEG
  %END
  Particle1=Particle;
  Particle1(BEG)=Particle(END);
  Particle1(END)=Particle(BEG);
%   Particle1(1:BEG-1)=Particle(1:BEG-1);
%   Particle1(BEG)=Particle(END);
%   Particle1(END)=Particle(BEG);
%   Particle1(END+1:m)=Particle(END+1:m);
end

