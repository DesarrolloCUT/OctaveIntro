function drawArquimedes(a, b)

	theta=[0:0.1:8*pi];
	x = (a + b*theta) .* cos(theta);
	y = (a + b*theta) .* sin(theta);

	plot(x,y, 'linewidth',2)
	
end
