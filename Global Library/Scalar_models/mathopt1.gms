*  NLP written by GAMS Convert at 04/20/04 14:50:36
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       2       0       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       3       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1..  - (10*sqr(sqr(x1) - x2) + sqr((-1) + x1)) + objvar =E= 0;

e2.. x1 - x1*x2 =E= 0;

e3..    3*x1 + 4*x2 =L= 25;

* set non default bounds

x1.lo = -10; x1.up = 20; 
x2.lo = -15; x2.up = 20; 

* set non default levels

x1.l = 8; 
x2.l = -14; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
