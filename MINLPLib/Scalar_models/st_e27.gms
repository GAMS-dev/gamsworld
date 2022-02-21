$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:35:05
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         7       1       0       6       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       3       2       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17      15       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,x3,x4,objvar;

Positive Variables x3,x4;

Binary Variables b1,b2;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - x3 + 3*x4 =L= 5;

e2..    2*x3 - x4 =L= 5;

e3..  - 2*x3 + x4 =L= 0;

e4..    x3 - 3*x4 =L= 0;

e5..  - 6*b1 + x3 =L= 0;

e6..  - 5*b2 + x4 =L= 0;

e7..  - (4*x3 - sqr(x3) - sqr(x4) + 2*x4) - 2*b1 - 2*b2 + objvar =E= 2;

* set non default bounds

x3.up = 6; 
x4.up = 5; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
