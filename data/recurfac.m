function fac = recurfac(n)
% Calcula el factorial de un número n mediante recursividad
	if(n == 0)
		fac = 1;
	else 
		fac = n * recurfac(n-1);
	end
end

