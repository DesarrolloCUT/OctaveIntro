function s = sumvector(v)
% Suma las compnentes de un vector

	if(nargin ~= 1)
		s = NaN;
		return;
	end

	if( (size(v,1) ~= 1) & (size(v,2) ~= 1) )
		s = NaN;
		return;
	end

	s = 0;
	for index = 1: length(v)
		s = s + v(index);
	end

end
