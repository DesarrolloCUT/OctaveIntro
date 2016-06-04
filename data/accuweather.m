function str = accuweather(lon, lat)
% Devuelve los datos proporcionados por 
% el servicio AccuWeather

	url = 'api.openweathermap.org/data/2.5/weather'

	lonstr = num2str(lon);
	latstr = num2str(lat);
	locstr = strcat(latstr, ',',lonstr)
	str = urlread(url, 'get',{'q', 'Madrid'})







end
