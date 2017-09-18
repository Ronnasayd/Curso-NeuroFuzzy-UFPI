function [ w,epoca,erro,eqmgraph ] = adalineOffline( x,w,d,n,e,epMax)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[l c] = size(x);
x = [-ones(l,1) x];
u = potencial2(x,w);
epoca = 0;
eqm = sum((d - u).^2)/l;
eqmAnt = 0;
erro = abs(eqm - eqmAnt);
eqmgraph = eqm;

while(erro > e)&&(epoca < epMax)
    eqmAnt = eqm;
    w = w + n*((d - u)'*x);
    u = potencial2(x,w);
    eqm = sum((d - u).^2)/l;
    eqmgraph = [eqmgraph;eqm];
    erro = abs(eqm - eqmAnt);
    epoca = epoca + 1;
end

end

