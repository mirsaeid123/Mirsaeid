function [ y ] = Cost( List, Inst,Mem,File_in,File_out, CPU_rate,CPU_price,Mem_price,BW_price, m, n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 %L=zeros(1,n);
 Cost1=0;
 for i=1:length(List)
     node=List(i);
     %i=task, node=fog node
     Time1=(Inst(i))/(CPU_rate(node)*10^6);
     Cost1=Cost1+ceil(Time1*CPU_price(node))+ceil(Mem(i)*Mem_price(node))+ceil(File_in(i)*BW_price(node))+ceil(File_out(i)*BW_price(node));
 end
 y=Cost1;
end

