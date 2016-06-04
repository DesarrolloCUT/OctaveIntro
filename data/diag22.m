function dg = diag22(A)
% diag2(A) : Devuelve un vector fila con las componentes de la diagonal secundaria

	numfilas = size(A,1);
	numcolumnas = size(A,2);

	% El primer elemento de la diagonal secundaria es A(1,numcolumnas)
	% El segundo es A(2, numcolumnas-1)
	% El último es A(numfilas, numcolumnas-numfilas) si numcolumnas > numfilas
	% El último es A(numfilas, 1) si numcolumnas <= numfilas
	dg = [];
	k = 0;
	while ((numcolumnas - k) > 0 &  (k+1) <= numfilas )
		dg(k+1) = A(k + 1, numcolumnas - k );
		k = k +1;
	end
end

