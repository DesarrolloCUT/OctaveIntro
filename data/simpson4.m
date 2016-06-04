function sum = simpson4(f,a,b,m)
% Integración numérica mediante la fórmula compuesta de Simpson
% Parámetros: 
%	f = inline function
%	a,b = Extremos del intervalo
%	m = número de subintervalos
% Devuelve:
%   sum = integral de f en [a,b]
	

	
	v = linspace(a,b,m+1);
	c = zeros(1,m);
	for i=2 : m+1
		x = v(i-1);
		h = (v(i) - v(i-1))/2;
		c(i-1) = h/3*(f(x) + 4*f(x+h) + f(x+2*h));
	end


   sum = sum(c);

   
end