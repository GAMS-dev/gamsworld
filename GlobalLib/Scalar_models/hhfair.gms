*  NLP written by GAMS Convert at 07/30/01 17:04:24
*  
*  Equation counts
*     Total       E       G       L       N       X
*        26      20       3       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        30      30       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        81      60      21       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,objvar
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..  - x25*x26**0.944*x27**0.891136 - objvar =E= 0;

e2..  - 0.01*sqr(0.5*x5**0.5 + 0.5*(1004.72366 + (-x8) - x15)**0.5) + x25
      =E= 0;

e3..  - 0.01*sqr(0.5*x6**0.5 + 0.5*(1004.72366 + (-x9) - x16)**0.5) + x26
      =E= 0;

e4..  - 0.01*sqr(0.5*x7**0.5 + 0.5*(1004.72366 + (-x10) - x17)**0.5) + x27
      =E= 0;

e5..  - 0.07*x2 - x8 + x28 =E= 0;

e6..  - 0.07*x3 - x9 + x29 =E= 0;

e7..  - 0.07*x4 - x10 + x30 =E= 0;

e8..    x22 - 0.2*x28 =E= 0;

e9..    x23 - 0.2*x29 =E= 0;

e10..    x24 - 0.2*x30 =E= 0;

e11..    x5 + x19 + x22 - x28 =E= 0;

e12..    x6 + x20 + x23 - x29 =E= 0;

e13..    x7 + x21 + x24 - x30 =E= 0;

e14..    x1 - x2 + x11 - x12 + x19 =E= 0;

e15..    x2 - x3 + x12 - x13 + x20 =E= 0;

e16..    x3 - x4 + x13 - x14 + x21 =E= 0;

e17.. x15*(x12 - 0.255905*x5) =E= 1;

e18.. x16*(x13 - 0.255905*x6) =E= 1;

e19.. x17*(x14 - 0.255905*x7) =E= 1;

e20..    x4 + x14 =E= 1100;

e21..  - 0.25846405*x5 + x12 =G= 0;

e22..  - 0.25846405*x6 + x13 =G= 0;

e23..  - 0.25846405*x7 + x14 =G= 0;

e24..    x8 + x15 =L= 904.251294;

e25..    x9 + x16 =L= 904.251294;

e26..    x10 + x17 =L= 904.251294;

* set non default bounds

x1.fx = 1000; 
x5.lo = 100; 
x6.lo = 100; 
x7.lo = 100; 
x8.lo = 100; x8.up = 400; 
x9.lo = 100; x9.up = 400; 
x10.lo = 100; x10.up = 400; 
x11.fx = 100; 
x25.lo = 0.01; 
x26.lo = 0.01; 
x27.lo = 0.01; 

* set non default levels

x2.l = 1000; 
x3.l = 1000; 
x4.l = 1000; 
x8.l = 400; 
x9.l = 400; 
x10.l = 400; 
x12.l = 100; 
x13.l = 100; 
x14.l = 100; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
