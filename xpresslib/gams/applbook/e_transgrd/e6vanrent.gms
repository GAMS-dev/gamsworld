*  LP written by GAMS Convert at 09/07/07 23:01:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        6        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19       19        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         53       53        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x7 + x13 =G= 230;

e2..    x1 + x2 + x7 + x8 + x13 + x14 =G= 210;

e3..    x1 + x2 + x3 + x7 + x8 + x9 + x13 + x14 =G= 440;

e4..    x2 + x3 + x4 + x7 + x8 + x9 + x13 + x14 =G= 390;

e5..    x3 + x4 + x8 + x9 + x13 + x14 =G= 425;

e6..    x4 + x9 + x14 =G= 450;

e7..  - 1700*x1 - 1700*x2 - 1700*x3 - 1700*x4 - 1700*x5 - 1700*x6 - 2200*x7
      - 2200*x8 - 2200*x9 - 2200*x10 - 2200*x11 - 2200*x12 - 2600*x13
      - 2600*x14 - 2600*x15 - 2600*x16 - 2600*x17 - 2600*x18 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
