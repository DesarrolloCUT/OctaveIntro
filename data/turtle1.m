function turtle1(command, value)
   % Tortuga básica para gráficos

      if strcmp(command,'GIRA')
         gira(value);
      elseif strcmp(command, 'AVANZA')
         avanza(value);
      else 
         dispError(command);
      end
   end

   function gira(value)
      fprintf('GIRA %6.2f\n', value)
   end

   function avanza(value)
      fprintf('AVANZA %6.2f\n', value)
   end

   function dispError(command)
      fprintf('Comando no reconocido: %s\n', command)
   end