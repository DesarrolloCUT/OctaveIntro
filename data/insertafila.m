function B = insertafile(A,v,f)
% Inserta el vector v en la posicion de 
% la fila f de la matriz A

if(nargin <1)
  B = [];
  return;
end
B = A;
B(:)=NaN;  
if(nargin < 3) 
 return;
end
 
if(size(v,1) ~= 1) 
  return;
elseif (size(v,2) ~= size(A,2))
  return;
end

for(fila = 1:f-1)
  B(fila,:) = A(fila,:);
end
B(f,:) = v;
for(fila = f+1:size(A,1)+1)
  B(fila,:) = A(fila-1,:);
end

end
