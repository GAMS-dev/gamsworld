*  NLP written by GAMS Convert at 08/29/02 12:49:54
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       1      12       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3;


e1..  - (-x3*sqr(1 - x1)*sqr(1 - x4) - (1 - x3)*sqr(1 - x2*(1 - (1 - x1)*(1 - 
     x4)))) =L= 0.1;

e2.. (-x3*sqr(1 - x1)*sqr(1 - x4)) - (1 - x3)*sqr(1 - x2*(1 - (1 - x1)*(1 - x4)
     )) =L= 0;

e3..  - (200*x1**0.6 + 200*x2**0.6 + 200*x3**0.6 + 300*x4**0.6) + objvar =E= 0;

* set non default bounds

x1.lo = 0.5; x1.up = 1; 
x2.lo = 0.5; x2.up = 1; 
x3.lo = 0.5; x3.up = 1; 
x4.lo = 0.5; x4.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
