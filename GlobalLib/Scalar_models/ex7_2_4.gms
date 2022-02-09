*  NLP written by GAMS Convert at 07/19/01 13:39:49
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       9       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        18       4      14       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1,e2,e3,e4,e5;


e1..  - (0.4*x1**0.67/x7**0.67 + 0.4*x2**0.67/x8**0.67 - x1 - x2) + objvar
      =E= 10;

e2.. 0.0588*x5*x7 + 0.1*x1 =L= 1;

e3.. 0.0588*x6*x8 + 0.1*x1 + 0.1*x2 =L= 1;

e4.. 4*x3/x5 + 2/(x3**0.71*x5) + 0.0588*x7/x3**1.3 =L= 1;

e5.. 4*x4/x6 + 2/(x4**0.71*x6) + 0.0588*x4**1.3*x8 =L= 1;

* set non default bounds

x1.lo = 0.1; x1.up = 10; 
x2.lo = 0.1; x2.up = 10; 
x3.lo = 0.1; x3.up = 10; 
x4.lo = 0.1; x4.up = 10; 
x5.lo = 0.1; x5.up = 10; 
x6.lo = 0.1; x6.up = 10; 
x7.lo = 0.1; x7.up = 10; 
x8.lo = 0.1; x8.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
