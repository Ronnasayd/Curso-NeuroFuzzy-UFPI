function [ w,epoca,erro,eqmgraph ] = adalineOnline( x,w,d,n,e,epMax)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[l c] = size(x);
x = [-ones(l,1) x];
epoca = 0;
u = potencial2(x,w);
eqm = sum((d - u).^2)/l;
eqmAnt = 0;
erro = abs(eqm - eqmAnt);
eqmgraph = eqm;

while(erro > e)&&(epoca < epMax)
    eqmAnt = eqm;
    for i=1:l
        w = w + n*(d(i) - u(i))*x(i,:);
    end
    u = potencial2(x,w);
    eqm = sum((d - u).^2)/l;
    eqmgraph = [eqmgraph;eqm];
    erro = abs(eqm - eqmAnt);
    epoca = epoca + 1;
end

end

