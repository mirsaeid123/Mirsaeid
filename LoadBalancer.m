function [ List2 ] = LoadBalancer( List1, Inst,CPU_rate, m,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 L=zeros(1,n); % L(i) finish time of fog node i
 Idle=zeros(1,n); %it finds idle nodes
 List2=zeros(1,m);
 % n:number of fog nodes, m:number of tasks
 for i=1:length(List1)
     node=List1(i);
     L(node)=L(node)+(Inst(i))/(CPU_rate(node)*10^6);
 end
 [Makespan,Fid]=max(L); %Fid is fog node which return makespan
 for i=1:n
    Idle(i)=Makespan-L(i);
 end
 List2=List1;
 i=1;
 found=0;
 while (i<=m)&&(found==0) % m:number of tasks or chromosome length
     if List2(i)==Fid
         found=0;
         j=1;
         while (j<=n)&&(found==0)
             if (j~=Fid)&&(Idle(j)>(Inst(i))/(CPU_rate(j)*10^6))
                 List2(i)=j;
                 found=1;
             end
             j=j+1;
         end
     end
     i=i+1;
 end
end

