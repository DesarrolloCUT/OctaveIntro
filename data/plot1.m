function plot1(a,b,c,d)

	t=linspace(-pi,pi,1e6);
	x = cos(a*t) - cos(b*t).^3;
	y = sin(c*t) - sin(d*t).^3;
	plot(x,y)
    title(sprintf('a=%d b=%d c=%d d=%d', a,b,c,d));

end
