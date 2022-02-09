*  NLP written by GAMS Convert at 07/19/01 13:39:34
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         2       2       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         2       1       1       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,objvar;

Equations  e1;


e1..  - (4*sqr(x1) - 4*POWER(x1,3) + POWER(x1,4)) + objvar =E= 0;

* set non default bounds

x1.lo = -5; x1.up = 5; 

* set non default levels

x1.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
