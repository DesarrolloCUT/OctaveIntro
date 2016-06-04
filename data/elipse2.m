a=10;
b=5;
e = sqrt(1 - b^ 2 / a^ 2);

theta = linspace(0, 2*pi, 200);

r = b ./ (sqrt(1 - e^2 .* cos(theta).*cos(theta)));

x = r .* cos(theta);
y = r .* sin(theta);

plot(x,y)
axis equal
