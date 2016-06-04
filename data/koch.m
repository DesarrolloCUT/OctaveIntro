function koch(length, level)
% Dibuja la curva de Koch para un nivel determinado
   
   hold off;
   close;
   hold on;
   xlim([-10, 2*length*sind(60)+10]);
   ylim([-10-length*sind(60), 10+length*sind(60)]);
   
   global x y angle;
   turtle('INIT');

   drawkoch(length, level);
   turtle('GIRA', -120);
   drawkoch(length, level);
   turtle('GIRA', -120);
   drawkoch(length, level);

end