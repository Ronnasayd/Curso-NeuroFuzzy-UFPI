function [ control ] = plotPerPlane( x,w,d)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes her
[minA] = min(x);
[maxA] = max(x);
t = minA-1:0.1:maxA+1;
y = (w(1) - w(2)*t)/w(3);
for  i=1:size(d)
    hold on
    if d(i) == 1
        plot(x(i,1),x(i,2),'go')
    else
        plot(x(i,1),x(i,2),'ro')
    end
end
hold on
plot(t,y)
axis([minA(1)-0.5 maxA(1)+0.5 minA(2)-0.5 maxA(2)+0.5]);
%hold off
control = 1;
end

