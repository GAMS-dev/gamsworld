*  NLP written by GAMS Convert at 07/30/01 17:04:18
*  
*  Equation counts
*     Total       E       G       L       N       X
*         9       5       3       1       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       9       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        26      17       9       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Negative Variables x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - (x1*x2 + x5*x4) + x7 =E= 0;

e2..  - x1*x3 + x8 =E= 0;

e3..  - x7 - x8 - objvar =E= 0;

e4..  - x2 - x5 + x6 =E= 0;

e5..    x1 - 0.333333333333333*x4 =G= 0;

e6..    x1 - 0.5*x4 =L= 0;

e7.. x2*(x4 - x1) =G= 1500;

e8..  - 0.5*x2 + x3 - x5 =E= 0;

e9..  - 0.5*x2 + x5 =G= 0;

* set non default bounds

x4.lo = 40; x4.up = 68; 
x6.lo = 56; x6.up = 100; 
x7.up = 3000; 

* set non default levels

x1.l = 30; 
x4.l = 68; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
