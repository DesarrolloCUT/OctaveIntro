function C = prodmat(A, B)
   % prodmat.m : Calcula la matriz C, producto de las matrices A y B 

   % Comprobación del número de argumentos recibidos
   if (nargin ~= 2) 
      C = [];
      return;
   end

   % Comprobación de la dimensión de las matrices
   % El número de columnas de A debe ser igual al de filas de B
   % Si las dimensiones no son las correctas el programa finaliza
   if (size(A,2) ~= size(B,1))
      C = [];
      return;
   end

   % Preparo la matriz solución con las dimensiones adecuadas
   % Si son A(m,n) y B(n,p) las dimensiones de C seran C(m,p)
   C = zeros(size(A,1),size(B,2));

   % Cálculo del producto mediante dos bucles for anidados
   for fil = 1: size(A,1)
      for col = 1:size(B,2)
         sum = 0;
         for(index=1:size(A,2))
            sum = sum + A(fil, index) * B(index, col);
         end
         C(fil,col) = sum;
         fprintf("%10.2f\t",C(fil,col));
      end
      fprintf("\n");
   end
end
