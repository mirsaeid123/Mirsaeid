% in the first scenario
% n=fog nodes, m=number of tasks
clear all;
n=25; %number of fog nodes
m=200; %number of tasks

% Fog specifications%----------

CPU_rate=zeros(1,n); %speed in MIPS [500.1500] MIPS
CPU_price=zeros(1,n); % [0.1..0.7] G$/sec.
Mem_price=zeros(1,n); % [0.01..0.03] G$/MB.
BW_price=zeros(1,n); % [0.01..0.05] G$/MB.
CPU_fail=zeros(1,n); %[10^-4..10^-2] failure/hour
BW=50; %bandwidth of fog nodes uplink/downlink
% Distance [100.10000] meters

% Task specification %----------
Inst=zeros(1,m); % [1..100] *10^9
Mem=zeros(1,m); % mmemory requested [50..200] MB
File_in=zeros(1,m); %[10..100] MB
File_out=zeros(1,m); %[10..100] MB
%---------------------------
CPU_rate=randi([5,15],1,n)*100;
CPU_price=0.1+0.6*rand(1,n);
Mem_price=0.01+0.02*rand(1,n);
BW_price=0.01+0.04*rand(1,n);
CPU_fail=10^(-4)+(10^(-2)-10^(-4))*rand(1,n);
csvwrite('CPU_rate7.csv',CPU_rate);
csvwrite('CPU_price7.csv',CPU_price);
csvwrite('Mem_price7.csv',Mem_price);
csvwrite('BW_price7.csv',BW_price);
csvwrite('CPU_fail7.csv',CPU_fail);
%----------------------------------

Inst=randi([1,100],1,m)*10^9;
Mem_request=randi([5,20],1,m)*10;
File_request_in=randi([1,10],1,m)*10;
File_request_out=randi([1,10],1,m)*10;
csvwrite('Inst7.csv',Inst);
csvwrite('Mem_request7.csv',Mem_request);
csvwrite('File_request_in7.csv',File_request_in);
csvwrite('File_request_out7.csv',File_request_out);
