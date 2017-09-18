function [ v ] = hopOperation( w,i,x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

v = x;
vant = inf;
while sum(v ~= vant)
    vant = v;
    u = w*vant + i;
    v = degraubi(u);
end



end

