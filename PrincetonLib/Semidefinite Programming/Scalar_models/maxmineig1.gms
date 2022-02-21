*  NLP written by GAMS Convert at 09/19/06 14:42:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        111      111        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        201      201        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1348      760      588        0
*
*  Solve m using NLP minimizing objvar;


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
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111;


e1..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e2..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e3..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e4..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e5..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e6..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e7..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e8..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e9..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
      + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
      + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
      + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
      + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
      + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100 =E= 1;

e10..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + 2*x6 + 2*x7 + 2*x8 + 2*x9 + 2*x10
       + x12 + 2*x13 + 2*x14 + 2*x15 + 2*x16 + 2*x17 + 2*x18 + 2*x19 + 2*x20
       + x23 + 2*x24 + 2*x25 + 2*x26 + 2*x27 + 2*x28 + 2*x29 + 2*x30 + x34
       + 2*x35 + 2*x36 + 2*x37 + 2*x38 + 2*x39 + 2*x40 + x45 + 2*x46 + 2*x47
       + 2*x48 + 2*x49 + 2*x50 + x56 + 2*x57 + 2*x58 + 2*x59 + 2*x60 + x67
       + 2*x68 + 2*x69 + 2*x70 + x78 + 2*x79 + 2*x80 + x89 + 2*x90 + x100
       =E= 1;

e11..  - x1 + x101 =E= 0;

e12..  - x11 + x102 =E= 0;

e13.. x102*x156 - x12 + x103 =E= 0;

e14..  - x21 + x104 =E= 0;

e15.. x104*x156 - x22 + x105 =E= 0;

e16.. x104*x157 + x105*x165 - x23 + x106 =E= 0;

e17..  - x31 + x107 =E= 0;

e18.. x107*x156 - x32 + x108 =E= 0;

e19.. x107*x157 + x108*x165 - x33 + x109 =E= 0;

e20.. x107*x158 + x108*x166 + x109*x173 - x34 + x110 =E= 0;

e21..  - x41 + x111 =E= 0;

e22.. x111*x156 - x42 + x112 =E= 0;

e23.. x111*x157 + x112*x165 - x43 + x113 =E= 0;

e24.. x111*x158 + x112*x166 + x113*x173 - x44 + x114 =E= 0;

e25.. x111*x159 + x112*x167 + x113*x174 + x114*x180 - x45 + x115 =E= 0;

e26..  - x51 + x116 =E= 0;

e27.. x116*x156 - x52 + x117 =E= 0;

e28.. x116*x157 + x117*x165 - x53 + x118 =E= 0;

e29.. x116*x158 + x117*x166 + x118*x173 - x54 + x119 =E= 0;

e30.. x116*x159 + x117*x167 + x118*x174 + x119*x180 - x55 + x120 =E= 0;

e31.. x116*x160 + x117*x168 + x118*x175 + x119*x181 + x120*x186 - x56 + x121
       =E= 0;

e32..  - x61 + x122 =E= 0;

e33.. x122*x156 - x62 + x123 =E= 0;

e34.. x122*x157 + x123*x165 - x63 + x124 =E= 0;

e35.. x122*x158 + x123*x166 + x124*x173 - x64 + x125 =E= 0;

e36.. x122*x159 + x123*x167 + x124*x174 + x125*x180 - x65 + x126 =E= 0;

e37.. x122*x160 + x123*x168 + x124*x175 + x125*x181 + x126*x186 - x66 + x127
       =E= 0;

e38.. x122*x161 + x123*x169 + x124*x176 + x125*x182 + x126*x187 + x127*x191
       - x67 + x128 =E= 0;

e39..  - x71 + x129 =E= 0;

e40.. x129*x156 - x72 + x130 =E= 0;

e41.. x129*x157 + x130*x165 - x73 + x131 =E= 0;

e42.. x129*x158 + x130*x166 + x131*x173 - x74 + x132 =E= 0;

e43.. x129*x159 + x130*x167 + x131*x174 + x132*x180 - x75 + x133 =E= 0;

e44.. x129*x160 + x130*x168 + x131*x175 + x132*x181 + x133*x186 - x76 + x134
       =E= 0;

