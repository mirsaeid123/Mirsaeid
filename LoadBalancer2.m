function [ Test2 ] = LoadBalancer2( Test1, Inst,CPU_rate, m,n,BW, File_request_in,File_request_out )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Temp1=Makespan( Test1, Inst, CPU_rate, m, n,BW, File_request_in,File_request_out );
Test2=Test1;
Temp3=-inf;
while Temp3<Temp1
    Test3=LoadBalancer( Test2, Inst,CPU_rate, m,n);
    Temp3=Makespan( Test3, Inst, CPU_rate, m, n,BW, File_request_in,File_request_out );
    if Temp3<Temp1
      Test2=Test3; 
      Temp1=Temp3;
    end
end

end

