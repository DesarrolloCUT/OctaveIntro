function drawLogarithm(a, b)

	theta=[0 : 0.1 : 10*pi];
	x = (a * exp(b*theta)) .* cos(theta);
	y = (a * exp(b*theta)) .* sin(theta);

	plot(x,y, 'linewidth',2)
	
end
