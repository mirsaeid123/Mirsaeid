function [ C1,C2 ] = CrossOver( F, M, len, Pos )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
C1=F(1:Pos);
C2=M(1:Pos);
C1(Pos+1:len)=M(Pos+1:len);
C2(Pos+1:len)=F(Pos+1:len);
% j=Pos; %rem=len-Pos
% Rem=len-Pos;

% k=0;
% while Rem>0
%   idx=0;
%   k=k+1;
%   for s=1:j
%       if M(k)==C1(s)
%           idx=1;
%       end
%   end
%   if idx==0
%       j=j+1;
%       C1(j)=M(k);
%       Rem=Rem-1;
%   end
%   %k=k+1;
% end
% j=Pos; %rem=len-Pos
% Rem=len-Pos;
% k=0;
% while Rem>0
%   idx=0;
%   k=k+1;
%   for s=1:j
%       if F(k)==C2(s)
%           idx=1;
%       end
%   end
%   if idx==0
%       j=j+1;
%       C2(j)=F(k);
%       Rem=Rem-1;
%   end
%   %k=k+1;
% end

%Z1=C1;
%Z2=C2;
end
