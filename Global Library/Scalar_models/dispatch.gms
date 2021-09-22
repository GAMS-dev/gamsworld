*  NLP written by GAMS Convert at 07/30/01 09:47:45
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       2       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        12       6       6       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3;


e1..  - (0.00533*sqr(x1) + 11.669*x1 + 0.00889*sqr(x2) + 10.333*x2 + 0.00741*
     sqr(x3) + 10.833*x3) + objvar =E= 653.1;

e2..  - (0.01*(0.0676*x1*x1 + 0.00953*x1*x2 - 0.00507*x1*x3 + 0.00953*x2*x1 + 
     0.0521*x2*x2 + 0.00901*x2*x3 - 0.00507*x3*x1 + 0.00901*x3*x2 + 0.0294*x3*
     x3) - 0.000766*x1 - 3.42e-5*x2 + 0.000189*x3) + x4 =E= 0.040357;

e3..    x1 + x2 + x3 - x4 =G= 210;

* set non default bounds

x1.lo = 50; x1.up = 200; 
x2.lo = 37.5; x2.up = 150; 
x3.lo = 45; x3.up = 180; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
