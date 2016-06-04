function sum=trapecio(f,a,b,m)
% Integración por la fórmula compuesta del trapecio
% Parámetros: 
%			f = inline function
%			a,b = Extremos del intervalo
%			m = número de subintervalos
%
	h = (b - a) / m;
	sum=0;
	for k=1:m
		xkminus1 = a + (k-1)*h;
		xk = a + k * h;
		sum = sum + f(xkminus1) + f(xk);
	end
	sum = sum * h/2;
end
