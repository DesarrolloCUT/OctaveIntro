function count = lcount(filename)

	count = -1;
	fid = fopen(filename, 'r');
	if(fid<3)
		fprintf('ERROR opening file %s\n', filename)
		return;
	end

	count = 0;
	while ~feof(fid)
		line = fgets(fid);
		count++;
	end

end
