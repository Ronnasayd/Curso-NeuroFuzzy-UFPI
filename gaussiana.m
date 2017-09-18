% fun��o gaussiana
function [y,dy] = gaussiana(c,d,u)
    y = exp(-((u - c).^2)./(2*d.^2));
    dy = ((c - u)./d).*y;