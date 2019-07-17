declare name "HOALibInPhase3D4";
declare title "High Order Ambisonics library";
declare author "Pierre Guillot, Eliott Paris";
declare copyright "2012-2015 Guillot, Paris, CICM, Labex Arts H2H, U. Paris 8";
import("math.lib");

HoaOptimInPhase3D(N) = par(i, (N+1) * (N+1), InPhase(N, degree(i), _))
with 
{
	// The degree l of the harmonic[l, m]	
	degree(index)  = int(sqrt(index));
   	InPhase(N, l, _)= _ * (fact(N) * fact(N)) / (fact(N - l) * fact(N + l))
	with
	{
		fact(0) = 1;
		fact(n) = n * fact(n-1);
	};
};

process = HoaOptimInPhase3D(4);
