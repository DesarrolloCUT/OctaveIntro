function ccurve(length,level)
	if level == 0
		turtle('AVANZA',length);
	else 
		turtle('GIRA',45);
		ccurve(length/sqrt(2), level-1);
		turtle('GIRA',-90);
		ccurve(length/sqrt(2), level-1);
		turtle('GIRA',45);		
	end
end


