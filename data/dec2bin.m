function b = dectobin(m)


if(m<0 | m>255)
  b = [];
  return;
end

b = int8(zeros(1,8));
m = int8(m);
dos = int8(2);

div = m;
index = 8;
while(div>2) 
  resto = rem(div,2);
  b(index) = resto;
  if(resto == 1)
    div = div / dos - 1;
  else 
    div = div / dos;
  end
  index = index -1;
end
b(index) = div;

end