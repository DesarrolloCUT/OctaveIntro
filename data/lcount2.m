function count = lcount2(filename)
% Devuelve el numero de lineas de un fichero de texto
  
  count = -1;
  fid = fopen(filename, 'r');
  if fid < 3
    fprintf('ERROR al abrir fichero\n');
    return;
  end
  
  count =0;
  while ~feof(fid)
    cadlin = fgets(fid);
    %fprintf('%s',cadlin)
    count++;
  end

  r = fclose(fid);
  if r == 0
    fprintf('OK\n')
  else
    count =-1;
    fprintf('ERROR al cerrar fichero')
  end
end