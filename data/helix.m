function helix(r, omega, k)

   z=[0 : 0.05 : 10*k];
   x= r .* cos(omega * z);
   y= r .* sin(omega * z);
   plot3(x,y,z, 'linewidth',5);
   
end