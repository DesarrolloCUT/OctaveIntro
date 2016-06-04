function A = readdem(filename)
% Lee un fichero raster en formato ASC
% Devuelve la matriz de altitudes ordenada 
% en filas y columnas

      file = fopen(filename,'r');
      if file <3
         fprintf('Error al abrir fichero %s', filename)
         return;
      end

      for i=1:6
         metadato = fgets(file);
         fprintf('%s', metadato)
      end

      filas = 410;
      columnas = 601;
      A = fscanf(file, '%f', [columnas, filas]);
      A = A';
   
      fclose(file);
end