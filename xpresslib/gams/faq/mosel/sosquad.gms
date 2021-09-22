*  LP written by GAMS Convert at 02/22/08 02:33:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26       26        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        124      124        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        345      345        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..  - x1 + x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 =E= 0;

e2..  - x2 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 =E= 0;

e3..  - x3 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50 =E= 0;

e4..  - x4 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 =E= 0;

e5..  - x5 + x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 =E= 0;

e6..  - x6 + x71 + x72 + x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 =E= 0;

e7..  - x7 + x81 + x82 + x83 + x84 + x85 + x86 + x87 + x88 + x89 + x90 =E= 0;

e8..  - x8 + x91 + x92 + x93 + x94 + x95 + x96 + x97 + x98 + x99 + x100 =E= 0;

e9..  - x9 + x101 + x102 + x103 + x104 + x105 + x106 + x107 + x108 + x109
      + x110 =E= 0;

e10..  - x10 + x111 + x112 + x113 + x114 + x115 + x116 + x117 + x118 + x119
       + x120 =E= 0;

e11..  - x11 + x21 + x31 + x41 + x51 + x61 + x71 + x81 + x91 + x101 + x111
       =E= 0;

e12..  - x12 + x22 + x32 + x42 + x52 + x62 + x72 + x82 + x92 + x102 + x112
       =E= 0;

e13..  - x13 + x23 + x33 + x43 + x53 + x63 + x73 + x83 + x93 + x103 + x113
       =E= 0;

e14..  - x14 + x24 + x34 + x44 + x54 + x64 + x74 + x84 + x94 + x104 + x114
       =E= 0;

e15..  - x15 + x25 + x35 + x45 + x55 + x65 + x75 + x85 + x95 + x105 + x115
       =E= 0;

e16..  - x16 + x26 + x36 + x46 + x56 + x66 + x76 + x86 + x96 + x106 + x116
       =E= 0;

e17..  - x17 + x27 + x37 + x47 + x57 + x67 + x77 + x87 + x97 + x107 + x117
       =E= 0;

e18..  - x18 + x28 + x38 + x48 + x58 + x68 + x78 + x88 + x98 + x108 + x118
       =E= 0;

e19..  - x19 + x29 + x39 + x49 + x59 + x69 + x79 + x89 + x99 + x109 + x119
       =E= 0;

e20..  - x20 + x30 + x40 + x50 + x60 + x70 + x80 + x90 + x100 + x110 + x120
       =E= 0;

e21..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e22..    x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 =E= 1;

e23..  - x1 - 2*x2 - 3*x3 - 4*x4 - 5*x5 - 6*x6 - 7*x7 - 8*x8 - 9*x9 - 10*x10
       + x121 =E= 0;

e24..  - x11 - 2*x12 - 3*x13 - 4*x14 - 5*x15 - 6*x16 - 7*x17 - 8*x18 - 9*x19
       - 10*x20 + x122 =E= 0;

e25..  - 16*x21 - 12*x22 - 8*x23 - 4*x24 + 4*x26 + 8*x27 + 12*x28 + 16*x29
       + 20*x30 - 12*x31 - 9*x32 - 6*x33 - 3*x34 + 3*x36 + 6*x37 + 9*x38
       + 12*x39 + 15*x40 - 8*x41 - 6*x42 - 4*x43 - 2*x44 + 2*x46 + 4*x47
       + 6*x48 + 8*x49 + 10*x50 - 4*x51 - 3*x52 - 2*x53 - x54 + x56 + 2*x57
       + 3*x58 + 4*x59 + 5*x60 + 4*x71 + 3*x72 + 2*x73 + x74 - x76 - 2*x77
       - 3*x78 - 4*x79 - 5*x80 + 8*x81 + 6*x82 + 4*x83 + 2*x84 - 2*x86 - 4*x87
       - 6*x88 - 8*x89 - 10*x90 + 12*x91 + 9*x92 + 6*x93 + 3*x94 - 3*x96
       - 6*x97 - 9*x98 - 12*x99 - 15*x100 + 16*x101 + 12*x102 + 8*x103 + 4*x104
       - 4*x106 - 8*x107 - 12*x108 - 16*x109 - 20*x110 + 20*x111 + 15*x112
       + 10*x113 + 5*x114 - 5*x116 - 10*x117 - 15*x118 - 20*x119 - 25*x120
       + x123 =E= 0;

e26..    objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
