function [ DS, Len3 ] = CrowdingDistance( E, Len3,Fitness1,Fitness2,Fitness3 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 %Len4=Len3;
 
 for i=1:Len3
     DS(i).Chr=E(i,:);
     DS(i).F1=Fitness1(i);
     DS(i).F2=Fitness2(i);
     DS(i).F3=Fitness3(i);
     DS(i).CD=0;
     DS(i).Index=i;
 end
% DS_Copy=DS; %original position before sorting
 %Ascending sort based on the first objective
 for i=1:Len3-1
     for j=i+1:Len3
         if DS(i).F1>DS(j).F1
             TEMP=DS(i);
             DS(i)=DS(j);
             DS(j)=TEMP;
         end
     end
 end
 DS(1).CD=inf;
 DS(Len3).CD=inf;
 min1=DS(1).F1;
 max1=DS(1).F1;

 for i=2:Len3
     if min1>DS(i).F1
         min1=DS(i).F1;
     end
     if max1<DS(i).F1
         max1=DS(i).F1;
     end
 end
 if min1~=max1
   for i=2:Len3-1
     DS(i).CD=DS(i).CD+(DS(i+1).F1-DS(i-1).F1)/(max1-min1);
   end
 end
 
 
  %Ascending sort based on the second objective
 for i=1:Len3-1
     for j=i+1:Len3
         if DS(i).F2>DS(j).F2
             TEMP=DS(i);
             DS(i)=DS(j);
             DS(j)=TEMP;
         end
     end
 end
 DS(1).CD=inf;
 DS(Len3).CD=inf;
 min2=DS(1).F2;
 max2=DS(1).F2;

 for i=2:Len3
     if min2>DS(i).F2
         min2=DS(i).F2;
     end
     if max2<DS(i).F2
         max2=DS(i).F2;
     end
 end
 if min2~=max2
   for i=2:Len3-1
     DS(i).CD=DS(i).CD+(DS(i+1).F2-DS(i-1).F2)/(max1-min1);
   end
 end

 
 
  %Ascending sort based on the third objective
 for i=1:Len3-1
     for j=i+1:Len3
         if DS(i).F3>DS(j).F3
             TEMP=DS(i);
             DS(i)=DS(j);
             DS(j)=TEMP;
         end
     end
 end
 DS(1).CD=inf;
 DS(Len3).CD=inf;
 min3=DS(1).F3;
 max3=DS(1).F3;

 for i=2:Len3
     if min3>DS(i).F3
         min3=DS(i).F3;
     end
     if max3<DS(i).F3
         max3=DS(i).F3;
     end
 end
 if min3~=max3
   for i=2:Len3-1
     DS(i).CD=DS(i).CD+(DS(i+1).F3-DS(i-1).F3)/(max3-min3);
   end
 end

 
end

 