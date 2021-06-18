*  LP written by GAMS Convert at 09/03/08 03:39:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26        7        9       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49       49        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        133      133        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..    x10 + x11 + x12 + x13 + x14 + x15 =L= 350;

e2..  - x11 - x16 + x17 =E= 0;

e3..  - x13 - x18 + x19 =E= 0;

e4..  - x15 - x20 + x21 =E= 0;

e5..  - x10 + x16 =E= 0;

e6..  - x12 + x18 =E= 0;

e7..  - x14 + x20 =E= 0;

e8..    x1 + x22 + x31 + x40 =G= 20;

e9..    x2 + x23 + x32 + x41 =G= 25;

e10..    x3 + x24 + x33 + x42 =G= 38;

e11..    x4 + x25 + x34 + x43 =G= 50;

e12..    x5 + x26 + x35 + x44 =G= 55;

e13..    x6 + x27 + x36 + x45 =G= 68;

e14..    x7 + x28 + x37 + x46 =G= 30;

e15..    x8 + x29 + x38 + x47 =G= 85;

e16..    x9 + x30 + x39 + x48 =G= 98;

e17..  - x16 + x23 + x26 + x29 =L= 50;

e18..  - x17 + x24 + x27 + x30 =L= 20;

e19..  - x18 + x32 + x35 + x38 =L= 35;

e20..  - x19 + x33 + x36 + x39 =L= 20;

e21..  - x20 + x41 + x44 + x47 =L= 25;

e22..  - x21 + x42 + x45 + x48 =L= 15;

e23..    x22 + x25 + x28 =L= 80;

e24..    x31 + x34 + x37 =L= 70;

e25..    x40 + x43 + x46 =L= 40;

e26..  - 1300*x1 - 1300*x2 - 1300*x3 - 1300*x4 - 1300*x5 - 1300*x6 - 1300*x7
       - 1300*x8 - 1300*x9 - 464*x10 - 500*x11 - 508*x12 - 507*x13 - 534*x14
       - 490*x15 - 116*x22 - 98.6*x23 - 92.8*x24 - 116*x25 - 98.6*x26
       - 92.8*x27 - 116*x28 - 98.6*x29 - 92.8*x30 - 87*x31 - 63.8*x32
       - 60.9*x33 - 87*x34 - 63.8*x35 - 60.9*x36 - 87*x37 - 63.8*x38 - 60.9*x39
       - 55.1*x40 - 52.2*x41 - 46.4*x42 - 55.1*x43 - 52.2*x44 - 46.4*x45
       - 55.1*x46 - 52.2*x47 - 46.4*x48 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
