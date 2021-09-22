*  NLP written by GAMS Convert at 08/30/02 11:06:31
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       1       2       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        23      17       6       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x2 + x3 + x4 + x5 + x6 =L= 500;

e2..    x1 + 3*x2 + 6*x3 + 2*x4 =G= 50;

e3..    3*x5 + 4*x6 =G= 50;

e4..    x3 + 2*x4 + 3*x5 + x6 =L= 350;

e5..  - (10.5*x1 - 1.5*sqr(x1) - sqr(x2) - 3.95*x2 - sqr(x3) + 3*x3 - 2*sqr(x4)
      + 5*x4 - sqr(x5) + 1.5*x5 - 2.5*sqr(x6) - 1.5*x6) + objvar =E= 0;

* set non default bounds

x1.up = 99; 
x2.up = 99; 
x3.up = 99; 
x4.up = 99; 
x5.up = 99; 
x6.up = 99; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
