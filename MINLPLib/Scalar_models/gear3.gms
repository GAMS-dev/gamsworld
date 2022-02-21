$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:54
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       5       0       4       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       9       4       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,i6,i7,i8,i9;

Integer Variables i6,i7,i8,i9;

Equations  e1,e2,e3,e4,e5;


e1..  - sqr(0.14427932477276 - x2*x3/(x4*x5)) + objvar =E= 0;

e2..    x2 - i6 =E= 0;

e3..    x3 - i7 =E= 0;

e4..    x4 - i8 =E= 0;

e5..    x5 - i9 =E= 0;

* set non default bounds

x2.lo = 12; x2.up = 60; 
x3.lo = 12; x3.up = 60; 
x4.lo = 12; x4.up = 60; 
x5.lo = 12; x5.up = 60; 
i6.lo = 12; i6.up = 60; 
i7.lo = 12; i7.up = 60; 
i8.lo = 12; i8.up = 60; 
i9.lo = 12; i9.up = 60; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
