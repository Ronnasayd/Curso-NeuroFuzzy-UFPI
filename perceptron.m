function [ w,epoca,erro ] = perceptron( x,w,d,n,epMax,func)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
close
[l c] = size(x);
r = x;
x = [-ones(l,1) x];
epoca = 0;
erro = ones(size(d));
while sum(abs(erro))&&(epoca < epMax)
    for i=1:l
        u = potencial2(x(i,:),w);
        y = func(u);
        erro(i) = (d(i) - y);
        w = [w' + n*erro(i)*x(i,:)']';
    end
    epoca = epoca + 1;
end

end

