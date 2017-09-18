function [ w,ib ] = hopWeights( data )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[n p] = size(data);
w = (data*data')./n  - (p/n)*eye(n,n);
ib = 0;

end

