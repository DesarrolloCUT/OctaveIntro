function infodem(A)
% Imprime las coordenadas de los puntos
% del MDE con alturas máxima o mínima
% Utiliza la función minmaxdem() 

	[minh, maxh] = minmaxdem(A);
	[m, n] = size(A);
	for i = 1 : m
		for j = 1 : n
			if A(i, j) == minh
				dispmin(minh, i, j);				
			elseif A(i, j) == maxh
				dispmax(maxh, i, j);
			end
		end
	end 
end

function dispmin(minh, i, j)
	[x, y] = coords(i, j);
	fprintf('Minh %10.2f en (%10.2f, %10.2f)\n',minh, x, y)
end

function dispmax(maxh, i, j)
	[x, y] = coords(i, j);
	fprintf('Maxh %10.2f en (%10.2f, %10.2f)\n',maxh, x, y)
end

function [x, y] = coords(i, j)
	xllcorner = 262846.53;
	yllcorner = 4454025.0;
	cellsize = 25.0;
	x = xllcorner + (j-1)*cellsize + cellsize/2;
	y = yllcorner + (i-1)*cellsize + cellsize/2;
end
