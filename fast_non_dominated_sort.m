function [ Rank,Len,NewSol,SolSize ] = fast_non_dominated_sort( Sol, SolSize,Fitness1,Fitness2,Fitness3 )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%CC=0;
  for i=1:SolSize
    NewSol(i).Chr=Sol(i,:);
    NewSol(i).F1=Fitness1(i);
    NewSol(i).F2=Fitness2(i);   
    NewSol(i).F3=Fitness3(i);   
    %NewSol(i).S=Sol(i).S;
    %NewSol(i).n=Sol(i).n;
    %NewSol(i).rank=Sol(i).rank;
  end
  %NewSol(i-5)
  %lrjioe
  Len=1;
  Rank(Len).front=[];
  for i=1:SolSize
      NewSol(i).n=0;
      NewSol(i).S=[];
      NewSol(i).rank=0;
  end
  j=0;
  for p=1:SolSize
      NewSol(p).S=[];
      NewSol(p).n=0;
      for q=1:SolSize
          if (p~=q)&&(Dominate(NewSol(p).F1,NewSol(p).F2,NewSol(p).F3,NewSol(q).F1,NewSol(q).F2,NewSol(q).F3)==1)
              NewSol(p).S=[NewSol(p).S,q];
              
              %NewSol(q).n=NewSol(q).n+1;
          elseif (p~=q)&&(Dominate(NewSol(q).F1,NewSol(q).F2,NewSol(q).F3,NewSol(p).F1,NewSol(p).F2,NewSol(p).F3)==1)
              NewSol(p).n=NewSol(p).n+1;
              
              %NewSol(q).S=[NewSol(q).S,p];
          end
      end
      
      if NewSol(p).n==0
          NewSol(p).rank=1;
          Rank(Len).front=[Rank(Len).front,p];
          %j=j+1;
          %Rank(Len).front(j)=p;
      end
  end
%    return
  Len=1;
  Len1=numel(Rank(Len).front);
  %Rank(1).front
  %Len1
  
  
  i=1;
  while Len1~=0
      Q=[];
      for p=1:Len1 % p belongs to frnot i (fi)
          Len2=numel(NewSol(Rank(i).front(p)).S);
          p1=Rank(i).front(p);
          for q=1:Len2
              q1=NewSol(p1).S(q);
              NewSol(q1).n=NewSol(q1).n-1;
              if NewSol(q1).n==0
                  NewSol(q1).rank=i+1;
                  Q=[Q,q1];
              end
          end
      end
      i=i+1;
      Rank(i).front=Q;
      %Rank(i).front=[Rank(i).front,Q];
      Len1=numel(Q);
  end
  if i>1
    Len=i-1;
  else 
     Len=1;
  end
  % Len: is the number of generated ranks
  % Rank(i) determines solutions in i-th rank
  % in NewSol(i).rank you can find solution's rank
end

