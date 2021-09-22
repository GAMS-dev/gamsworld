*  LP written by GAMS Convert at 10/04/07 19:41:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        6        0       15        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         30       30        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        108      108        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..    1.3*x1 + 1.8*x2 + 1.3*x3 + 0.9*x4 - x5 =L= 0;

e2..    0.9*x1 + 1.7*x2 + 1.2*x3 + 1.1*x4 - x6 =L= 0;

e3..    2*x1 + 1.4*x2 + 1.3*x3 + x4 - x7 =L= 0;

e4..    0.3*x1 + 0.6*x2 + x3 + 0.9*x4 - x8 =L= 0;

e5..    0.9*x1 + 1.1*x2 + 1.4*x3 + x4 - x9 =L= 0;

e6..    x5 + x10 + x11 + x12 + x13 - x14 - x18 - x22 - x26 =E= 4500;

e7..    x6 - x10 + x14 + x15 + x16 + x17 - x19 - x23 - x27 =E= 5000;

e8..    x7 - x11 - x15 + x18 + x19 + x20 + x21 - x24 - x28 =E= 4500;

e9..    x8 - x12 - x16 - x20 + x22 + x23 + x24 + x25 - x29 =E= 1500;

e10..    x9 - x13 - x17 - x21 - x25 + x26 + x27 + x28 + x29 =E= 2500;

e11..    x10 + x11 + x12 =L= 400;

e12..    x15 + x17 =L= 800;

e13..    x18 + x19 + x20 =L= 200;

e14..    x25 =L= 500;

e15..    x26 + x27 + x28 + x29 =L= 300;

e16..    1.3*x1 + 1.8*x2 + 1.3*x3 + 0.9*x4 =L= 4500;

e17..    0.9*x1 + 1.7*x2 + 1.2*x3 + 1.1*x4 =L= 5000;

e18..    2*x1 + 1.4*x2 + 1.3*x3 + x4 =L= 4500;

e19..    0.3*x1 + 0.6*x2 + x3 + 0.9*x4 =L= 1500;

e20..    0.9*x1 + 1.1*x2 + 1.4*x3 + x4 =L= 2500;

e21..  - 7*x1 - 8*x2 - 9*x3 - 7*x4 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
