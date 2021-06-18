$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:21
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         4       1       3       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       2       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       6       7       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,x3,objvar;

Integer Variables i1,i2;

Equations  e1,e2,e3,e4;


e1.. sqrt(x3) + i1 + 2*i2 =G= 10;

e2.. 0.240038406144983*sqr(i1) - i2 + 0.255036980362153*x3 =G= -3;

e3.. sqr(i2) - 1/(POWER(x3,3)*sqrt(x3)) - 4*i1 =G= -12;

e4..  - (sqr(i1 - 3) + sqr(i2 - 2) + sqr(4 + x3)) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
x3.lo = 0.001; x3.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 
x3.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
