function is = isInEllipse(a,b,P)
% Devuelve true si el punto P esta en el borde o 
% en el interior de la elipse de semiejes a y b

   x = P(1);
   y = P(2);
   result = (x*x/a/a) + (y*y/b/b);
   if result <=1
      is = true;
   else 
      is = false;
   end
end

