function [ mat ] = vec2matN( vec,nc )
%UNTITLED2 Summary of this functtion goes here
%   Detailed explanation goes here
aux = 1;
mat = [];
while aux <= length(vec)
   mat = [mat; vec(aux:aux+nc-1)];
   aux = aux + nc;
end

end

