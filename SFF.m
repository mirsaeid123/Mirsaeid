function [ y ] = SFF( List, Inst, CPU_rate,CPU_fail, m, n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 %L=zeros(1,n);
 Cost1=0;
 for i=1:length(List)
     node=List(i);
     %i=task, node=fog node
     Time1=Inst(i)/(CPU_rate(node)*10^6);
     Cost1=Cost1+Time1*CPU_fail(node);
 end
 y=Cost1;
end

