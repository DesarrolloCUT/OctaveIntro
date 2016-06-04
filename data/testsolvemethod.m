function testsolvemethod()
% Calcula el tiempo en resolver un sistema de ecuaciones
% por distintos procedimientos

	n = [];
	t1 = [];
	t2 = [];
	t3 = [];
	counter = 1;
	for i = 100:100:1500
		A = rand(i);
		b = rand(i,1);
		n(counter) = i;
		t1(counter)=metodoInversa(A,b);
		t2(counter)=operadorBackslash(A,b);
		t3(counter)=factorLu(A,b);
		counter++;
	end
	hold on
	plot(n,t1,'r','linewidth',2);
	plot(n,t2,'b','linewidth',2);
	plot(n,t3,'k','linewidth',2);
end

function t = metodoInversa(A,b)
	tic();
	AA = inv(A);
	x = AA*b;
	t=toc;
end

function t = operadorBackslash(A,b)
	tic();
	x = A\b;
	t=toc();
end

function t = factorLu(A,b)
	tic();
	[L,U,P] = lu(A);
	y = L\P*b;
	x = U\y;
	t = toc();
end
