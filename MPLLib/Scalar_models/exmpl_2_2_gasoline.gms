*  LP written by GAMS Convert at 06/27/07 15:16:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        4        4        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         20       20        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         75       75        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - 45.15*x1 - 45.15*x2 - 45.15*x3 - 45.15*x4 - 42.95*x5 - 42.95*x6
      - 42.95*x7 - 42.95*x8 - 40.99*x9 - 40.99*x10 - 40.99*x11 - 40.99*x12
      + x17 =E= 0;

e2..  - 36.85*x13 - 36.85*x14 - 38.95*x15 - 38.95*x16 + x18 =E= 0;

e3..  - 31.02*x1 - 33.15*x2 - 36.35*x3 - 38.75*x4 - 31.02*x5 - 33.15*x6
      - 36.35*x7 - 38.75*x8 - 31.02*x9 - 33.15*x10 - 36.35*x11 - 38.75*x12
      - 31.02*x13 - 33.15*x14 - 36.35*x15 - 38.75*x16 + x19 =E= 0;

e4..    x1 + x5 + x9 + x13 =L= 4000;

e5..    x2 + x6 + x10 + x14 =L= 5050;

e6..    x3 + x7 + x11 + x15 =L= 7100;

e7..    x4 + x8 + x12 + x16 =L= 4300;

e8..  - 27*x1 - 9*x2 - 4*x3 + 4*x4 =G= 0;

e9..  - 22*x5 - 4*x6 + x7 + 9*x8 =G= 0;

e10..  - 17*x9 + x10 + 6*x11 + 14*x12 =G= 0;

e11..    x9 + x10 + x11 + x12 =G= 15000;

e12..    x1 + x2 + x3 + x4 =L= 10000;

e13..  - x17 - x18 + x19 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;