function is = isVector(v)
% Devuelve logical 1 si la variable recibida 
% es un vector y logical 0 en otro caso.

	% Comprobación del número de argumentos
	if (nargin ~= 1) 
		is = logical(0);
		return;
	end

	if (xor(size(v,1)==1, size(v,2)==1))
		% Es un vector
		is = logical(1);
	else 
		% No es un vector
		is = logical(0);
		return;
	end

end




