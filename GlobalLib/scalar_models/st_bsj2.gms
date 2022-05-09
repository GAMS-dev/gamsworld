*  NLP written by GAMS Convert at 08/30/02 11:01:22
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        19      16       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables x1,x2,x3;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 + x2 - x3 =L= 1;

e2..  - x1 + x2 - x3 =L= -1;

e3..    12*x1 + 5*x2 + 12*x3 =L= 34.8;

e4..    12*x1 + 12*x2 + 7*x3 =L= 29.1;

e5..  - 6*x1 + x2 + x3 =L= -4.1;

e6..  - (2*x1 - sqr(x1) - sqr(x2) - sqr(x3) + 2*x3) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
