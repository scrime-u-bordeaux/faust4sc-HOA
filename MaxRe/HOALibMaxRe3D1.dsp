declare name "HOALibMaxRe3D1";
declare title "High Order Ambisonics library";
declare author "Pierre Guillot, Eliott Paris, Julien Colafrancesco";
declare copyright "2012-2015 Guillot, Paris, Colafrancesco, CICM, Labex Arts H2H, U. Paris 8";
import("math.lib");

HoaOptimMaxRe3D(N) = par(i, (N+1) * (N+1), MaxRe(N, degree(i), _))
with 
{
	// The degree l of the harmonic[l, m]	
	degree(index)  = int(sqrt(index));
   	MaxRe(N, l, _)= _ * cos(l  / (2*N+2) * PI);
};

process = HoaOptimMaxRe3D(1);
