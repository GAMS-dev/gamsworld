$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:55
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       2       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       3       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        15      13       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,b3,b4,b5,objvar;

Binary Variables b3,b4,b5;

Equations  e1,e2,e3,e4,e5,e6;


e1.. 8*x1 - 2*x1**0.5*sqr(x2) + 11*x2 + 2*sqr(x2) - 2*x2**0.5 =L= 39;

e2..    x1 - x2 =L= 3;

e3..    3*x1 + 2*x2 =L= 24;

e4..    x2 - b3 - 2*b4 - 4*b5 =E= 1;

e5..    b4 + b5 =L= 1;

e6..    5*x1 - 3*x2 + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 10; 
x2.lo = 1; x2.up = 6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
