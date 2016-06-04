function cannon3d(azimut, elevacion, V0)
% Representa gráficamente el disparo parabólico en 3D

   g = 9.81;
   v0x = V0 * cosd(elevacion) * sind(azimut);
   v0y = V0 * cosd(elevacion) * cosd(azimut);
   v0z = V0 * sind(elevacion);

   tf = 2 * v0z / g;
   t = [0 : 1 : tf];

   x = v0x*t;
   y = v0y*t;
   z = v0z*t - 0.5*g*(t .* t);

   xf = v0x*2*v0z/g;
   yf = v0y*2*v0z/g;
   zf = 0;

   hold off;
   close();
   hold on;
   xlabel('x');
   ylabel('y');
   zlabel('z');
   view(3);   
   plot3(x,y,z, 'linewidth', 2)
   plot3(xf,yf,zf,'*','linewidth',8)

end
