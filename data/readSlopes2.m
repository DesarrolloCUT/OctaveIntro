function [s, p] = readSlopes2(filename) 
% Lee un fichero CSV con valores abcisa pendiente
    s = [];
	p = [];

	fprintf('readSlopes() : Reading file %s...',filename)

	fin = fopen(filename, 'r');
	fout = fopen('temp.tmp', 'w');
	if(fin < 3 | fout < 3) 
		fprintf(' ERROR: can''t open files\n')
		return;
	end

	fprintf(' OK, result %d\n', fin)

	% Copiar a fichero temporal cambiando comas por espacios
	while(~feof(fin))
		cad = fgetl(fin);
		cad = strrep(cad,',',' ');
		% if(length(cad) > 0)
			fprintf(fout, '%s\n', cad);
		% end
	end

	fclose(fin);
	fclose(fout);

	fid = fopen('temp.tmp', 'r');
	if(fid < 3) 
		fprintf(' ERROR: can''t open temp file\n')
		return;
	end

	s = [];
	p = [];
	pacum = 0.0;
	count = 0;
	while(~feof(fid))
		count++;
		x = fscanf(fid, '%f %f', [1,2]);
		if(size(x,2) == 2)
			s(count) = x(1);
			p(count) = x(2);
			pacum += p(count);
		end
	end

	numpuntos = length(s);
	fprintf('Leidos %d puntos\n', numpuntos)

	ltramo = s(end) - s(1);
	fprintf('Longitud del tramo= %12.2f\n', ltramo)
	
	pmedia = pacum / numpuntos;
	fprintf('Pendiente media= %f\n', pmedia)
end
