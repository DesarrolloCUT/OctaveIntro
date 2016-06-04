function [max, pos] = maxx(V)

	max = V(1);
	pos = 1;
	for k = 1 : length(V)
		if V(k) > max
			max = V(k);
			pos = k;
		end
	end
end

