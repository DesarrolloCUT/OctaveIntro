function readmdt(filename)
% Lee un fichero raster en formato ASC

   file = fopen(filename,'r');
   if file <3
      fprintf('Error al abrir fichero %s', filename)
      return;
   end

   for i=1:6
      metadato = fgets(file);
      fprintf("%s", metadato)
   end

   filas = 410;
   columnas = 601;
   A = fscanf(file, '%f', [columnas, filas]);
   A = A';
   
   hold off;
   close;
   hold on;
   xlim([0,610]);
   ylim([0,410]);
   xlabel('x');
   ylabel('y');
   view(240,60);   

   meshz(A);

   fclose(file);

end