function [ Test1 ] = LoadBalancer3( Test1, Inst,CPU_rate, m,n,BW, File_request_in,File_request_out )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Temp1=Makespan( Test1, Inst, CPU_rate, m, n,BW, File_request_in,File_request_out );
%Test2=Test1;
%Temp3=-inf;
Checker=1;
while Checker==1
    
    Test2=LoadBalancer( Test1, Inst,CPU_rate, m,n);
    Temp2=Makespan( Test2, Inst, CPU_rate, m, n,BW, File_request_in,File_request_out );
    if Temp2<Temp1
      Test1=Test2; 
      Temp1=Temp2;
    else
        Checker=0;
    end
end

end

