% Ejercicio 5.5
% Construir un programa que calcule los cubos 
% de los números naturales cuyo cuadrado sea 
% menor que un número m (que se pide al usuario) 
% y los introduzca en un vector v
%
m = input("m = ");
n=0;
v=[0];
while(true) 
	n = n + 1;
	n2 = n*n;
	if(n2 < m) 
		v(n)=n*n*n;
	else 
		break;
	end
end

fprintf('V = [')
fprintf('%d ',v)
fprintf('\b]\n')

