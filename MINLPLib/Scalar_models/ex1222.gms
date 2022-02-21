$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:44
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       1       0       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       3       1       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         9       7       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,b3,objvar;

Binary Variables b3;

Equations  e1,e2,e3,e4;


e1..  - exp(x1 - 0.2) - x2 =L= 0;

e2..    x2 + 1.1*b3 =L= -1;

e3..    x1 - 1.2*b3 =L= 0;

e4..  - 5*sqr(x1 - 0.5) + 0.7*b3 + objvar =E= 0.8;

* set non default bounds

x1.lo = 0.2; x1.up = 1; 
x2.lo = -2.22554; x2.up = -1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
