function A = readMatrix(filename)

	A = [];
	fid = fopen(filename, 'r');
	if(fid<3)
		fprintf('ERROR opening file %s\n', filename)
		return;
	end

	line = 1;
	while ~feof(fid)
		linecad = fgetl(fid);
		c = strsplit(linecad);
		numcols = size(c,2);
		for col = 1:numcols
			cad = strtrim(c{col});
			if length(cad)>0
				A(line, col) = str2num(c{col});
			end
		end
		line++;
	end

	fclose(fid);

end
