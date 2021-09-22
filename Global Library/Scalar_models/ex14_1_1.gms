*  NLP written by GAMS Convert at 07/19/01 13:40:23
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        14       6       8       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4,e5;


e1..  - x3 + objvar =E= 0;

e2.. 2*sqr(x2) + 4*x1*x2 - 42*x1 + 4*POWER(x1,3) - x3 =L= 14;

e3.. (-2*sqr(x2)) - 4*x1*x2 + 42*x1 - 4*POWER(x1,3) - x3 =L= -14;

e4.. 2*sqr(x1) + 4*x1*x2 - 26*x2 + 4*POWER(x2,3) - x3 =L= 22;

e5.. (-2*sqr(x1)) - 4*x1*x2 + 26*x2 - 4*POWER(x2,3) - x3 =L= -22;

* set non default bounds

x1.lo = -5; x1.up = 5; 
x2.lo = -5; x2.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
