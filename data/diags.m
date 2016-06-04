A=input('Introduce una matriz cualquiera')
[f,c]=size(A);
maxi=A(1,1);
fila=1;col=1;
for i=1:f
	if A(i,i)>maxi
		maxi=A(i,i);
		fila=i;
		col=i;
	end
	if A(i,c-(i-1))>maxi
		maxi=A(i,c-(i-1));
		fila=i;
		col=c-(i-1);
	end
end
fprintf('El valor máximo de las diagonales es %.2f y se sitúa en la fila %d y columna %d\n',maxi,fila,col);