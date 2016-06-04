function pp = puntoprod(v, w)
% Calcula el punto producto de dos vectores que recibe como argumento

% Comprobación del número de argumentos recibidos
if (nargin ~= 2) 
	pp = NaN;
	return;
end

% Comprobación de la dimensión de los vectores
if (size(v,1) ~= 1 & size(v,2) ~= 1) 
	pp = NaN;	
	return;
elseif (size(w,1) ~= 1 & size(w,2) ~= 1) 
	pp = NaN;	
	return;
elseif (length(v) ~= length(w))
	pp = NaN;	
	return;
end

pp = 0;
for index = 1:length(v)
	pp = pp + v(index) * w(index);
end



