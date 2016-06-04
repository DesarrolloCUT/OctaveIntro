function p = prodall(A)
% Multiplica todos los elementos de un vector o una matriz

	filas = size(A,1);
	cols = size(A,2);

	p = 1;
	for ind1 = 1: filas
		for ind2 = 1: cols
			p = p * A(ind1,ind2);
		end
	end

end
