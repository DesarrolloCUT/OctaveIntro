function hat()

	tx = ty = linspace (-8, 8, 41)';
	[xx, yy] = meshgrid (tx, ty);
	r = sqrt (xx .^ 2 + yy .^ 2) + eps;
	tz = sin (r) ./ r;
	meshc (tx, ty, tz);
end

