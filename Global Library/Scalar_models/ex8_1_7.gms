*  NLP written by GAMS Convert at 07/19/01 13:39:55
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       2       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        20       7      13       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1.. sqr(x2) + POWER(x3,3) + x1 =L= 6.24264068711929;

e2.. (-POWER(x3,3)) - sqr(x2) - x1 =L= -6.24264068711929;

e3..  - sqr(x3) + x2 + x4 =L= 0.82842712474619;

e4.. sqr(x3) - x2 - x4 =L= -0.82842712474619;

e5.. 0.5*x1*x5 + 0.5*x1*x5 =E= 2;

e6..  - (sqr(x1 - 1) + sqr(x1 - x2) + POWER(x2 - x3,3) + POWER(x3 - x4,4) + 
     POWER(x4 - x5,4)) + objvar =E= 0;

* set non default bounds

x1.lo = -5; x1.up = 5; 
x2.lo = -5; x2.up = 5; 
x3.lo = -5; x3.up = 5; 
x4.lo = -5; x4.up = 5; 
x5.lo = -5; x5.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
