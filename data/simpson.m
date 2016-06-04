function sum = simpson(f,a,b,m)
% Integración numérica mediante la fórmula compuesta de Simpson
% Parámetros: 
%	f = inline function
%	a,b = Extremos del intervalo
%	m = número de subintervalos
% Devuelve:
%   sum = integral de f en [a,b]
	

	h = (b - a) / m / 2;
   
   
   sum=0;
   for k = 0 : m-1
	x1 = a + k * 2 * h;
	xmedio = x1 + h;
	x2 = xmedio + h;
	sum = sum + (feval(f,x1) + 4 * feval(f, xmedio) + feval(f, x2));
   end
   
   sum = sum * h / 3;

end