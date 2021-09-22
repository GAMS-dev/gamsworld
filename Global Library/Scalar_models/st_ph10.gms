*  NLP written by GAMS Convert at 08/30/02 11:28:09
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       1       0       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       9       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Negative Variables x2;

Positive Variables x1;

Equations  e1,e2,e3,e4,e5;


e1..  - 2*x1 + x2 =L= 1;

e2..    x1 + 2*x2 =L= 7;

e3..    x1 + x2 =L= 5;

e4..    x1 - 2*x2 =L= 2;

e5..  - (3*x1 - 1.5*sqr(x1) - 3.5*sqr(x2) + 7*x2) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
