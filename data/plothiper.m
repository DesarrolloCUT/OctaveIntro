function plothiper(a,b,c)
% Dibuja el hiperboloide de una o dos hojas
% plothiper(a,b,c)
% x = a*sqrt(1+u^2)cos(v)
% y = b*sqrt(1+u^2)sin(v)
% z = c*u

	if nargin < 3
	   a = 1; b = 1; c = 1;
	end

	u = linspace(0,10,100);
	v = linspace(0,2*pi,100);
	[uu,vv] = meshgrid(u,v);

	xx = a*sqrt(1 + uu .^ 2) .* cos(vv);
	yy = b*sqrt(1 + uu .^ 2) .* sin(vv);
	zz = c * uu;

	mesh(xx,yy,zz);
	
end
