*  NLP written by GAMS Convert at 10/06/06 11:33:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         30        1        5       24        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         79       64       15        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30;


e1..    x1 - x4 =L= 7;

e2..    x4 - x7 =L= 7;

e3..    x7 - x10 =L= 7;

e4..    x10 - x13 =L= 7;

e5..  - x1 + x4 =L= 6;

e6..  - x4 + x7 =L= 6;

e7..  - x7 + x10 =L= 6;

e8..  - x10 + x13 =L= 6;

e9..    x2 - x5 =L= 7;

e10..    x5 - x8 =L= 7;

e11..    x8 - x11 =L= 7;

e12..    x11 - x14 =L= 7;

e13..  - x2 + x5 =L= 7;

e14..  - x5 + x8 =L= 7;

e15..  - x8 + x11 =L= 7;

e16..  - x11 + x14 =L= 7;

e17..    x3 - x6 =L= 7;

e18..    x6 - x9 =L= 7;

e19..    x9 - x12 =L= 7;

e20..    x12 - x15 =L= 7;

e21..  - x3 + x6 =L= 6;

e22..  - x6 + x9 =L= 6;

e23..  - x9 + x12 =L= 6;

e24..  - x12 + x15 =L= 6;

e25..    x1 + x2 + x3 =G= 60;

e26..    x4 + x5 + x6 =G= 50;

e27..    x7 + x8 + x9 =G= 70;

e28..    x10 + x11 + x12 =G= 85;

e29..    x13 + x14 + x15 =G= 100;

e30..  - (0.0001*sqr(x4) + 2.3*x4 + 0.0001*sqr(x5) + 1.7*x5 + 0.00015*sqr(x6)
       + 2.2*x6 + 0.0001*sqr(x7) + 2.3*x7 + 0.0001*sqr(x8) + 1.7*x8 + 0.00015*
      sqr(x9) + 2.2*x9 + 0.0001*sqr(x10) + 2.3*x10 + 0.0001*sqr(x11) + 1.7*x11
       + 0.00015*sqr(x12) + 2.2*x12 + 0.0001*sqr(x13) + 2.3*x13 + 0.0001*sqr(
      x14) + 1.7*x14 + 0.00015*sqr(x15) + 2.2*x15 + 0.0001*sqr(x1) + 2.3*x1 + 
      0.0001*sqr(x2) + 1.7*x2 + 0.00015*sqr(x3) + 2.2*x3) + objvar =E= 0;

* set non default bounds

x1.lo = 8; x1.up = 21; 
x2.lo = 43; x2.up = 57; 
x3.lo = 3; x3.up = 16; 
x4.up = 90; 
x5.up = 120; 
x6.up = 60; 
x7.up = 90; 
x8.up = 120; 
x9.up = 60; 
x10.up = 90; 
x11.up = 120; 
x12.up = 60; 
x13.up = 90; 
x14.up = 120; 
x15.up = 60; 

* set non default levels

x1.l = 20; 
x2.l = 55; 
x3.l = 15; 
x4.l = 20; 
x5.l = 60; 
x6.l = 20; 
x7.l = 20; 
x8.l = 60; 
x9.l = 20; 
x10.l = 20; 
x11.l = 60; 
x12.l = 20; 
x13.l = 21; 
x14.l = 60; 
x15.l = 20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
