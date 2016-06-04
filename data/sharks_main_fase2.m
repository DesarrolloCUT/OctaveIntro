function sharks_main()
	global time
	
	initFishAndSharks();
	display();

	while true
		n = input('Nº de chronos (0 para terminar el programa): ');
		if(n == 0)
			break;
		else 
			for i=1:n
				time ++;
				avanza();
			end
		end
		display();
	end

	fprintf('Fin del programa\n')
end

function initFishAndSharks() 
global filas columnas nsharks nfish FISH SHARKS
	fprintf('\ninitFishAndShark()\n\n')
	fils = round(1 + (filas-1)*rand(1,nsharks+nfish));
	cols = round(1 + (columnas-1)*rand(1,nsharks+nfish));
	for i=1:nfish
		FISH(fils(i), cols(i)) = 1;
	end
	for i = nfish+1:nfish+nsharks
		SHARKS(fils(i), cols(i)) = 1;
	end
end

function avanza()
	global time
	fprintf('Avanza() time = %d \n', time)	
	fishSwingAndBreed();
	sharksHuntAndBreed();
end

function fishSwingAndBreed()
	fprintf('fishSwingAndBreed()\n')	

end

function sharksHuntAndBreed()
	fprintf('sharksHuntAndBreed()\n')	

end


function display() 
	global time FISH SHARKS
	clc();
	fprintf('Tiburones: %d; Peces: %d\n', sharksCount(), fishCount())

end


function n = fishCount() 
	global FISH
	n = sum(sum(FISH>0));
end

function n = sharksCount()
	global SHARKS
	n = sum(sum(SHARKS>0));
end




