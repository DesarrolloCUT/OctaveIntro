k=4;
theta0 = 2;
a = 5;

theta = linspace(0,2*pi,200);

x = a.*cos(k*theta + theta0).*cos(theta);
y = a.*cos(k*theta + theta0).*sin(theta);

plot(x,y)
axis equal
