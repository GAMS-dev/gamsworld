$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:35:05
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       2       1       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       6       1       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,x2,objvar;

Positive Variables x2;

Binary Variables b1;

Equations  e1,e2,e3;


e1..  - sqr(x2) - b1 =L= -1.25;

e2..    b1 + x2 =L= 1.6;

e3..  - b1 - 2*x2 + objvar =E= 0;

* set non default bounds

x2.up = 1.6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
