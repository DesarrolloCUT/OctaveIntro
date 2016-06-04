function sum = simpson3(f,a,b,m)
% Integración numérica mediante la fórmula compuesta de Simpson
% Parámetros: 
%	f = inline function
%	a,b = Extremos del intervalo
%	m = número de subintervalos
% Devuelve:
%   sum = integral de f en [a,b]
	

	h = (b - a) / m / 2;
   
   % Impares
   s1=0; 
   for k=1:m
   	x = a + (2*k-1)*h;
   	s1 = s1 + feval(f,x);
   end

   % pares
   s2=0;
   for k=1:m-1
   	x = a +2*k*h;
    s2 = s2 + feval(f,x);
   end

   sum = h/3*(feval(f,a) + feval(f,b) + 4*s1 + 2*s2);

   
end