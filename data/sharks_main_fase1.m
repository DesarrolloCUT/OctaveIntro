function sharks_main()
	global time
	
	initFishAndSharks();

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
	fprintf('\ninitFishAndShark()\n\n')
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




