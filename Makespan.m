function [ y ] = Makespan( List, Inst, CPU_rate, m, n, BW, File_request_in,File_request_out )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 L=zeros(1,n);
 for i=1:length(List)
     node=List(i);
     L(node)=L(node)+(Inst(i))/(CPU_rate(node)*10^6)+((File_request_in(i)+File_request_out(i))*8)/BW;
 end
 y=max(L);
end

