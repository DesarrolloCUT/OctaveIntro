function [minh, maxh] = minmaxdem(A)
	% Cálcula las cotas máxima y mínima de un MDE
	minh = min(min(A));
	maxh = max(max(A));
end