*  NLP written by GAMS Convert at 08/30/02 11:29:31
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       1       0       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        10       7       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables x1,x2,x3;

Equations  e1,e2,e3,e4,e5;


e1..    x1 =L= 4;

e2..    x2 =L= 4;

e3..    x3 =L= 4;

e4..    2*x1 + 3*x2 + 4*x3 =L= 35;

e5..  - (x1 - 0.5*sqr(x1) - 0.5*sqr(x2) + x2 - 0.5*sqr(x3) + x3) + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
