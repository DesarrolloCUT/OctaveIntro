function sum = simpson5(f,a,b,m)
% Integración numérica mediante la fórmula compuesta de Simpson
% Parámetros: 
%	f = inline function
%	a,b = Extremos del intervalo
%	m = número de subintervalos
% Devuelve:
%   sum = integral de f en [a,b]
	

	h = (b-a)/(2*m);
	x = a:h:b;

	sum1 = 0;
	for i=2:2:2*m
		sum1 = sum1 + f(x(i));
	end  

	sum2 = 0;
	for j=3:2:2*m-1
		sum2 = sum2 + f(x(j));
	end 

	sum = h/3 * (f(a) + f(b) + 2 * sum2 + 4*sum1);
end