function [ handle ] =  normalization( handle )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[l c] = size(handle);
mi = min(handle);
ma = max(handle);

for i = 1:l
    handle(i,:) = (handle(i,:) - mi)./(ma - mi);
end


end

