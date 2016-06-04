function matrizTiburones_main(filas, columnas, nmatrizTiburones, nmatrizPeces, sbreed, fbreed, starve)

	[matrizPeces, matrizTiburones] = initmatrizPecesAndmatrizTiburones(filas, columnas, nmatrizPeces, nmatrizTiburones);

	matrizPeces_MOVE = zeros(filas, columnas);
	matrizTiburones_MOVE = zeros(filas, columnas);
	STARVE = zeros(filas, columnas);

	time=0;
	display(time, matrizPeces, matrizTiburones);

	while true
		n = input('Nº de chronos (0 para terminar el programa): ');
		if(n == 0)
			break;
		else 
			for i=1:n
				time ++;
				[matrizPeces, matrizTiburones] = avanza(matrizPeces, matrizTiburones);
			end
		end
	display(time, matrizPeces, matrizTiburones);
	end

	fprintf('Fin del programa\n')
end

function [matrizPeces, matrizTiburones] = initmatrizPecesAndmatrizTiburones(filas, columnas, nmatrizPeces, nmatrizTiburones) 
	%fprintf('\ninitmatrizPecesAndShark()\n\n')
	
	matrizPeces = zeros(filas, columnas);
	matrizTiburones = zeros(filas, columnas);

	fils = round(1 + (filas-1)*rand(1,nmatrizTiburones+nmatrizPeces));
	cols = round(1 + (columnas-1)*rand(1,nmatrizTiburones+nmatrizPeces));
	for i=1:nmatrizPeces
		matrizPeces(fils(i), cols(i)) = 1;
	end
	for i = nmatrizPeces+1:nmatrizPeces+nmatrizTiburones
		matrizTiburones(fils(i), cols(i)) = 1;
	end
end

function [matrizPeces, matrizTiburones] = avanza(matrizPeces, matrizTiburones)
	matrizPeces = matrizPecesSwingAndBreed(matrizPeces);
	matrizTiburonesHuntAndBreed();
end

function matrizPeces = matrizPecesSwingAndBreed(matrizPeces)
	%fprintf('matrizPecesSwingAndBreed()\n')	
	[filas, cols] = size(matrizPeces);
	matrizPecesMOVE = zeros(filas, cols); % Pondremos un uno en las casillas
	% que vayan ocupando los peces para no mover dos veces el mismo
	for i = 1:size(matrizPeces,1)
		for j = 1 : size(matrizPeces, 2)
			if matrizPecesMOVE(i,j) > 0
				continue;
			end			
			newfila = i;
			newcol = j;
			poss = emptyPos(matrizPeces,i,j);
			l = length(poss);
			if(l == 0) 
				continue;
			end
			newpos = round(1 + (l-1)*rand());
			if newpos==1
				newfila = adjustRow(matrizPeces, i+1);
			elseif newpos == 2
				newcol = adjustColumn(matrizPeces, j+1);
			elseif newpos == 3
				newfila = adjustRow(matrizPeces, i-1);
			elseif newpos == 4
				newcol = adjustColumn(matrizPeces, j-1);
			end

			age = matrizPeces(i,j) + 1;
			matrizPeces(newfila, newcol) = age;
			matrizPecesMOVE(newfila, newcol) = 1;
			matrizPeces(i,j) = -1;
		end
	end


end
function [poss] = emptyPos(matrizPeces,fila,col) 
% Denominamos 1 a la casilla superior,
% 2 a la casilla al este, 3 hacia el sur 
% y 4 hacia el Oeste
% La función devuelve un vector con las posiciones vacías
	poss=[];
	posneslibres=0;
	% N
	filan = adjustRow(matrizPeces, fila -1);
	if(isEmpty(matrizPeces, filan, col))
		posneslibres++;
		poss(posneslibres) = 1;
	end
	% E
	cole = adjustColumn(matrizPeces, col +1);
	if(isEmpty(matrizPeces, fila, cole))
		posneslibres ++;
		poss(posneslibres) = 2;
	end
	% S
	filas = adjustRow(matrizPeces, fila -1);
	if(isEmpty(matrizPeces, filas, col))
		posneslibres ++;
		poss(posneslibres) = 3;
	end
	% W
	colw = adjustColumn(matrizPeces, col - 1);
	if(isEmpty(matrizPeces, fila, colw))
		posneslibres ++;
		poss(posneslibres) = 4;
	end
end
function is = isEmpty(matrix, fila, columna) 
	if(matrix(fila, columna)>0)
		is = true;
	else
		is = false;
	end
end

function [row, col] = adjustPos(matrix, fila, columna) 
	row = adjustRow(matrix, fila);
	col = adjustColumn(matrix, columna);
end

function newrow = adjustRow(matrix, row) 
% De la última fila pasa a la primera y viceversa
	if row > size(matrix,1) 
		newrow = 1;
	elseif(row < 1)
		newrow = size(matrix,1);
	else
		newrow = row;
	end
end

function newcolumn = adjustColumn(matrix, column) 
	if column > size(matrix,2) 
		newcolumn = 1;
	elseif(column < 1)
		newcolumn = size(matrix,2);
	else
		newcolumn = column;
	end
end

function matrizTiburonesHuntAndBreed()
	%fprintf('matrizTiburonesHuntAndBreed()\n')	


end

function display(time, matrizPeces, matrizTiburones) 
	clc();
	fprintf('\nTIBURONES Y PECES\n')
	fprintf('-----------------\n')

	[filas, columnas] = size(matrizTiburones);
	displaySize(filas, columnas);
	
	fprintf('Chronos: %d\n', time)
	fprintf('Tiburones: %d; Peces: %d\n', count(matrizTiburones), count(matrizPeces))
	
	for i=1:filas
		for j=1:columnas
			if (matrizPeces(i,j)>0) 
				printf('.')
			elseif (matrizTiburones(i,j)>0)
				printf('O')
			else 
				printf(' ')
			end
		end
		printf('\n')
	end
	printf('\n')

end

function displaySize(filas, columnas)
	fprintf('WA-TOR: %d X %d\n', filas, columnas)
end

function n = count(mat) 
	n = sum(sum(mat>0));
end





