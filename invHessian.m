function [ iv ] = invHessian( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

iv = inv(x'*x);

end

