function circle()
       % Dibuja un círculo utilizando la función turtle()
       global x y angulo;
       turtle('INIT');
       
       close();
       hold on;
       
       for i = 0 : 90
          turtle('AVANZA', 1);
          turtle('GIRA',4);       
       end
	end
