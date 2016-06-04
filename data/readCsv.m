function A = readCsv(filename)
% Lee una matriz de doubles almacenada en un fichero CSV
	A = [];
	fid = fopen(filename, 'r');
	if(fid<3)
		fprintf('ERROR opening file %s\n', filename)
		return;
	end

	line = 1;
	while ~feof(fid)
		linecad = fgetl(fid);
		linecad = strrep(linecad, ',', ' ');
		v = sscanf(linecad, '%f');
		A = [A; v'];
		line++;
	end

	fclose(fid);

end
