%function [ Sol ] = Exploitation( Particle, Alpha,Beta,Delta,F11,F12,F13,F21,F22,F23,F31,F32,F33, w1,w2,w3,min1,Max1,min2,Max2,min3,Max3 )
function [ Sol ] = Phase3_Escaping( Walrus, WorstWalrus,m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%  Score1=FinalScore2(F11,F12,F13, w1,w2,w3,min1,Max1,min2,Max2,min3,Max3)
%  Score2=FinalScore2(F21,F22,F23, w1,w2,w3,min1,Max1,min2,Max2,min3,Max3)
%  Score3=FinalScore2(F11,F12,F13, w1,w2,w3,min1,Max1,min2,Max2,min3,Max3)
 for i=1:m
     d=randi([1,2]);
     if d==1
        Sol(i)=WorstWalrus(i);
     else
        Sol(i)=Walrus(i);
     end
 end
 %F11
 %Score
end


