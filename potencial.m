% fun��o potencial.
function [u ,c] = potencial(x,w,theta)
c = x*w';
u = c - theta;
    