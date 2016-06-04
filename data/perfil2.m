function perfil1(filename, distance)
% Extrae puntos equiespaciados de un perfil de carreteras
% Versión sin utilizar subfunción

% Control de errores de entrada
if distance<=0 || distance>=8000
	fprintf('ERROR: distancia incorrecta %.2f \n', distance)
	return;
end
fprintf('Filename: %s \nDistance: %.2f \n', filename, distance)

% Generación del vector s
s=(0:distance:8000);
if s(end) < 8000
	% Añadimos s=8000 si no estaba incluido
	s = [s, 8000];
end
fprintf('Puntos: %d \nÚltimo: %f \n', length(s), s(end))

% Generación del vector z
z=zeros(length(s));
for i=1:length(s)
	if s(i)>=0 && s(i)<=2000
		z(i) = 800 + 0.015 * s(i);
	elseif s(i)>2000 && s(i)<6000
		z(i) = 782.5 + 0.0325 * s(i) - 4.37e-6 * s(i)^2;
	elseif s(i)>=6000 && s(i)<=8000
		z(i) = 700 - 0.02 * s(i);
	else
		z(i) = -1.0;
	end
end

% Apertura del fichero para escritura
file = fopen(filename,'w');
if file<3
	fprintf('ERROR: No se pudo crear el fichero %s', filename)
	return;
end

% Escritura de los datos en el fichero
for i=1:length(s)
	fprintf(file, '%.2f %.2f\n', s(i), z(i));
	% Se podrían escribir también separados por coma
	% fprintf(file, '%.2f, %.2f\n', s(i), z(i));
end

% Cerrar fichero y salir del programa
fclose(file);
return;
end

function z=altitud(s)
end
