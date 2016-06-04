function plotparabhiper(a,b,c)
% Dibuja el paraboloide hiperbólico (silla de montar)
% plotparabhiper(a,b,c)
% z / c = x^2/a^2 - y^2/b^2

	if nargin < 3
	   a = 1; b = 1; c = 1;
	end

	x = linspace(-50,100,200);
	y = linspace(-100,0,200);
	[xx,yy] = meshgrid(x,y);

	zz = xx .* xx /a/a - yy.*yy/b/b;

	mesh(xx,yy,zz);
	%view(-25,35);	
end
