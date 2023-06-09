*  DNLP written by GAMS Convert at 10/17/08 03:01:01
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         50       49        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        181      181        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        493      481       12        0
*
*  Solve m using DNLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114
          ,x115,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127
          ,x128,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140
          ,x141,x142,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153
          ,x154,x155,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166
          ,x167,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179
          ,x180;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 =L= 3;

e2..    x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
      =E= 1;

e3..    x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
      =E= 1;

e4..    x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
      =E= 1;

e5..    x49 + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60
      =E= 1;

e6..    x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72
      =E= 1;

e7..    x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 + x81 + x82 + x83 + x84
      =E= 1;

e8..    x85 + x86 + x87 + x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96
      =E= 1;

e9..    x97 + x98 + x99 + x100 + x101 + x102 + x103 + x104 + x105 + x106 + x107
      + x108 =E= 1;

e10..    x109 + x110 + x111 + x112 + x113 + x114 + x115 + x116 + x117 + x118
       + x119 + x120 =E= 1;

e11..    x121 + x122 + x123 + x124 + x125 + x126 + x127 + x128 + x129 + x130
       + x131 + x132 =E= 1;

e12..    x133 + x134 + x135 + x136 + x137 + x138 + x139 + x140 + x141 + x142
       + x143 + x144 =E= 1;

e13..    x145 + x146 + x147 + x148 + x149 + x150 + x151 + x152 + x153 + x154
       + x155 + x156 =E= 1;

e14..  - 15*x14 - 37*x15 - 55*x16 - 24*x17 - 60*x18 - 18*x19 - 33*x20 - 48*x21
       - 40*x22 - 58*x23 - 67*x24 + x157 =E= 0;

e15..  - 15*x25 - 22*x27 - 40*x28 - 38*x29 - 52*x30 - 33*x31 - 48*x32 - 42*x33
       - 55*x34 - 61*x35 - 61*x36 + x158 =E= 0;

e16..  - 37*x37 - 22*x38 - 18*x40 - 16*x41 - 30*x42 - 43*x43 - 28*x44 - 20*x45
       - 58*x46 - 39*x47 - 39*x48 + x159 =E= 0;

e17..  - 55*x49 - 40*x50 - 18*x51 - 34*x53 - 12*x54 - 61*x55 - 46*x56 - 24*x57
       - 62*x58 - 43*x59 - 34*x60 + x160 =E= 0;

e18..  - 24*x61 - 38*x62 - 16*x63 - 34*x64 - 36*x66 - 27*x67 - 12*x68 - 24*x69
       - 49*x70 - 37*x71 - 43*x72 + x161 =E= 0;

e19..  - 60*x73 - 52*x74 - 30*x75 - 12*x76 - 36*x77 - 57*x79 - 42*x80 - 12*x81
       - 50*x82 - 31*x83 - 22*x84 + x162 =E= 0;

e20..  - 18*x85 - 33*x86 - 43*x87 - 61*x88 - 27*x89 - 57*x90 - 15*x92 - 45*x93
       - 22*x94 - 40*x95 - 61*x96 + x163 =E= 0;

e21..  - 33*x97 - 48*x98 - 28*x99 - 46*x100 - 12*x101 - 42*x102 - 15*x103
       - 30*x105 - 37*x106 - 25*x107 - 46*x108 + x164 =E= 0;

e22..  - 48*x109 - 42*x110 - 20*x111 - 24*x112 - 24*x113 - 12*x114 - 45*x115
       - 30*x116 - 38*x118 - 19*x119 - 19*x120 + x165 =E= 0;

e23..  - 40*x121 - 55*x122 - 58*x123 - 62*x124 - 49*x125 - 50*x126 - 22*x127
       - 37*x128 - 38*x129 - 19*x131 - 40*x132 + x166 =E= 0;

