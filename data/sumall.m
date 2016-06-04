function s = sumall(A)
% Suma todos los elementos de un vector o una matriz

filas = size(A,1);
cols = size(A,2);

s = 0;
for ind1 = 1: filas
	for ind2 = 1: cols
		s = s + A(ind1,ind2);
	end
end
