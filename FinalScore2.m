function [ Y ] = FinalScore2( F1,F2,F3, w1,w2,w3,min1,Max1,min2,Max2,min3,Max3 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
% min1=min(F1);
% Max1=max(F1);
%F1,F2,F3 are three fintess of a solution
% min(i) and Max(i) are relevant to intial solution
 EP1=10^-9;
 EP2=10^-9;
 EP3=10^-9;
 D1=Max1-min1;
 %Epsilon=0;
 if D1==0
     w1=0;
 else
     EP1=0;
 end

% min2=min(F2);

% Max2=max(F2);
 D2=Max2-min2;
 if D2==0
     w2=0;
 else
     EP2=0;
 end

 %min3=min(F3);
 

%Max3=max(F3);
 D3=Max3-min3;
 if D3==0
     w3=0;
 else
     EP3=0;
 end
 %NewFit=zeros(1,Size);
 %EP=10^-9;
 Score=w1*(F1-min1)/(D1+EP1)+w2*(F2-min2)/(D2+EP2)+w3*(F3-min3)/(D3+EP3);   
%  List1=zeros(1,K); %value
%  Index1=zeros(1,K); %index
%  for i=1:K
%      idx=randi([1,Size]);
%      List1(i)=NewFit(idx);
%      Index1(i)=idx;
%  end
%  [mm,ii]=min(List1);
 Y=Score; 
end

