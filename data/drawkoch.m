function drawkoch(length, depth)	
	if depth == 0
		turtle('AVANZA', length);
	else
		drawkoch(length/3, depth-1);
		turtle('GIRA', 60);
		drawkoch(length/3, depth-1);
		turtle('GIRA', -120);
		drawkoch(length/3, depth-1);
		turtle('GIRA', 60);
		drawkoch(length/3, depth-1);
	end	
end
