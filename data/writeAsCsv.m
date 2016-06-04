function result = writeAsCsv(filename, matrix)

   result = false;
   fid = fopen(filename, 'w');
   if(fid<3)
      fprintf('ERROR opening file %s\n', filename)
      return;
   end

   [m,n] = size(matrix);

   for fil=1:m
      for col = 1:n
         fprintf(fid,'%f',matrix(fil,col));
		    if col < n
			   fprintf(fid,',');
            end
      end
      fprintf(fid,'\n');
   end

   status = fclose(fid);
   if(status == 0) 
      result = true;
   end
end
