function typefile(filename)
% Muestra un fichero de texto en pantalla

  fid = fopen(filename, 'r');
  if fid < 3
    fprintf('ERROR al abrir fichero\n');
    return;
  end
  
  while ~feof(fid)
    cadlin = fgetl(fid);
    fprintf('%s\n',cadlin)
  end

  r = fclose(fid);
  if r == 0
    fprintf('OK\n')
  else
    fprintf('ERROR al cerrar fichero')
  end
end