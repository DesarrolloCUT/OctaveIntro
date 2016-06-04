function code()

	filein = fopen('dat2.txt', 'r');
	fileout = fopen('codigo.txt', 'w');

	cad1 = '0123456789.- ';
	cad2 = 'F2TVM3A4XK169';


	while (~feof(filein))
		c = fgets(filein,1);
		if sum(cad1==c)>0 
			fprintf(fileout, '%s', cad2(find(cad1==c)));
		else
			fprintf(fileout, '\n');
		end
	end

	fclose(filein);
	fclose(fileout);

end
