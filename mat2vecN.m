function [ vec ] = mat2vecN( mat )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

vec = [];
[lm cm] = size(mat);
for i = 1:lm
    vec = [vec mat(i,1:cm)];
end
end

