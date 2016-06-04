function r = dado(n)
% dado() : devuelve un numero r al azar entre 1 y 6
	if(nargin == 0) 
		r = round(1 + (6-1) * rand());   
		return;
	end

    if(size(n,1) ~=1 | size(n,2) != 1 | n<=0) 
		r = round(1 + (6-1) * rand());   
    	return;
    end

    n = round(n);
    r = [];
    for ind = 1 : n
    	r(ind) = round(1 + 5 * rand());
    end
end