e24..  - 58*x133 - 61*x134 - 39*x135 - 43*x136 - 37*x137 - 31*x138 - 40*x139
       - 25*x140 - 19*x141 - 19*x142 - 21*x144 + x167 =E= 0;

e25..  - 67*x145 - 61*x146 - 39*x147 - 34*x148 - 43*x149 - 22*x150 - 61*x151
       - 46*x152 - 19*x153 - 40*x154 - 21*x155 + x168 =E= 0;

e26..  - x13 - x25 - x37 - x49 - x61 - x73 - x85 - x97 - x109 - x121 - x133
       - x145 + x169 =E= 0;

e27..  - x14 - x26 - x38 - x50 - x62 - x74 - x86 - x98 - x110 - x122 - x134
       - x146 + x170 =E= 0;

e28..  - x15 - x27 - x39 - x51 - x63 - x75 - x87 - x99 - x111 - x123 - x135
       - x147 + x171 =E= 0;

e29..  - x16 - x28 - x40 - x52 - x64 - x76 - x88 - x100 - x112 - x124 - x136
       - x148 + x172 =E= 0;

e30..  - x17 - x29 - x41 - x53 - x65 - x77 - x89 - x101 - x113 - x125 - x137
       - x149 + x173 =E= 0;

e31..  - x18 - x30 - x42 - x54 - x66 - x78 - x90 - x102 - x114 - x126 - x138
       - x150 + x174 =E= 0;

e32..  - x19 - x31 - x43 - x55 - x67 - x79 - x91 - x103 - x115 - x127 - x139
       - x151 + x175 =E= 0;

e33..  - x20 - x32 - x44 - x56 - x68 - x80 - x92 - x104 - x116 - x128 - x140
       - x152 + x176 =E= 0;

e34..  - x21 - x33 - x45 - x57 - x69 - x81 - x93 - x105 - x117 - x129 - x141
       - x153 + x177 =E= 0;

e35..  - x22 - x34 - x46 - x58 - x70 - x82 - x94 - x106 - x118 - x130 - x142
       - x154 + x178 =E= 0;

e36..  - x23 - x35 - x47 - x59 - x71 - x83 - x95 - x107 - x119 - x131 - x143
       - x155 + x179 =E= 0;

e37..  - x24 - x36 - x48 - x60 - x72 - x84 - x96 - x108 - x120 - x132 - x144
       - x156 + x180 =E= 0;

e38..  - ceil(x169/(1 + x169)) + x1 =E= 0;

e39..  - ceil(x170/(1 + x170)) + x2 =E= 0;

e40..  - ceil(x171/(1 + x171)) + x3 =E= 0;

e41..  - ceil(x172/(1 + x172)) + x4 =E= 0;

e42..  - ceil(x173/(1 + x173)) + x5 =E= 0;

e43..  - ceil(x174/(1 + x174)) + x6 =E= 0;

e44..  - ceil(x175/(1 + x175)) + x7 =E= 0;

e45..  - ceil(x176/(1 + x176)) + x8 =E= 0;

e46..  - ceil(x177/(1 + x177)) + x9 =E= 0;

e47..  - ceil(x178/(1 + x178)) + x10 =E= 0;

e48..  - ceil(x179/(1 + x179)) + x11 =E= 0;

e49..  - ceil(x180/(1 + x180)) + x12 =E= 0;

e50..  - 15*x157 - 10*x158 - 12*x159 - 18*x160 - 5*x161 - 24*x162 - 11*x163
       - 16*x164 - 13*x165 - 22*x166 - 19*x167 - 20*x168 + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 
