function [ w,epoca,erro,eqmgraph ] = adalineOfflineHessian( x,w,d,e,epMax)
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
n = invHessian(x);

while(erro > e)&&(epoca < epMax)
    eqmAnt = eqm;
    w = w + ((d - u)'*x)*n;
    u = potencial2(x,w);
    eqm = sum((d - u).^2)/l;
    eqmgraph = [eqmgraph;eqm];
    erro = abs(eqm - eqmAnt);
    epoca = epoca + 1;
end

end

