function polyplot(p)
% Representa el polinomio p en el intervalo comprendido entre sus raices

  r = roots(p);
  if length(r) == 0
     polyout(p,'X')
     fprinf("No tiene raices\n")
     return;
  end

  maxr = max(r);
  minr = min(r);
  
  x = linspace(minr-1, maxr+1,100);
  y = polyval(p, x);
  plot(x,y,"-r", "linewidth", 2);
  
  hold on;
  
  y2 = zeros(1,100);
  plot(x,y2);
  
  title(sprintf('%s',polyout(p,'x')));
  hold off
end