x9.up = 1; 
x10.up = 1; 
x11.up = 1; 
x12.up = 1; 
x13.up = 1; 
x14.up = 1; 
x15.up = 1; 
x16.up = 1; 
x17.up = 1; 
x18.up = 1; 
x19.up = 1; 
x20.up = 1; 
x21.up = 1; 
x22.up = 1; 
x23.up = 1; 
x24.up = 1; 
x25.up = 1; 
x26.up = 1; 
x27.up = 1; 
x28.up = 1; 
x29.up = 1; 
x30.up = 1; 
x31.up = 1; 
x32.up = 1; 
x33.up = 1; 
x34.up = 1; 
x35.up = 1; 
x36.up = 1; 
x37.up = 1; 
x38.up = 1; 
x39.up = 1; 
x40.up = 1; 
x41.up = 1; 
x42.up = 1; 
x43.up = 1; 
x44.up = 1; 
x45.up = 1; 
x46.up = 1; 
x47.up = 1; 
x48.up = 1; 
x49.up = 1; 
x50.up = 1; 
x51.up = 1; 
x52.up = 1; 
x53.up = 1; 
x54.up = 1; 
x55.up = 1; 
x56.up = 1; 
x57.up = 1; 
x58.up = 1; 
x59.up = 1; 
x60.up = 1; 
x61.up = 1; 
x62.up = 1; 
x63.up = 1; 
x64.up = 1; 
x65.up = 1; 
x66.up = 1; 
x67.up = 1; 
x68.up = 1; 
x69.up = 1; 
x70.up = 1; 
x71.up = 1; 
x72.up = 1; 
x73.up = 1; 
x74.up = 1; 
x75.up = 1; 
x76.up = 1; 
x77.up = 1; 
x78.up = 1; 
x79.up = 1; 
x80.up = 1; 
x81.up = 1; 
x82.up = 1; 
x83.up = 1; 
x84.up = 1; 
x85.up = 1; 
x86.up = 1; 
x87.up = 1; 
x88.up = 1; 
x89.up = 1; 
x90.up = 1; 
x91.up = 1; 
x92.up = 1; 
x93.up = 1; 
x94.up = 1; 
x95.up = 1; 
x96.up = 1; 
x97.up = 1; 
x98.up = 1; 
x99.up = 1; 
x100.up = 1; 
x101.up = 1; 
x102.up = 1; 
x103.up = 1; 
x104.up = 1; 
x105.up = 1; 
x106.up = 1; 
x107.up = 1; 
x108.up = 1; 
x109.up = 1; 
x110.up = 1; 
x111.up = 1; 
x112.up = 1; 
x113.up = 1; 
x114.up = 1; 
x115.up = 1; 
x116.up = 1; 
x117.up = 1; 
x118.up = 1; 
x119.up = 1; 
x120.up = 1; 
x121.up = 1; 
x122.up = 1; 
x123.up = 1; 
x124.up = 1; 
x125.up = 1; 
x126.up = 1; 
x127.up = 1; 
x128.up = 1; 
x129.up = 1; 
x130.up = 1; 
x131.up = 1; 
x132.up = 1; 
x133.up = 1; 
x134.up = 1; 
x135.up = 1; 
x136.up = 1; 
x137.up = 1; 
x138.up = 1; 
x139.up = 1; 
x140.up = 1; 
x141.up = 1; 
x142.up = 1; 
x143.up = 1; 
x144.up = 1; 
x145.up = 1; 
x146.up = 1; 
x147.up = 1; 
x148.up = 1; 
x149.up = 1; 
x150.up = 1; 
x151.up = 1; 
x152.up = 1; 
x153.up = 1; 
x154.up = 1; 
x155.up = 1; 
x156.up = 1; 
x157.up = 67; 
x158.up = 67; 
x159.up = 67; 
x160.up = 67; 
x161.up = 67; 
x162.up = 67; 
x163.up = 67; 
x164.up = 67; 
x165.up = 67; 
x166.up = 67; 
x167.up = 67; 
x168.up = 67; 
x169.up = 12; 
x170.up = 12; 
x171.up = 12; 
x172.up = 12; 
x173.up = 12; 
x174.up = 12; 
x175.up = 12; 
x176.up = 12; 
x177.up = 12; 
x178.up = 12; 
x179.up = 12; 
x180.up = 12; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
