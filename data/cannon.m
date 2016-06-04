function cannon()
	
	hold off;
	close();
	hold on;
	xlim([0,6000]);
	ylim([0,6000]);

	
	targetDist = 2000 + 4000*rand()
	plot(targetDist, 0, 'og', 'linewidth',150);

	angle = 45
	plotCannon(angle);

	while(angle>0) 
		oldangle = angle;
		angle = input("Angle: ");
		if(angle==0) 
			break;
		end
		deleteCannon(oldangle);
		plotCannon(angle);
		v = input("V= ");
		[x,y] = plotShot(angle, v);
		result = checkResult(x,targetDist);
		if result == true
			fprintf("Enhorabuena, ha acertado con angle=%5.2f y v=%6.2f\n", angle, v)
			break;
		end
	end

	hold off

end
function result = checkResult(x, targetDist)
	if (abs(x-targetDist)<100)
		result = true;
	else 
		result = false;
	end
end
function [x,y] = plotShot(angle, v) 
	x=0;
	y=0;
	vx = v*cosd(angle);
	vy = v*sind(angle);
	t = 0;
	while(true)
		t = t+4;
		vx = v*cosd(angle);
		vy = v*sind(angle) - 9.8 * t;
		x = x + vx;
		y = y + vy;
		if(y<=0) 
			y=0;
		end	
		plotBullet(x,y);
		if y==0 | x>6000
			break;
		end		
		sleep(1);
	end
end
function plotBullet(x,y)
	plot(x,y,'.k','linewidth',100);
end
function plotCannon(angle)
	length = 300;
	x=length*cosd(angle);
	y=length*sind(angle);
	plot([0,x],[0,y],'b','linewidth',5);
end
function deleteCannon(angle) 
	length = 300;
	x=length*cosd(angle);
	y=length*sind(angle);
	plot([0,x],[0,y],'w','linewidth',5);
end