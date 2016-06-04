function result = writeProfile(filename, space) 
	
	result = false;
	fid = fopen(filename,'w');
	if(fid<3)
		fprintf('Error, can''t open %s', filename);
		return;
	end

	s = 0;
	while s <= 5000
		fprintf(fid, '%f,%f\n', s, profile(s));
		s = s + space;
	end

	status = fclose(fid);
	if status == 0
		result = true;
	end
end

function z = profile(s) 
   if (s >= 0 & s <= 1000)
      z = 900 + 0.04*s;
   elseif (s > 1000 & s <= 3000)
      z = 882.50 + 0.075*s - 0.0000175*s*s;
   elseif (s > 3000 & s <= 5000)
      z = 1040 - 0.03*s;
   else 
      z = 0;
   end
end
