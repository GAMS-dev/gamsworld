*  LP written by GAMS Convert at 07/27/07 23:02:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         28        1       27        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         20       20        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         56       56        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28;


e1..  - x1 + x2 =G= 2;

e2..  - x2 + x3 =G= 16;

e3..  - x2 + x4 =G= 16;

e4..  - x2 + x14 =G= 16;

e5..  - x3 + x5 =G= 9;

e6..  - x4 + x6 =G= 8;

e7..  - x4 + x7 =G= 8;

e8..  - x4 + x9 =G= 8;

e9..  - x4 + x10 =G= 8;

e10..  - x4 + x15 =G= 8;

e11..  - x5 + x6 =G= 10;

e12..  - x6 + x8 =G= 6;

e13..  - x6 + x9 =G= 6;

e14..  - x6 + x11 =G= 6;

e15..  - x7 + x13 =G= 2;

e16..  - x8 + x16 =G= 2;

e17..  - x9 + x12 =G= 9;

e18..  - x10 + x19 =G= 5;

e19..  - x11 + x16 =G= 3;

e20..  - x12 + x17 =G= 2;

e21..  - x13 + x19 =G= 1;

e22..  - x14 + x15 =G= 7;

e23..  - x14 + x16 =G= 7;

e24..  - x15 + x19 =G= 4;

e25..  - x16 + x19 =G= 3;

e26..  - x17 + x18 =G= 9;

e27..  - x18 + x19 =G= 1;

e28..  - x19 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
