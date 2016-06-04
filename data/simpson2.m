function sum = simpson2(f,a,b,m)
% Integración numérica mediante la fórmula compuesta de Simpson
% Parámetros: 
%	f = inline function
%	a,b = Extremos del intervalo
%	m = número de subintervalos
% Devuelve:
%   sum = integral de f en [a,b]
	

	x=linspace(a,b,m+1);
	h = (b - a) / m / 2;
   
   
   sum=0;
   for i = 1 : m
   	area = (feval(f,x(i)) + 4*feval(f,x(i)+h) + feval(f,x(i+1)))*(h/3);
   	sum = sum + area;
   end
   
end