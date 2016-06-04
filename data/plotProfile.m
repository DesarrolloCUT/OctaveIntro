function plotProfile(filename)

	A = readCsv(filename);
	if size(A,1) > 0
		plot(A(:,1),A(:,2));
	end

end
