*  NLP written by GAMS Convert at 08/29/02 12:49:52
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         8       7       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        28      17      11       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables x3,x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 - 1.22*x4 + x5 =E= 0;

e2..    x9 + 0.222*x10 =E= 35.82;

e3..    3*x7 - x10 =E= 133;

e4.. 0.038*sqr(x8) - 1.098*x8 - 0.325*x6 + x7 =E= 57.425;

e5.. x4*x9*x6 + 1000*x3*x6 - 98000*x3 =E= 0;

e6..  - x1*x8 + x2 + x5 =E= 0;

e7.. 0.13167*x8*x1 + 1.12*x1 - 0.00667*sqr(x8)*x1 - x4 =G= 0;

e8.. 0.063*x4*x7 - 5.04*x1 - 0.035*x2 - 10*x3 - 3.36*x5 + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 2000; 
x2.lo = 1; x2.up = 16000; 
x3.up = 120; 
x4.lo = 1; x4.up = 5000; 
x5.up = 2000; 
x6.lo = 85; x6.up = 93; 
x7.lo = 90; x7.up = 95; 
x8.lo = 3; x8.up = 12; 
x9.lo = 1.2; x9.up = 4; 
x10.lo = 145; x10.up = 162; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
