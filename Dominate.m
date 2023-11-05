function [ y ] = Dominate( f1,f2,f3,y1,y2,y3 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
  if ((f1<y1)&&(f2<=y2)&&(f3<=y3))||((f1<=y1)&&(f2<y2)&&(f3<=y3))||((f1<=y1)&&(f2<=y2)&&(f3<y3))
      y=1;
  else
      y=0;
  end

end

