function drawHyperbolic(a)

	theta=[0.5 : 0.1 : 8*pi];
	x = (a ./ theta) .* cos(theta);
	y = (a ./ theta) .* sin(theta);

	plot(x,y, 'linewidth',2)
	
end