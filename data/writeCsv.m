function writeCsv(filename, matrix)

	fid = fopen(filename, 'w');
	if(fid<3)
		fprintf('ERROR in file %s\n', filename)
		return;
	end

	[m,n] = size(matrix);

	for fil = 1: m
		cad = '';
		for col = 1: n
			cad = strcat(cad, sprintf('%12.6f', matrix(fil,col)));
			if(col<n)
				cad = strcat(cad, ',');
			end
		end
		fprintf(fid,'%s\n',cad);
	end

	fclose(fid);

end
