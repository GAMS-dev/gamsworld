$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:53
*  
*  Equation counts
*     Total       E       G       L       N       X
*        11       3       0       8       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       3       6       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        27      25       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,b3,b4,b5,b6,b7,b8,objvar;

Binary Variables b3,b4,b5,b6,b7,b8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - 7*x1 - 10*x2 + objvar =E= 0;

e2.. x1**1.2*x2**1.7 - 7*x1 - 9*x2 =L= -24;

e3..  - x1 - 2*x2 =L= -5;

e4..  - 3*x1 + x2 =L= 1;

e5..    4*x1 - 3*x2 =L= 11;

e6..    x1 - b3 - 2*b4 - 4*b5 =E= 1;

e7..    x2 - b6 - 2*b7 - 4*b8 =E= 1;

e8..    b3 + b5 =L= 1;

e9..    b6 + b8 =L= 1;

e10..    b4 + b5 =L= 1;

e11..    b7 + b8 =L= 1;

* set non default bounds

x1.lo = 1; x1.up = 5; 
x2.lo = 1; x2.up = 5; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
