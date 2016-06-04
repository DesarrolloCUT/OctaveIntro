function plotparab(a,b)
% Dibuja un paraboloide elíptico

   if nargin < 2
      a=1; 
      b=1;
   end

   t = linspace(0,2*pi,100);
   u = linspace(0,2*pi,100);
   [tt, uu] = meshgrid(t, u);

   x = a * cos(tt) .* cos(uu);
   y = b * cos(tt) .* sin(uu);
   z = (cos(tt)).^ 2;

   mesh(x,y,z);
   axis equal;

end
