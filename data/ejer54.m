% Comprueba si un numero es raiz de ax2 + bx + c

fprintf('Comprueba si un numero es raiz de ax2 + bx + c\n')

coefs = input('Teclee coeficientes en la forma [a, b , c]: ');
x0 = input('Valor de x a comprobar: ');

valor = coefs(1)*x0*x0 + coefs(2)*x0 + coefs(3);

if valor==0 
	esraiz = logical(1);
	cad = 'es raiz';
else 
	esraiz = false;
	cad = 'no es raiz'
end

fprintf('RESULTADO DE LA COMPROBACION:  %s\n',cad)



