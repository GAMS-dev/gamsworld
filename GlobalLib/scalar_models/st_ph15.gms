*  NLP written by GAMS Convert at 08/30/02 11:35:55
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       1       0       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        21      17       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..    x1 - x2 + 3*x3 - 2*x4 =L= 6;

e2..  - x1 + 4*x2 + x3 - 2*x4 =L= 7;

e3..    2*x1 + x2 + 2*x3 + x4 =L= 29;

e4..    x1 - x2 + x3 + x4 =L= 11;

e5..  - (16*x1 - 4*sqr(x1) - 0.5*sqr(x2) + x2 - 2.5*sqr(x3) + 15*x3 - sqr(x4)
      + 8*x4) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
