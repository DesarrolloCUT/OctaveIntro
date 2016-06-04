function dg = diag2(A)
% diag2(A) : Devuelve un vector fila con las componentes de la diagonal secundaria

	numfilas = size(A,1);
	numcolumnas = size(A,2);

	dg = [];
	for k = 1 : numfilas
		if (numcolumnas - k + 1) == 0
			break;
		end
		dg(k) = A(k, numcolumnas - k +1);
	end
end

