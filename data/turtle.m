function turtle(command, value)
   % Tortuga básica para gráficos
   % Necesita la existencia de unas variables globales x, y, angulo

      global x y angulo;

      if strcmp(command,'GIRA')
         gira(value);
      elseif strcmp(command, 'AVANZA')
         avanza(value);
      elseif strcmp(command, 'DISP')
         disp();
      elseif strcmp(command, 'INIT')
         init();
      else 
         dispError(command);
      end
   end

   function gira(value)
      global angulo;
      % fprintf('GIRA %f\n', value)
      angulo = angulo + value;
      if abs(angulo) > 360 
         angulo = rem(angulo, 360);
      end
      if angulo == 360 | angulo == -360
         angulo = 0;
      end
      if angulo < 0
         angulo = 360 + angulo;
      end
   end
   
   function avanza(value)
      global x y angulo;
      % fprintf('AVANZA %f\n', value)
      oldx = x;
      oldy = y;
      incx = value * cosd(angulo);
      incy = value * sind(angulo);
      x = x + incx;
      y = y + incy;
      xx = [oldx, x];
      yy = [oldy, y];
      plot(xx, yy, 'linewidth',2)
   end

   function disp()
      global x y angulo;
      fprintf('x= %6.2f y= %6.2f angulo= %6.2f\n', x, y, angulo)
   end

   function init()
      global x y angulo;
      x=0.0; y=0.0; angulo=0.0;
      disp();
   end

   function dispError(command)
      fprintf('Comando no reconocido: %s\n', command)
   end

