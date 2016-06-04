function plotdem(A)
	% Realiza un grafico 3d de un MDE
	hold on;
	xlabel('X');
	ylabel('Y');
	view(240,60);
	meshz(A);
end