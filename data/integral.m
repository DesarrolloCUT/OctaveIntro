function [s, error] = integral(f, a, b fsegunda) {
	
	printreport = true;
	maxciclos = 10000;
	maxerror = 5e-4;

	m = 1;
	error = 1;
	ciclo = 1;
	while error > maxerror && ciclo <= maxciclos 
		m = ciclo;
		h = (b-a)/m;
		c = fmax(fsegunda, a, b);
		error = abs(-(b-a) * feval(fsegunda, c) * h^2 / 12);
		ciclo = ciclo +1;
	end

	suma = 0;
	for k = 2 : m % Ojo a estos índices
		xk = a + (k-1) * h;
		suma = suma + feval(f, xk);
	end
	
	s = h/2*(feval(f,a) + feval(f,b)) + h*suma;

	if printreport
		fprintf('s= %f', s)
		fprintf('error= %f maxerror= %f ciclos= %d', error, maxerror, ciclo)
		if(error > maxerror) 
			fprintf('El error es mayor que maxerror con maxciclos=%d', maxciclos)
		end
	}

}