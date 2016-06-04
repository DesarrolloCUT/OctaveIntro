function writeVector(filename, v)
% Escribe un vector de doubles en un fichero

fid = fopen(filename, 'w');
if fid < 3
  fprintf('ERROR')
  return;
end
  
for ind = 1: length(v)
  fprintf(fid, 'x(%d) = %12.6f\n', ind, v(ind));
end

r = fclose(fid);





end
