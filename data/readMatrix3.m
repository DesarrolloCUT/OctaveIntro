function A = readMatrix3(filename)

	A = [];
	fid = fopen(filename, 'r');
	if(fid<3)
		fprintf('ERROR opening file %s\n', filename)
		return;
	end

	line = 1;
	while ~feof(fid)
		v = fscanf(fid, '%f');
		if size(v,2) > 0
			A = [A; v'];
		end
	end

	fclose(fid);

end
