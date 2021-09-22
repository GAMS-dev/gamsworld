*  NLP written by GAMS Convert at 07/30/01 09:46:32
*  
*  Equation counts
*     Total       E       G       L       N       X
*        25      19       6       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        32      32       0       0       0       0       0       0
*  FX     1       1       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        67      55      12       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,objvar;

Positive Variables x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21
          ,x22,x23,x24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25;


e1..  - 82.8*(0.0016*sqr(x1) + 8*x1 + 0.0016*sqr(x2) + 8*x2 + 0.0016*sqr(x3) + 
     8*x3 + 0.0016*sqr(x4) + 8*x4 + 0.0016*sqr(x5) + 8*x5 + 0.0016*sqr(x6) + 8*
     x6) + objvar =E= 248400;

e2..    x1 + x7 - x13 =G= 1200;

e3..    x2 + x8 - x14 =G= 1500;

e4..    x3 + x9 - x15 =G= 1100;

e5..    x4 + x10 - x16 =G= 1800;

e6..    x5 + x11 - x17 =G= 950;

e7..    x6 + x12 - x18 =G= 1300;

e8..    12*x19 - x25 + x26 =E= 24000;

e9..    12*x20 - x26 + x27 =E= 24000;

e10..    12*x21 - x27 + x28 =E= 24000;

e11..    12*x22 - x28 + x29 =E= 24000;

e12..    12*x23 - x29 + x30 =E= 24000;

e13..    12*x24 - x30 + x31 =E= 24000;

e14..  - 8e-5*sqr(x7) + x13 =E= 0;

e15..  - 8e-5*sqr(x8) + x14 =E= 0;

e16..  - 8e-5*sqr(x9) + x15 =E= 0;

e17..  - 8e-5*sqr(x10) + x16 =E= 0;

e18..  - 8e-5*sqr(x11) + x17 =E= 0;

e19..  - 8e-5*sqr(x12) + x18 =E= 0;

e20..  - 4.97*x7 + x19 =E= 330;

e21..  - 4.97*x8 + x20 =E= 330;

e22..  - 4.97*x9 + x21 =E= 330;

e23..  - 4.97*x10 + x22 =E= 330;

e24..  - 4.97*x11 + x23 =E= 330;

e25..  - 4.97*x12 + x24 =E= 330;

* set non default bounds

x1.lo = 150; x1.up = 1500; 
x2.lo = 150; x2.up = 1500; 
x3.lo = 150; x3.up = 1500; 
x4.lo = 150; x4.up = 1500; 
x5.lo = 150; x5.up = 1500; 
x6.lo = 150; x6.up = 1500; 
x7.up = 1000; 
x8.up = 1000; 
x9.up = 1000; 
x10.up = 1000; 
x11.up = 1000; 
x12.up = 1000; 
x25.fx = 100000; 
x26.lo = 60000; x26.up = 120000; 
x27.lo = 60000; x27.up = 120000; 
x28.lo = 60000; x28.up = 120000; 
x29.lo = 60000; x29.up = 120000; 
x30.lo = 60000; x30.up = 120000; 
x31.lo = 60000; x31.up = 120000; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