e45.. x129*x161 + x130*x169 + x131*x176 + x132*x182 + x133*x187 + x134*x191
       - x77 + x135 =E= 0;

e46.. x129*x162 + x130*x170 + x131*x177 + x132*x183 + x133*x188 + x134*x192 + 
      x135*x195 - x78 + x136 =E= 0;

e47..  - x81 + x137 =E= 0;

e48.. x137*x156 - x82 + x138 =E= 0;

e49.. x137*x157 + x138*x165 - x83 + x139 =E= 0;

e50.. x137*x158 + x138*x166 + x139*x173 - x84 + x140 =E= 0;

e51.. x137*x159 + x138*x167 + x139*x174 + x140*x180 - x85 + x141 =E= 0;

e52.. x137*x160 + x138*x168 + x139*x175 + x140*x181 + x141*x186 - x86 + x142
       =E= 0;

e53.. x137*x161 + x138*x169 + x139*x176 + x140*x182 + x141*x187 + x142*x191
       - x87 + x143 =E= 0;

e54.. x137*x162 + x138*x170 + x139*x177 + x140*x183 + x141*x188 + x142*x192 + 
      x143*x195 - x88 + x144 =E= 0;

e55.. x137*x163 + x138*x171 + x139*x178 + x140*x184 + x141*x189 + x142*x193 + 
      x143*x196 + x144*x198 - x89 + x145 =E= 0;

e56..  - x91 + x146 =E= 0;

e57.. x146*x156 - x92 + x147 =E= 0;

e58.. x146*x157 + x147*x165 - x93 + x148 =E= 0;

e59.. x146*x158 + x147*x166 + x148*x173 - x94 + x149 =E= 0;

e60.. x146*x159 + x147*x167 + x148*x174 + x149*x180 - x95 + x150 =E= 0;

e61.. x146*x160 + x147*x168 + x148*x175 + x149*x181 + x150*x186 - x96 + x151
       =E= 0;

e62.. x146*x161 + x147*x169 + x148*x176 + x149*x182 + x150*x187 + x151*x191
       - x97 + x152 =E= 0;

e63.. x146*x162 + x147*x170 + x148*x177 + x149*x183 + x150*x188 + x151*x192 + 
      x152*x195 - x98 + x153 =E= 0;

e64.. x146*x163 + x147*x171 + x148*x178 + x149*x184 + x150*x189 + x151*x193 + 
      x152*x196 + x153*x198 - x99 + x154 =E= 0;

e65.. x146*x164 + x147*x172 + x148*x179 + x149*x185 + x150*x190 + x151*x194 + 
      x152*x197 + x153*x199 + x154*x200 - x100 + x155 =E= 0;

e66.. x101*x156 - x2 =E= 0;

e67.. x101*x157 - x3 =E= 0;

e68.. x101*x158 - x4 =E= 0;

e69.. x101*x159 - x5 =E= 0;

e70.. x101*x160 - x6 =E= 0;

e71.. x101*x161 - x7 =E= 0;

e72.. x101*x162 - x8 =E= 0;

e73.. x101*x163 - x9 =E= 0;

e74.. x101*x164 - x10 =E= 0;

e75.. x103*x165 - x13 =E= 0;

e76.. x103*x166 - x14 =E= 0;

e77.. x103*x167 - x15 =E= 0;

e78.. x103*x168 - x16 =E= 0;

e79.. x103*x169 - x17 =E= 0;

e80.. x103*x170 - x18 =E= 0;

e81.. x103*x171 - x19 =E= 0;

e82.. x103*x172 - x20 =E= 0;

e83.. x106*x173 + x104*x158 - x24 =E= 0;

e84.. x106*x174 + x104*x159 - x25 =E= 0;

e85.. x106*x175 + x104*x160 - x26 =E= 0;

e86.. x106*x176 + x104*x161 - x27 =E= 0;

e87.. x106*x177 + x104*x162 - x28 =E= 0;

e88.. x106*x178 + x104*x163 - x29 =E= 0;

e89.. x106*x179 + x104*x164 - x30 =E= 0;

