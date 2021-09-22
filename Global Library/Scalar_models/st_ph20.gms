*  NLP written by GAMS Convert at 08/30/02 11:39:11
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        10       1       0       9       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        28      26       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables x1,x2,x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 4*x1 - 3*x2 + 4*x3 =L= 30;

e2..    4*x1 + 9*x2 - 2*x3 =L= 114;

e3..    2*x2 - x3 =L= 8;

e4..    2*x1 + 15*x2 - 8*x3 =L= 64;

e5..    x2 =L= 14;

e6..  - 4*x1 + 3*x2 - 2*x3 =L= -18;

e7..    4*x1 - 9*x2 + 4*x3 =L= -6;

e8..  - 6*x1 + 5*x2 - 4*x3 =L= -40;

e9..    4*x1 - 9*x2 - 3*x3 =L= -132;

e10..  - (15*x1 - sqr(x1) - sqr(x2) - 2*x2) - x3 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
