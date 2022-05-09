*  NLP written by GAMS Convert at 04/20/04 14:50:36
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       3       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       7       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4,e5;


e1..  - (sqr(2*sqr(x1) - x2) + sqr(x2 - 6*sqr(x1))) + objvar =E= 0;

e2.. x1 - (x1*x2 + 10*x2) =E= 0;

e3..    x1 - 3*x2 =E= 0;

e4..    x1 + x2 =L= 1;

e5..  - x1 + x2 =L= 2;

* set non default bounds


* set non default levels

x1.l = 10; 
x2.l = -10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
