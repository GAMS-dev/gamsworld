$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:42
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       3       0       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       3       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17      15       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,b3,b4,b5,objvar;

Positive Variables x1,x2;

Binary Variables b3,b4,b5;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - 2*x1 - 3*x2 - 1.5*b3 - 2*b4 + 0.5*b5 + objvar =E= 0;

e2.. sqr(x1) + b3 =E= 1.25;

e3.. x2**1.5 + 1.5*b4 =E= 3;

e4..    x1 + b3 =L= 1.6;

e5..    1.333*x2 + b4 =L= 3;

e6..  - b3 - b4 + b5 =L= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 

$if set nostart $goto modeldef
* set non default levels

x1.l = 1; 
x2.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
