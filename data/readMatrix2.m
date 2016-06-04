function A = readMatrix2(filename)

	A = [];
	fid = fopen(filename, 'r');
	if(fid<3)
		fprintf('ERROR opening file %s\n', filename)
		return;
	end

	line = 1;
	while ~feof(fid)
		linecad = fgetl(fid);
		v = sscanf(linecad, '%f');
		if size(v,2) > 0
			A = [A; v'];
		end
	end

	fclose(fid);

end
