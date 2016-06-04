function fib = fibonacci(n)
% Devuelve el término enésimo de la sucesión de Fibonacci

	if( n <= 2) 
		fib = 1;
	else 
		fib = fib(n-1) + fib(n-2);
	end
end
