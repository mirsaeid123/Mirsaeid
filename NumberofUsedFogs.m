function [ y ] = NumberofUsedFogs( List, m ,n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
  %m: number of fog nodes, n: number of tasks
  A=zeros(1,m);
  for i=1:m
      A(List(i))=1;
  end
  y=nnz(A);
end

