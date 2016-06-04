a = 10;
b = 1;

theta = linspace(0, 10*pi, 200);

x = (a + b*theta).*cos(theta);
y = (a + b*theta).*sin(theta);

plot(x,y)
axis equal


