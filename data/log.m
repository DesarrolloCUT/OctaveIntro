function result = log(filename, msg)
% Añade un mensage de log al filename
  
  result = false;
  fid = fopen(filename, 'a');
  if fid < 3 
    fprintf('%s', 'Error al abrir fichero')
    return;
  end
  
  fprintf(fid, '%s\n', msg);
  
  r = fclose(fid);
  if r == 0
    result = true;
  end

end