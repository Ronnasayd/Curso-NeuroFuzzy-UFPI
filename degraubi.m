% fun��o degrau bipolar
function y = degraubi(u)
y = zeros(size(u));
y(find(u > 0)) = 1;
y(find(u < 0)) = -1;
