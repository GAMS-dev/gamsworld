*  NLP written by GAMS Convert at 07/19/01 13:39:51
*  
*  Equation counts
*     Total       E       G       L       N       X
*        18       8       0      10       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        13      13       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        53      30      23       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1..  - x12 + objvar =E= 0;

e2.. x10*POWER(x11,4) - x8*sqr(x11) + x6 =E= 0;

e3.. x9*sqr(x11) - x7 =E= 0;

e4..  - x1 - x12 =L= -10;

e5..    x1 - x12 =L= 10;

e6..    x2 - 0.1*x12 =L= 1;

e7..  - x2 - 0.1*x12 =L= -1;

e8..  - x3 - 0.1*x12 =L= -1;

e9..    x3 - 0.1*x12 =L= 1;

e10..  - x4 - 0.01*x12 =L= -0.2;

e11..    x4 - 0.01*x12 =L= 0.2;

e12..  - x5 - 0.005*x12 =L= -0.05;

e13..    x5 - 0.005*x12 =L= 0.05;

e14..  - 54.387*x3*x2 + x6 =E= 0;

e15..  - 0.2*(1364.67*x3*x2 - 147.15*x4*x3*x2) + 5.544*x5 + x7 =E= 0;

e16..  - 3*(-9.81*x3*sqr(x2) - 9.81*x3*x1*x2 - 4.312*sqr(x3)*x2 + 264.896*x3*x2
       + x4*x5 - 9.274*x5) + x8 =E= 0;

e17..  - (7*x4*sqr(x3)*x2 - 64.918*sqr(x3)*x2 + 380.067*x3*x2 + 3*x5*x2 + 3*x5*
      x1) + x9 =E= 0;

e18..  - sqr(x3)*x2*(7*x1 + 4*x2) + x10 =E= 0;

* set non default bounds

x11.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
