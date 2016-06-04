function [sup, perim] = areaperim(r)
% Calcula el área y el perimetro para un radio r

	sup = calc_sup(r);
	perim = calc_perim(r);

end

function sup = calc_sup(r)
	sup = pi * r * r;
end

function perim = calc_perim(r)
	perim = 2 * pi * r;
end

