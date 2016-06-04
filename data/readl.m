function A = readl(filename)

	A = [];
	fid = fopen(filename,'r');
	if fid < 3
		fprintf('ERROR')
		return;
	end
	count = 1;
	while ~feof(fid)
		cad = fgetl(fid);
		cad = strrep(cad,',',' ');
		v = sscanf(cad, '%f');
		A = [A; v'];
		count++;
	end
	
	fclose(fid);

end
 