e90.. x110*x180 + x107*x159 + x108*x167 - x35 =E= 0;

e91.. x110*x181 + x107*x160 + x108*x168 - x36 =E= 0;

e92.. x110*x182 + x107*x161 + x108*x169 - x37 =E= 0;

e93.. x110*x183 + x107*x162 + x108*x170 - x38 =E= 0;

e94.. x110*x184 + x107*x163 + x108*x171 - x39 =E= 0;

e95.. x110*x185 + x107*x164 + x108*x172 - x40 =E= 0;

e96.. x115*x186 + x111*x160 + x112*x168 + x113*x175 - x46 =E= 0;

e97.. x115*x187 + x111*x161 + x112*x169 + x113*x176 - x47 =E= 0;

e98.. x115*x188 + x111*x162 + x112*x170 + x113*x177 - x48 =E= 0;

e99.. x115*x189 + x111*x163 + x112*x171 + x113*x178 - x49 =E= 0;

e100.. x115*x190 + x111*x164 + x112*x172 + x113*x179 - x50 =E= 0;

e101.. x121*x191 + x116*x161 + x117*x169 + x118*x176 + x119*x182 - x57 =E= 0;

e102.. x121*x192 + x116*x162 + x117*x170 + x118*x177 + x119*x183 - x58 =E= 0;

e103.. x121*x193 + x116*x163 + x117*x171 + x118*x178 + x119*x184 - x59 =E= 0;

e104.. x121*x194 + x116*x164 + x117*x172 + x118*x179 + x119*x185 - x60 =E= 0;

e105.. x128*x195 + x122*x162 + x123*x170 + x124*x177 + x125*x183 + x126*x188
        - x68 =E= 0;

e106.. x128*x196 + x122*x163 + x123*x171 + x124*x178 + x125*x184 + x126*x189
        - x69 =E= 0;

e107.. x128*x197 + x122*x164 + x123*x172 + x124*x179 + x125*x185 + x126*x190
        - x70 =E= 0;

e108.. x136*x198 + x129*x163 + x130*x171 + x131*x178 + x132*x184 + x133*x189 + 
       x134*x193 - x79 =E= 0;

e109.. x136*x199 + x129*x164 + x130*x172 + x131*x179 + x132*x185 + x133*x190 + 
       x134*x194 - x80 =E= 0;

e110.. x145*x200 + x137*x164 + x138*x172 + x139*x179 + x140*x185 + x141*x190 + 
       x142*x194 + x143*x197 - x90 =E= 0;

e111..    1.08828*x2 + 1.05718*x3 + 0.228192*x4 - 1.30634*x5 - 0.65168*x6
        - 1.260084*x7 - 0.469946*x8 - 0.34633*x9 + 2.809918*x10 + 3.586448*x12
        + 0.972156*x13 - 1.285152*x14 + 3.645282*x15 + 0.38707*x16
        + 1.048474*x17 + 0.627214*x18 + 3.746396*x19 - 4.027804*x20
        + 3.29591*x23 + 4.485358*x24 - 1.217538*x25 + 0.095654*x26
        + 0.943638*x27 - 0.621584*x28 - 1.716882*x29 - 2.250502*x30
        + 1.323736*x34 + 2.264256*x35 + 0.875896*x36 + 1.144872*x37
        - 0.163352*x38 + 0.966758*x39 + 3.761826*x40 + 1.477326*x45
        + 1.132984*x46 - 1.461894*x47 + 5.21283*x48 - 3.950838*x49
        + 1.46395*x50 + 4.341016*x56 - 1.031632*x57 - 1.94693*x58
        + 1.343486*x59 + 1.343322*x60 + 4.430323*x67 + 0.825328*x68
        + 0.150462*x69 + 0.956186*x70 + 0.964514*x78 - 0.61663*x79
        + 4.296174*x80 + 2.642236*x89 + 3.406506*x90 + 0.266262*x100 + objvar
        =E= 0;

* set non default bounds

