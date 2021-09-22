$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:40:26
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       4       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        10       7       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        26      24       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,b7,b8,b9,objvar;

Positive Variables x1,x2,x3,x4,x5,x6;

Binary Variables b7,b8,b9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - 1.8*x1 - 1.8*x2 - 7*x3 - x4 - 1.2*x5 + 11*x6 - 3.5*b7 - b8 - 1.5*b9
      + objvar =E= 0;

e2..  - log(1 + x1) + x4 =E= 0;

e3..  - 1.2*log(1 + x2) + x5 =E= 0;

e4..  - 0.9*x3 - 0.9*x4 - 0.9*x5 + x6 =E= 0;

e5..    x6 - b7 =L= 0;

e6..    x4 - 1.111111*b8 =L= 0;

e7..    x5 - 1.111111*b9 =L= 0;

e8..    b8 + b9 =L= 1;

* set non default bounds


$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
