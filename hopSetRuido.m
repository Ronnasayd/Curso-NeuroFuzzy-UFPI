function [ number ] = hopSetRuido( number,ruido )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
s = length(number);
for i = 1:floor(s*ruido)
    ind = floor(s*rand);
    if ind == 0
        ind = 1;
    end
    
    if number(ind) == 1
        number(ind) = -1;
    else
        number(ind) = 1;
    end

end



end

