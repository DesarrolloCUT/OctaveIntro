function spiral3d()

	t = 0:0.1:10*pi;
	r = linspace (0, 1, length(t));
	z = linspace (0, 1, length(t));
	plot3 (r.*sin(t), r.*cos(t), z, 'linewidth',2);


end
