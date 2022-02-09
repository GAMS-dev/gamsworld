*  NLP written by GAMS Convert at 07/19/01 13:39:51
*  
*  Equation counts
*     Total       E       G       L       N       X
*        16      12       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        14      14       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        46      21      25       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,objvar;

Positive Variables x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - x4 + objvar =E= 0;

e2.. x13*POWER(x3,8) - x11*POWER(x3,6) + x9*POWER(x3,4) - x7*sqr(x3) + x5
      =E= 0;

e3.. x12*POWER(x3,6) - x10*POWER(x3,4) + x8*sqr(x3) - x6 =E= 0;

e4..  - x1 - 0.145*x4 =L= -0.175;

e5..    x1 - 0.145*x4 =L= 0.175;

e6..  - x2 - 0.15*x4 =L= -0.2;

e7..    x2 - 0.15*x4 =L= 0.2;

e8..  - 4.53*sqr(x1) + x5 =E= 0;

e9..  - (5.28*sqr(x1) + 0.364*x1) + x6 =E= 0;

e10..  - (5.72*sqr(x1)*x2 + 1.13*sqr(x1) + 0.425*x1) + x7 =E= 0;

e11..  - (6.93*sqr(x1)*x2 + 0.0911*x1) + x8 =E= 0.00422;

e12..  - (1.45*sqr(x1)*x2 + 0.168*x1*x2) + x9 =E= 0.000338;

e13..  - (1.56*sqr(x1)*sqr(x2) + 0.00084*sqr(x1)*x2 + 0.0135*x1*x2) + x10
       =E= 1.35E-5;

e14..  - (0.125*sqr(x1)*sqr(x2) + 1.68e-5*sqr(x1)*x2 + 0.000539*x1*x2) + x11
       =E= 2.7E-7;

e15..  - (0.005*sqr(x1)*sqr(x2) + 1.08e-5*x1*x2) + x12 =E= 0;

e16..  - 0.0001*sqr(x1)*sqr(x2) + x13 =E= 0;

* set non default bounds

x3.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
