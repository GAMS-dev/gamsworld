*  LP written by GAMS Convert at 10/23/07 22:15:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        133      133        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        295      295        0        0
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
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,objvar;

Positive Variables  x2,x3,x5,x6,x7,x8,x9,x10,x11,x12,x14,x17,x18,x19,x20,x21
          ,x22,x23,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x37,x38,x39,x41,x42
          ,x43,x44,x46,x47,x48,x50,x51,x52,x53,x54,x55,x56,x58,x59,x62,x65,x66
          ,x67,x68,x70,x71,x74,x75,x77,x78,x79,x80,x82,x83,x84,x85,x86,x89,x90
          ,x91,x92,x94,x95,x96,x98,x99,x100,x101,x102,x103,x104,x107,x108,x109
          ,x110,x111,x112,x113,x114,x115,x116,x118,x119,x121,x122,x123,x124
          ,x125,x126,x127,x128,x129,x130,x131;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 - x12 - x23
      - x34 - x45 - x56 - x67 - x78 - x89 - x100 - x111 - x122 =E= 0;

e2..  - x1 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22
      - x24 - x35 - x46 - x57 - x68 - x79 - x90 - x101 - x112 - x123 =E= 0;

e3..  - x2 - x13 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32
      + x33 - x36 - x47 - x58 - x69 - x80 - x91 - x102 - x113 - x124 =E= 0;

e4..  - x3 - x14 - x25 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42
      + x43 + x44 - x48 - x59 - x70 - x81 - x92 - x103 - x114 - x125 =E= 0;

e5..  - x4 - x15 - x26 - x37 + x45 + x46 + x47 + x48 + x49 + x50 + x51 + x52
      + x53 + x54 + x55 - x60 - x71 - x82 - x93 - x104 - x115 - x126 =E= 0;

e6..  - x5 - x16 - x27 - x38 - x49 + x56 + x57 + x58 + x59 + x60 + x61 + x62
      + x63 + x64 + x65 + x66 - x72 - x83 - x94 - x105 - x116 - x127 =E= 0;

e7..  - x6 - x17 - x28 - x39 - x50 - x61 + x67 + x68 + x69 + x70 + x71 + x72
      + x73 + x74 + x75 + x76 + x77 - x84 - x95 - x106 - x117 - x128 =E= 0;

e8..  - x7 - x18 - x29 - x40 - x51 - x62 - x73 + x78 + x79 + x80 + x81 + x82
      + x83 + x84 + x85 + x86 + x87 + x88 - x96 - x107 - x118 - x129 =E= 0;

e9..  - x8 - x19 - x30 - x41 - x52 - x63 - x74 - x85 + x89 + x90 + x91 + x92
      + x93 + x94 + x95 + x96 + x97 + x98 + x99 - x108 - x119 - x130 =E= 0;

e10..  - x9 - x20 - x31 - x42 - x53 - x64 - x75 - x86 - x97 + x100 + x101
       + x102 + x103 + x104 + x105 + x106 + x107 + x108 + x109 + x110 - x120
       - x131 =E= 0;

e11..  - x10 - x21 - x32 - x43 - x54 - x65 - x76 - x87 - x98 - x109 + x111
       + x112 + x113 + x114 + x115 + x116 + x117 + x118 + x119 + x120 + x121
       - x132 =E= 0;

e12..  - x11 - x22 - x33 - x44 - x55 - x66 - x77 - x88 - x99 - x110 - x121
       + x122 + x123 + x124 + x125 + x126 + x127 + x128 + x129 + x130 + x131
       + x132 =E= 0;

e13..  - 150*x1 - 165*x4 - 130*x13 - 230*x15 - 160*x16 - 140*x24 - 100*x25
       - 100*x36 - 190*x40 - 165*x45 - 144*x49 - 170*x57 - 144*x60 - 128*x61
       - 218*x63 - 174*x64 - 200*x69 - 122*x72 - 109*x73 - 185*x76 - 180*x81
       - 141*x87 - 190*x88 - 194*x93 - 148*x97 - 174*x105 - 233*x106 - 185*x117
       - 135*x120 - 110*x132 + objvar =E= 0;

* set non default bounds

x1.lo = 1; 
x4.lo = 1; 
x13.lo = 1; 
x15.lo = 1; 
x16.lo = 1; 
x24.lo = 1; 
x25.lo = 1; 
x36.lo = 1; 
x40.lo = 1; 
x45.lo = 1; 
x49.lo = 1; 
x57.lo = 1; 
x60.lo = 1; 
x61.lo = 1; 
x63.lo = 1; 
x64.lo = 1; 
x69.lo = 1; 
x72.lo = 1; 
x73.lo = 1; 
x76.lo = 1; 
x81.lo = 1; 
x87.lo = 1; 
x88.lo = 1; 
x93.lo = 1; 
x97.lo = 1; 
x105.lo = 1; 
x106.lo = 1; 
x117.lo = 1; 
x120.lo = 1; 
x132.lo = 1; 

* set non default levels

x1.l = 1; 
x4.l = 1; 
x13.l = 1; 
x15.l = 1; 
x16.l = 1; 
x24.l = 1; 
x25.l = 1; 
x36.l = 1; 
x40.l = 1; 
x45.l = 1; 
x49.l = 1; 
x57.l = 1; 
x60.l = 1; 
x61.l = 1; 
x63.l = 1; 
x64.l = 1; 
x69.l = 1; 
x72.l = 1; 
x73.l = 1; 
x76.l = 1; 
x81.l = 1; 
x87.l = 1; 
x88.l = 1; 
x93.l = 1; 
x97.l = 1; 
x105.l = 1; 
x106.l = 1; 
x117.l = 1; 
x120.l = 1; 
x132.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
