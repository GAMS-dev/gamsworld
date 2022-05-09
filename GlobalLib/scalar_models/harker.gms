*  NLP written by GAMS Convert at 07/30/01 17:04:22
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       8       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        21      21       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        61      41      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x15 + x16 + x17 - x18 - x19 - x20 =E= 0;

e2..  - x1 - x2 + x5 + x8 - x15 + x18 =E= 0;

e3..  - x3 + x11 - x16 + x19 =E= 0;

e4..  - x4 + x12 - x17 + x20 =E= 0;

e5..    x1 - x5 - x6 - x7 + x9 + x13 =E= 0;

e6..    x2 + x6 - x8 - x9 - x10 + x14 =E= 0;

e7..    x3 + x4 + x7 + x10 - x11 - x12 - x13 - x14 =E= 0;

e8..  - (19*x15 - 0.1*sqr(x15) - 0.5*sqr(x18) - x18 - 0.005*sqr(x16) + 27*x16
      - 0.4*sqr(x19) - 2*x19 - 0.15*sqr(x17) + 30*x17 - 0.3*sqr(x20) - 1.5*x20
      - (0.166666666666667*POWER(x1,3) + x1 + 0.0666666666666667*POWER(x2,3) + 
     2*x2 + 0.1*POWER(x3,3) + 3*x3 + 0.133333333333333*POWER(x4,3) + x4 + 0.1*
     POWER(x5,3) + 2*x5 + 0.0333333333333333*POWER(x6,3) + x6 + 
     0.0333333333333333*POWER(x7,3) + x7 + 0.166666666666667*POWER(x8,3) + 3*x8
      + 0.0666666666666667*POWER(x9,3) + 2*x9 + 0.333333333333333*POWER(x10,3)
      + x10 + 0.0833333333333333*POWER(x11,3) + 2*x11 + 0.0666666666666667*
     POWER(x12,3) + 2*x12 + 0.3*POWER(x13,3) + x13 + 0.266666666666667*POWER(
     x14,3) + 3*x14)) - objvar =E= 0;

* set non default bounds


* set non default levels

x15.l = 25; 
x16.l = 25; 
x17.l = 25; 
x18.l = 25; 
x19.l = 25; 
x20.l = 25; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
