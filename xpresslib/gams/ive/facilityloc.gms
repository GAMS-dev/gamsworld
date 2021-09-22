*  MIP written by GAMS Convert at 01/17/08 23:45:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         20        1       13        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         85       79        6        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        226      226        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,objvar;

Positive Variables  x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21
          ,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38
          ,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55
          ,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72
          ,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84;

Binary Variables  b1,b2,b3,b4,b5,b6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..  - 600*b1 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17
      + x18 + x19 =L= 0;

e2..  - 500*b2 + x20 + x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29
      + x30 + x31 + x32 =L= 0;

e3..  - 320*b3 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42
      + x43 + x44 + x45 =L= 0;

e4..  - 200*b4 + x46 + x47 + x48 + x49 + x50 + x51 + x52 + x53 + x54 + x55
      + x56 + x57 + x58 =L= 0;

e5..  - 260*b5 + x59 + x60 + x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68
      + x69 + x70 + x71 =L= 0;

e6..  - 400*b6 + x72 + x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 + x81
      + x82 + x83 + x84 =L= 0;

e7..    x7 + x20 + x33 + x46 + x59 + x72 =G= 45;

e8..    x8 + x21 + x34 + x47 + x60 + x73 =G= 56;

e9..    x9 + x22 + x35 + x48 + x61 + x74 =G= 55;

e10..    x10 + x23 + x36 + x49 + x62 + x75 =G= 300;

e11..    x11 + x24 + x37 + x50 + x63 + x76 =G= 112;

e12..    x12 + x25 + x38 + x51 + x64 + x77 =G= 80;

e13..    x13 + x26 + x39 + x52 + x65 + x78 =G= 77;

e14..    x14 + x27 + x40 + x53 + x66 + x79 =G= 25;

e15..    x15 + x28 + x41 + x54 + x67 + x80 =G= 33;

e16..    x16 + x29 + x42 + x55 + x68 + x81 =G= 43;

e17..    x17 + x30 + x43 + x56 + x69 + x82 =G= 39;

e18..    x18 + x31 + x44 + x57 + x70 + x83 =G= 45;

e19..    x19 + x32 + x45 + x58 + x71 + x84 =G= 61;

e20..  - 4000*b1 - 2500*b2 - 2600*b3 - 2100*b4 - 3000*b5 - 3200*b6 - 9*x7
       - 45*x9 - 77*x10 - 4*x12 - 34*x13 - 55*x14 - 23*x15 - 111*x16 - 56*x17
       - 72*x19 - 65*x20 - 83*x21 - 66*x23 - 49*x26 - 11*x27 - 43*x28 - 32*x30
       - 71*x32 - 91*x33 - 44*x34 - 74*x35 - 21*x36 - 25*x37 - 63*x38 - 28*x39
       - 55*x41 - 122*x42 - 107*x43 - 17*x47 - 48*x48 - 51*x49 - 56*x50
       - 89*x51 - 53*x52 - 82*x55 - 72*x56 - 36*x57 - 31*x59 - 39*x61 - 37*x62
       - 71*x65 - 79*x67 - 78*x68 - 58*x69 - 30*x70 - 59*x72 - 61*x73 - 63*x74
       - 71*x75 - 75*x76 - 59*x77 - 78*x78 - 73*x79 - 30*x80 - 55*x81 - 42*x83
       - 58*x84 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
