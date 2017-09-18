% fun��o degrau
function y = degrau(u)
y = zeros(size(u));
y(find(u >= 0)) = 1;
