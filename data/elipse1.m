
a=10;
b=5;

theta = linspace(0, 2*pi, 200);

r = 1 ./ (sqrt(cos(theta).*cos(theta) ./ a ./ a + sin(theta) .* sin(theta) ./ b ./ b));

x = r .* cos(theta);
y = r .* sin(theta);

plot(x,y)
axis equal

