function A = prueba(v,f,c)

	
	A_p = zeros(f,c);
	for i=1:f
		for j=1:c
			A_p(i,j)=v(j)+A_p;
			A = A_p;
		end
	end
end



