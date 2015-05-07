function [  ] = plotf( a,b,inter )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x=a:inter:b;
y=fval(a,b,inter);

figure()
plot(x,y);

xlim = get(gca,'xlim');  %Get x range 
hold on
plot([xlim(1) xlim(2)],[0 0],'k')

end

