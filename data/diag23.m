function dg = diag23(A)
% diag2(A) : Devuelve un vector fila con las componentes de la diagonal secundaria

	numfilas = size(A,1);
	numcolumnas = size(A,2);

	% Los índices de los elementos de la diagonal secundaria
	% siempre suman 1 + numcolumnas

	dg = [];
	contador = 0;
	for fil = 1 : numfilas
		for col = 1 : numcolumnas
			if (fil + col) == (1 + numcolumnas)
				contador = contador + 1;
				dg(contador) = A(fil, col);
			end
		end
	end
end

