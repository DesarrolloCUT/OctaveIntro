function x = sisbidiag (A, b)
% Resuelve un sistema bidiagonal inferior
	
	dimension = length(b)
	x=zeros(dimension,1);

	x(1) = b(1)/A(1,1);

	for i = 2 : dimension
		x(i) = (b(i) - A(i,i-1)*x(i-1)) / A(i,i);
	end

endfunction
