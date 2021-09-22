*  NLP written by GAMS Convert at 07/19/01 13:39:53
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         3       1       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1..  - (1 + sqr(1 + x1 + x2)*(19 + 3*sqr(x1) - 14*x1 + 6*x1*x2 - 14*x2 + 3*
     sqr(x2)))*(30 + sqr(2*x1 - 3*x2)*(18 + 12*sqr(x1) - 32*x1 - 36*x1*x2 + 48*
     x2 + 27*sqr(x2))) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
