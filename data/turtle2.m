function turtle2(command, value)
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
      fprintf('GIRA %f\n', value)
   end

   function avanza(value)
      fprintf('AVANZA %f\n', value)
   end

   function disp()
      fprintf('x= %6.2f y= %6.2f angulo= %6.2f\n', x, y, angulo)
   end

   function init()
      x=0.0; y=0.0; z=0.0;
      disp();
   end

   function dispError(command)
      fprintf('Comando no reconocido: %s\n', command)
   end

