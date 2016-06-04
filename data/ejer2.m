function ejer2

	n = round(100 + 100 * rand());
	fprintf('%d\n', n)
	reals = -20 + 40 * rand(1,n);
	ints = round(-10 + 20 * rand(1,n));

	file = fopen('dat2.txt', 'w');
	for i = 1:n
		fprintf(file, '%f %d ', reals(i), ints(i));
		if rem(i,2)==0
			fprintf(file, '\n');
		end 
	end
	fclose(file);

	type 'dat2.txt'



end
