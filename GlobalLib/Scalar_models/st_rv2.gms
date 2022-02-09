*  NLP written by GAMS Convert at 08/30/02 11:51:59
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        11       1       0      10       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        21      21       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       181     161      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    6*x1 + 2*x2 + 4*x3 + 3*x5 + 4*x6 + 9*x7 + 5*x9 + x10 + 9*x11 + 6*x12
      + 7*x14 + 9*x15 + 2*x16 + 8*x18 + 2*x19 + 4*x20 =L= 405;

e2..    6*x1 + 5*x2 + x3 + 8*x4 + 4*x6 + 3*x7 + 9*x8 + 6*x10 + 4*x11 + 7*x12
      + 5*x13 + 2*x15 + 5*x16 + 8*x17 + 9*x19 + 8*x20 =L= 450;

e3..    8*x2 + 6*x3 + 2*x4 + 6*x5 + 4*x7 + 4*x8 + 6*x9 + 9*x11 + 4*x12 + 6*x13
      + 9*x14 + 9*x16 + 9*x17 + 3*x18 + x20 =L= 430;

e4..    8*x1 + 7*x3 + 3*x4 + 2*x5 + x6 + 7*x8 + 4*x9 + 7*x10 + 3*x12 + 4*x13
      + x14 + 6*x15 + 2*x17 + 8*x18 + 9*x19 =L= 360;

e5..    x1 + 5*x2 + 5*x4 + 5*x5 + x6 + 3*x7 + 5*x9 + 7*x10 + 4*x11 + 6*x13
      + x14 + 3*x15 + 4*x16 + 3*x18 + 5*x19 + 5*x20 =L= 315;

e6..    x1 + 8*x2 + 7*x3 + x5 + 6*x6 + x7 + 6*x8 + 7*x10 + 3*x11 + 6*x12
      + 4*x14 + 6*x15 + x16 + 4*x17 + x19 + 4*x20 =L= 330;

e7..    5*x2 + 8*x3 + 7*x4 + 3*x6 + 3*x7 + 8*x8 + 6*x9 + 6*x11 + 4*x12 + 3*x13
      + 4*x15 + 2*x16 + 5*x17 + 2*x18 + 4*x20 =L= 350;

e8..    x1 + 3*x3 + 2*x4 + 7*x5 + 2*x7 + x8 + x9 + 7*x10 + 4*x12 + 3*x13
      + 5*x14 + 3*x16 + 6*x17 + 3*x18 + x19 =L= 245;

e9..    5*x1 + 5*x2 + 2*x4 + x5 + 9*x6 + 7*x8 + 4*x9 + 8*x10 + 5*x11 + 2*x13
      + 4*x14 + 4*x15 + 4*x17 + 8*x18 + 9*x19 + x20 =L= 390;

e10..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 =L= 200;

e11..  - (-0.00015*sqr(x1) - 0.0051*x1 - 0.00245*sqr(x2) - 0.2205*x2 - 0.00095*
      sqr(x3) - 0.0171*x3 - 0.0038*sqr(x4) - 0.6384*x4 - 0.0029*sqr(x5) - 0.435
      *x5 - 0.0024*sqr(x6) - 0.4704*x6 - 0.0034*sqr(x7) - 0.4556*x7 - 0.0018*
      sqr(x8) - 0.2916*x8 - 0.00305*sqr(x9) - 0.0549*x9 - 0.00025*sqr(x10) - 
      0.0245*x10 - 0.00195*sqr(x11) - 0.3588*x11 - 0.0008*sqr(x12) - 0.1456*x12
       - 0.0035*sqr(x13) - 0.672*x13 - 0.0027*sqr(x14) - 0.5184*x14 - 0.002*
      sqr(x15) - 0.016*x15 - 0.0026*sqr(x16) - 0.1404*x16 - 0.0048*sqr(x17) - 
      0.2592*x17 - 0.00275*sqr(x18) - 0.418*x18 - 0.00235*sqr(x19) - 0.1081*x19
       - 0.00275*sqr(x20) - 0.264*x20) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
