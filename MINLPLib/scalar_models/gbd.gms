$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:48
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       2       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       2       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17      16       1       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,b3,b4,b5;

Binary Variables b3,b4,b5;

Equations  e1,e2,e3,e4,e5;


e1..  - 5*sqr(x2) + objvar - b3 - b4 - b5 =E= 0;

e2..    3*x2 - b3 - b4 =L= 0;

e3..  - x2 + 0.1*b4 + 0.25*b5 =L= 0;

e4..    b3 + b4 + b5 =G= 2;

e5..    b3 + b4 + 2*b5 =G= 2;

* set non default bounds

x2.lo = 0.2; x2.up = 1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
