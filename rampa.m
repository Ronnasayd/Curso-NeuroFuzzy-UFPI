% fun��o rampa
function y = rampa(a,u)
y = u;
y(find(u > a)) = a;
y(find(u < -a)) = -a;
 