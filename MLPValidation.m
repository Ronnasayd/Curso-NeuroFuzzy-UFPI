function [y,em,va] = MLPValidation( x,d,W,topg,fun,B)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[l cx] = size(x);
X = {x};
U = {};
for i = 2:length(topg)
    X{end+1} =  zeros(l,topg(i));
    U{end+1} =  zeros(l,topg(i));
end
%%% FORWARD
    for i = 1:length(topg)-1
        U{i} = potencial2([-ones(l,1) X{i}],W{i}'); %% potencial de x(k) e w(k)
        X{i+1} = fun{i}(B(i),U{i}); %% x(k+1) = g(x(k)*w(k+1)')
    end
    
    em = mean(d - X{end});
    va = var(d - X{end});
    y = X{end};


end

