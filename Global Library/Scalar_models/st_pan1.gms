*  NLP written by GAMS Convert at 08/30/02 11:20:50
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
*        16      13       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables x1,x2,x3;

Equations  e1,e2,e3,e4,e5;


e1..    10*x1 + 0.2*x2 - 0.1*x3 =L= 11;

e2..  - 0.3*x1 + 9*x2 + 0.2*x3 =L= 8;

e3..  - 0.1*x1 + 0.4*x2 + 11*x3 =L= 12;

e4..    6*x1 + 8*x2 + 9*x3 =L= 18;

e5..  - (1.25*x1 - 2.5*sqr(x1) - 5*sqr(x2) + 2.5*x2 - 7.5*sqr(x3) + 5*x3)
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
