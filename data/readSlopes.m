function [s, p] = readSlopes(filename) 
% Lee un fichero CSV con valores abcisa pendiente
    s = [];
	p = [];

	fprintf('readSlopes() : Reading file %s...',filename)

	fid = fopen(filename, 'r');
	if(fid <3) 
		fprintf(' ERROR: can''t read file\n', filename)
		return;
	end

	fprintf(' OK, result %d\n', fid)

	count =1;
	s = [];
	p = [];
	pacum = 0.0;
	while(~feof(fid))
		cad = fgetl(fid);
		cad = strrep(cad,',',' ');
		v = sscanf(cad, '%f');
		s(count) = v(1);
		p(count) = v(2);
		pacum = pacum + p(count);
		count++;
	end

	fclose(fid);

	numpuntos = length(s);
	fprintf('Leidos %d puntos\n', numpuntos)

	ltramo = s(end) - s(1);
	fprintf('Longitud del tramo= %12.2f\n', ltramo)
	
	pmedia = pacum / numpuntos;
	fprintf('Pendiente media= %f\n', pmedia)


	

end
