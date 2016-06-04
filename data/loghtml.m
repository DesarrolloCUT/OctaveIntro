function result = loghtml(filename)
% Convierte un fichero de log en página web
  
  result = false;
  fid = fopen(filename, 'r');
  if fid < 3 
    fprintf('Error al abrir fichero %s', filename)
    return;
  end

  fid2 = fopen('log.html', 'w');
  if fid2 < 3 
    fprintf('Error al abrir fichero log.html')
    return;
  end

  fprintf(fid2, '<html><head></head><body>');

  while ~ feof(fid)
    line = fgetl(fid);
    fprintf(fid2, '<p>%s</p>', line);
  end

  fprintf(fid2,'</body></html>');
  
  fclose(fid);
  fclose(fid2);
  
end