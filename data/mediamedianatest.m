function mediamedianatest()

resp=input('Seleccione salida (1=Pantalla, 2=Fichero): ');
if resp == 2
	file = fopen('Medias_Y_Medianas.txt','w');
	if(file<3)
		fprintf("Error al abrir fichero");
		return;
	end
elseif resp == 1
	file=1
else
	fprintf("Error en la selección del dispositivo de salida.\nEjecute de nuevo");
	return;
end


fprintf(file,'-----------------------------------------------------------------------------------------------------\n')
fprintf(file,'Checking average and median of 25 random numbers between 1 and 5\n');
fprintf(file,'Probability of 5 is 30%%\n')
fprintf(file,'Probability of 4 is 25%%\n')
fprintf(file,'Probability of 3 is 20%%\n')
fprintf(file,'Probability of 2 is 15%%\n')
fprintf(file,'Probability of 1 is 10%%\n')
fprintf(file,'-----------------------------------------------------------------------------------------------------\n')

for k=1:10
	
	fprintf(file,'\n')
	fprintf(file,'Series number %d                                                                Average        Median\n',k)
	fprintf(file,'-----------------------------------------------------------------------------------------------------\n')


	a=zeros(100);
	a(1:30)=5;
	a(31:55)=4;
	a(56:75)=3;
	a(76:90)=2;
	a(90:100)=1;

	b=zeros(25,1);

	for i=1:25
		n = randi(100);
		b(i)=a(n);
	end	
	c=sort(b);
	media = mean(c);
	mediana = median(c);


	fprintf(file, 'Original series        : ')
	for i=1:25
		fprintf(file,'%d ',c(i))
	end
	fprintf(file,'     %.2f          %.2f\n',media, mediana)

	d1=c;
	d1(1:10)=1;
	media=mean(d1);
	mediana=median(d1);
	fprintf(file, 'Series with more ones  : ')
	for i=1:25
		fprintf(file,'%d ',d1(i))
	end
	fprintf(file,'     %.2f          %.2f\n',media, mediana)


	d2=c;
	d2(16:25)=5;
	media=mean(d2);
	mediana=median(d2);
	fprintf(file, 'Series with more fives : ')
	for i=1:25
		fprintf(file,'%d ',d2(i))
	end
	fprintf(file,'     %.2f          %.2f\n',media, mediana)

end

fclose(file);

endfunction
