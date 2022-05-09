*  NLP written by GAMS Convert at 07/25/01 14:27:44
*  
*  Equation counts
*     Total       E       G       L       N       X
*        13      10       1       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        14      14       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        41      13      28       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Negative Variables x10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    10000*objvar - 10000*x7 - 10000*x8 =E= 0;

e2..  - 1.42857142857143*x4*x6 + 10000*x8 =E= 0;

e3.. 10*x7*x9 - 0.00968946189201592*x3*(x1**4 - x2**4) =E= 0;

e4.. 143.3076*x10*x4 - 10000*x7 =E= 0;

e5.. 3.1415927*x6*(0.001*x9)**3 - 6e-6*x3*x4*x13 =E= 0;

e6.. 101000*x12*x13 - 1.57079635*x6*x14 =E= 0;

e7.. log10(0.8 + 8.112*x3) - 10964781961.4318*x11**(-3.55) =E= 0;

e8..  - 0.5*x10 + x11 =E= 560;

e9..    x1 - x2 =G= 0;

e10.. 0.0307*sqr(x4) - 0.3864*sqr(0.0062831854*x1*x9)*x6 =L= 0;

e11..    101000*x12 - 15707.9635*x14 =L= 0;

e12..  - (log(x1) - log(x2)) + x13 =E= 0;

e13..  - (sqr(x1) - sqr(x2)) + x14 =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 16; 
x2.lo = 1; x2.up = 16; 
x3.lo = 1; x3.up = 16; 
x4.lo = 1; x4.up = 16; 
x6.lo = 1; x6.up = 1000; 
x7.lo = 0.0001; 
x8.lo = 0.0001; 
x9.lo = 1; 
x10.up = 50; 
x11.lo = 100; 
x12.lo = 1; 
x13.lo = 0.0001; 
x14.lo = 0.01; 

* set non default levels

x1.l = 6; 
x2.l = 5; 
x3.l = 6; 
x4.l = 3; 
x6.l = 1000; 
x7.l = 1.6; 
x8.l = 0.3; 
x10.l = 50; 
x11.l = 600; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
