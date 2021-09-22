*  NLP written by GAMS Convert at 08/30/02 11:43:11
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31      25       6       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1..    6*x1 + x2 + 9*x4 + 3*x5 + 5*x6 =L= 96;

e2..    x1 + 7*x3 + 6*x4 + 2*x5 + 2*x6 =L= 72;

e3..    5*x1 + 4*x2 + x3 + 3*x4 + 8*x5 =L= 84;

e4..    9*x1 + x2 + 2*x4 + 7*x5 + 6*x6 =L= 100;

e5..    2*x1 + 6*x4 + 3*x5 + 9*x6 =L= 80;

e6..  - (6*x1 - 3*sqr(x1) - 2.5*sqr(x2) + 5*x2 - 2*sqr(x3) + 4*x3 - 1.5*sqr(x4)
      + 3*x4 - sqr(x5) + 2*x5 - 0.5*sqr(x6) + x6) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
