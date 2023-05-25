* simple MPEC model 
variables 
	theta,
	x 'design variables',
	y 'state variables'; 

x.lo = -1; 
x.up = 2; 
 
equations 
cost, h, g, F; 
 
cost.. theta =e= sqr(x-1-y); 
 
h.. sqr(x) =l= 2; 
 
g.. sqr(x-1) + sqr(y-1) =l= 3; 
 
F.. y - sqr(x) + 1 =g= 0; 
 
model three / cost, h, g, F.y /; 
 
solve three using mpec minimizing theta;
