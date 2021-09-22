*  NLP written by GAMS Convert at 07/19/01 13:40:25
*  
*  Equation counts
*     Total       E       G       L       N       X
*         7       5       0       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        34      24      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - x6 + objvar =E= 0;

e2..    2*x1 + x2 + x3 + x4 + x5 =E= 6;

e3..    x1 + 2*x2 + x3 + x4 + x5 =E= 6;

e4..    x1 + x2 + 2*x3 + x4 + x5 =E= 6;

e5..    x1 + x2 + x3 + 2*x4 + x5 =E= 6;

e6.. x1*x2*x3*x4*x5 - x6 =L= 1;

e7..  - x1*x2*x3*x4*x5 - x6 =L= -1;

* set non default bounds

x1.lo = -2; x1.up = 2; 
x2.lo = -2; x2.up = 2; 
x3.lo = -2; x3.up = 2; 
x4.lo = -2; x4.up = 2; 
x5.lo = -2; x5.up = 2; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
