*  LP written by GAMS Convert at 02/22/08 02:22:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         18        1       11        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         47       47        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        139      139        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 =L= 256;

e2..    x10 + x11 + x12 + x13 + x14 =L= 234;

e3..    x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 =L= 166;

e4..    x23 + x24 + x25 + x26 + x27 + x28 + x29 =L= 100;

e5..    x30 + x31 + x32 + x33 + x34 + x35 + x36 =L= 133;

e6..    x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 =L= 200;

e7..    x1 + x15 + x30 + x37 =G= 45;

e8..    x2 + x23 + x31 + x38 =G= 55;

e9..    x3 + x10 + x16 + x24 + x32 + x39 =G= 300;

e10..    x4 + x40 =G= 80;

e11..    x5 + x11 + x41 =G= 25;

e12..    x6 + x12 + x17 + x25 + x33 + x42 =G= 77;

e13..    x7 + x18 + x34 + x43 =G= 33;

e14..    x8 + x19 + x26 + x35 + x44 =G= 43;

e15..    x9 + x13 + x20 + x27 + x36 =G= 39;

e16..    x14 + x21 + x28 + x45 =G= 56;

e17..    x22 + x29 + x46 =G= 112;

e18..  - 9*x1 - 45*x2 - 77*x3 - 4*x4 - 55*x5 - 34*x6 - 23*x7 - 111*x8 - 56*x9
       - 66*x10 - 11*x11 - 49*x12 - 28*x13 - 83*x14 - 91*x15 - 21*x16 - 28*x17
       - 55*x18 - 122*x19 - 107*x20 - 44*x21 - 25*x22 - 48*x23 - 51*x24
       - 53*x25 - 82*x26 - 72*x27 - 17*x28 - 56*x29 - 31*x30 - 39*x31 - 37*x32
       - 71*x33 - 79*x34 - 78*x35 - 58*x36 - 59*x37 - 63*x38 - 71*x39 - 59*x40
       - 73*x41 - 78*x42 - 22*x43 - 55*x44 - 61*x45 - 75*x46 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
