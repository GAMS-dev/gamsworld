*  NLP written by GAMS Convert at 10/06/06 11:47:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         30       21        9        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         61       61        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        153      137       16        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30;


e1..  - x1 - x2 - x3 - x4 =G= -3;

e2..  - x5 - x6 - x7 - x8 =G= -6;

e3..  - x9 - x10 - x11 - x12 =G= -10;

e4..  - x13 - x14 - x15 - x16 =G= -2000;

e5..  - x17 - x18 - x19 - x20 =G= -18;

e6..    x1 - x21 + x22 =E= 1;

e7..    x2 - x23 + x24 =E= 1;

e8..    x3 - x25 + x26 =E= 1;

e9..    x4 - x27 + x28 =E= 1;

e10..    x5 + x21 - x29 + x30 =E= 2.667;

e11..    x6 + x23 - x31 + x32 =E= 1.667;

e12..    x7 + x25 - x33 + x34 =E= 2.667;

e13..    x8 + x27 - x35 + x36 =E= 3.333;

e14..    x9 + x29 - x37 + x38 =E= 2.667;

e15..    x10 + x31 - x39 + x40 =E= 2;

e16..    x11 + x33 - x41 + x42 =E= 3;

e17..    x12 + x35 - x43 + x44 =E= 3;

e18..    x13 + x37 - x45 + x46 =E= 2.667;

e19..    x14 + x39 - x47 + x48 =E= 2.667;

e20..    x15 + x41 - x49 + x50 =E= 2.667;

e21..    x16 + x43 - x51 + x52 =E= 2.667;

e22..    x17 + x45 - x53 + x54 =E= 2.667;

e23..    x18 + x47 - x55 + x56 =E= 2.333;

e24..    x19 + x49 - x57 + x58 =E= 2.333;

e25..    x20 + x51 - x59 + x60 =E= 2.333;

e26..  - (sqr(x4 - x3 + x7 + x8) - 0.01*sqr(x3 + x4)) =G= 0;

e27..  - (sqr(x8 - x7 + x11 + x12) - 0.01*sqr(x7 + x8)) =G= 0;

e28..  - (sqr(x12 - x11 + x15 + x16) - 0.01*sqr(x11 + x12)) =G= 0;

e29..  - (sqr(x16 - x15 + x19 + x20) - 0.01*sqr(x15 + x16)) =G= 0;

e30..  - x21 - 2*x22 - 2*x23 - 3*x24 - 3*x25 - 2*x26 - 4*x27 - 5*x28 - x29
       - 2*x30 - 2*x31 - 3*x32 - 3*x33 - 2*x34 - 4*x35 - 5*x36 - x37 - 2*x38
       - 2*x39 - 3*x40 - 3*x41 - 2*x42 - 4*x43 - 5*x44 - x45 - 2*x46 - 2*x47
       - 3*x48 - 3*x49 - 2*x50 - 4*x51 - 5*x52 - x53 - 2*x54 - 2*x55 - 3*x56
       - 3*x57 - 2*x58 - 4*x59 - 5*x60 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
