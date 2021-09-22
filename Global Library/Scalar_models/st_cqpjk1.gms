*  NLP written by GAMS Convert at 08/31/02 18:57:10
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       9       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1;

Equations  e1,e2,e3;


e1..  - x1 - x2 - x3 - x4 =L= -1;

e2..    x1 + x2 + x3 + x4 =L= 1;

e3..  - (2*x1*x1 - 1.33333*x1 + 4*x2*x2 - 2.66667*x2 + 6*x3*x3 - 4*x3 + 0.5*x4*
     x4 - 10*x4) + objvar =E= 0;

* set non default bounds

x3.lo = -10000; x3.up = 10000; 
x4.lo = -10000; x4.up = 10000; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
