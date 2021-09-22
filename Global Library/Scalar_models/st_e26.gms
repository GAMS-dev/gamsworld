*  NLP written by GAMS Convert at 08/29/02 12:49:54
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

Positive Variables x1,x2;

Equations  e1,e2,e3,e4,e5;


e1..    0.7*x1 + x2 =L= 6.3;

e2..    0.5*x1 + 0.8333*x2 =L= 6;

e3..    x1 + 0.6*x2 =L= 7.08;

e4..    0.1*x1 + 0.25*x2 =L= 1.35;

e5..  - (-3*sqr(x1) - 5*x1 - 3*sqr(x2) - 5*x2) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 30; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
