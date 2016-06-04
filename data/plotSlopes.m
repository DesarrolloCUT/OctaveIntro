function plotSlopes(filename) 
	
   [s, p] = readSlopes(filename);
   if(length(s) > 0)
      plot(s,p);
   end

end
