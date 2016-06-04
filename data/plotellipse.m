function plotellipse(a,b)
% Dibuja la elipse de semiejes a y b centrada en el origen

	t = [-pi:0.1:pi+0.1];
	x = a * cos(t);
	y = b * sin(t);
	plot(x,y,'r', 'linewidth',3)
end
