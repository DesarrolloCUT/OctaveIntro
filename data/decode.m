function decode()

	filein = fopen('codigo.txt', 'r');
	fileout = fopen('dat1.txt', 'w');

	cad1 = '0123456789.- ';
	cad2 = 'F2TVM3A4XK169';


	while (~feof(filein))
		c = fgets(filein,1);
		if sum(cad2==c)>0 
			fprintf(fileout, '%s', cad1(find(cad2==c)));
		else
			fprintf(fileout, '\n');
		end
	end

	fclose(filein);
	fclose(fileout);

end