x101.lo = 1E-6; 
x102.lo = 1E-6; 
x103.lo = 1E-6; 
x104.lo = 1E-6; 
x105.lo = 1E-6; 
x106.lo = 1E-6; 
x107.lo = 1E-6; 
x108.lo = 1E-6; 
x109.lo = 1E-6; 
x110.lo = 1E-6; 
x111.lo = 1E-6; 
x112.lo = 1E-6; 
x113.lo = 1E-6; 
x114.lo = 1E-6; 
x115.lo = 1E-6; 
x116.lo = 1E-6; 
x117.lo = 1E-6; 
x118.lo = 1E-6; 
x119.lo = 1E-6; 
x120.lo = 1E-6; 
x121.lo = 1E-6; 
x122.lo = 1E-6; 
x123.lo = 1E-6; 
x124.lo = 1E-6; 
x125.lo = 1E-6; 
x126.lo = 1E-6; 
x127.lo = 1E-6; 
x128.lo = 1E-6; 
x129.lo = 1E-6; 
x130.lo = 1E-6; 
x131.lo = 1E-6; 
x132.lo = 1E-6; 
x133.lo = 1E-6; 
x134.lo = 1E-6; 
x135.lo = 1E-6; 
x136.lo = 1E-6; 
x137.lo = 1E-6; 
x138.lo = 1E-6; 
x139.lo = 1E-6; 
x140.lo = 1E-6; 
x141.lo = 1E-6; 
x142.lo = 1E-6; 
x143.lo = 1E-6; 
x144.lo = 1E-6; 
x145.lo = 1E-6; 
x146.lo = 1E-6; 
x147.lo = 1E-6; 
x148.lo = 1E-6; 
x149.lo = 1E-6; 
x150.lo = 1E-6; 
x151.lo = 1E-6; 
x152.lo = 1E-6; 
x153.lo = 1E-6; 
x154.lo = 1E-6; 
x155.lo = 1E-6; 
x156.lo = 1E-7; 
x157.lo = 1E-7; 
x158.lo = 1E-7; 
x159.lo = 1E-7; 
x160.lo = 1E-7; 
x161.lo = 1E-7; 
x162.lo = 1E-7; 
x163.lo = 1E-7; 
x164.lo = 1E-7; 
x165.lo = 1E-7; 
x166.lo = 1E-7; 
x167.lo = 1E-7; 
x168.lo = 1E-7; 
x169.lo = 1E-7; 
x170.lo = 1E-7; 
x171.lo = 1E-7; 
x172.lo = 1E-7; 
x173.lo = 1E-7; 
x174.lo = 1E-7; 
x175.lo = 1E-7; 
x176.lo = 1E-7; 
x177.lo = 1E-7; 
x178.lo = 1E-7; 
x179.lo = 1E-7; 
x180.lo = 1E-7; 
x181.lo = 1E-7; 
x182.lo = 1E-7; 
x183.lo = 1E-7; 
x184.lo = 1E-7; 
x185.lo = 1E-7; 
x186.lo = 1E-7; 
x187.lo = 1E-7; 
x188.lo = 1E-7; 
x189.lo = 1E-7; 
x190.lo = 1E-7; 
x191.lo = 1E-7; 
x192.lo = 1E-7; 
x193.lo = 1E-7; 
x194.lo = 1E-7; 
x195.lo = 1E-7; 
x196.lo = 1E-7; 
x197.lo = 1E-7; 
x198.lo = 1E-7; 
x199.lo = 1E-7; 
x200.lo = 1E-7; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 
x20.l = 1; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 
x34.l = 1; 
x35.l = 1; 
x36.l = 1; 
x37.l = 1; 
x38.l = 1; 
x39.l = 1; 
x40.l = 1; 
x45.l = 1; 
x46.l = 1; 
x47.l = 1; 
x48.l = 1; 
x49.l = 1; 
x50.l = 1; 
x56.l = 1; 
x57.l = 1; 
x58.l = 1; 
x59.l = 1; 
x60.l = 1; 
x67.l = 1; 
x68.l = 1; 
x69.l = 1; 
x70.l = 1; 
x78.l = 1; 
x79.l = 1; 
x80.l = 1; 
x89.l = 1; 
x90.l = 1; 
x100.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
