function [A, maximo, minimo] = readdem2(filename)
% Lee un fichero raster en formato ASC
% Devuelve la matriz de altitudes ordenada
% en filas y columnas y la cota máxima y mínima
% Además realiza el gráfico
	
	file = fopen(filename,'r');
	if file <3
	   fprintf('Error al abrir fichero %s', filename)
	   return;
	end
	
	Ncol=fscanf(file,'%d',1)
	fgets(file);
	Nfil=fscanf(file,'%d',1)
	fgets(file);
	
	for i=1:4
	   fgets(file)
	end
	
	A = fscanf(file, '%f', [Ncol, Nfil]);
	A = A';
	fclose(file);
	
	maximo=max(max(A));
	minimo=min(min(A));
	
	meshz(A);
	view(240,60);
end
