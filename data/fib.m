function fib = fibonacci(n)
% Devuelve el término enésimo de la sucesión de Fibonacci

	
	if( n <= 2) 
		fib = 1;
	else 
		fib = fibonacci(n-1) + fibonacci(n-2);
	end
end
