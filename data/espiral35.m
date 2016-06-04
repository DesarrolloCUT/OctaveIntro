

% Discretizamos ro y theta
theta = linspace(0, 10*pi, 300);
ro = 3 - 5 .* (theta);

% Transformamos a cartesianas
x = ro .* cos(theta);
y = ro .* sin(theta);

% Ploteamos
plot(x,y)
axis equal

