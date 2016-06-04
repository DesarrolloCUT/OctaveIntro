function triang()
       % Dibuja triángulos
       global x y angulo;
       turtle('INIT');
       
       close();
       hold on;
       
       for i = 1 : 3
          turtle('AVANZA', 10);
          turtle('GIRA', 120);
          turtle('AVANZA', 10);
          turtle('GIRA', 120);
          turtle('AVANZA', 10);       
          turtle('GIRA', 120);
          turtle('AVANZA', 10);       
       end
	end
