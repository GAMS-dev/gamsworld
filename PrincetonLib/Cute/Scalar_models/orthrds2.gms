*  NLP written by GAMS Convert at 10/06/06 11:47:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        101      101        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        204      204        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        701        1      700        0
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
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101;


e1.. sqr(sqr(x4 - x1) + sqr(x104 - x2)) - (sqr(x4 - x1) + sqr(x104 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e2.. sqr(sqr(x5 - x1) + sqr(x105 - x2)) - (sqr(x5 - x1) + sqr(x105 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e3.. sqr(sqr(x6 - x1) + sqr(x106 - x2)) - (sqr(x6 - x1) + sqr(x106 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e4.. sqr(sqr(x7 - x1) + sqr(x107 - x2)) - (sqr(x7 - x1) + sqr(x107 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e5.. sqr(sqr(x8 - x1) + sqr(x108 - x2)) - (sqr(x8 - x1) + sqr(x108 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e6.. sqr(sqr(x9 - x1) + sqr(x109 - x2)) - (sqr(x9 - x1) + sqr(x109 - x2))*sqr(1
      + sqr(x3)) =E= 0;

e7.. sqr(sqr(x10 - x1) + sqr(x110 - x2)) - (sqr(x10 - x1) + sqr(x110 - x2))*
     sqr(1 + sqr(x3)) =E= 0;

e8.. sqr(sqr(x11 - x1) + sqr(x111 - x2)) - (sqr(x11 - x1) + sqr(x111 - x2))*
     sqr(1 + sqr(x3)) =E= 0;

e9.. sqr(sqr(x12 - x1) + sqr(x112 - x2)) - (sqr(x12 - x1) + sqr(x112 - x2))*
     sqr(1 + sqr(x3)) =E= 0;

e10.. sqr(sqr(x13 - x1) + sqr(x113 - x2)) - (sqr(x13 - x1) + sqr(x113 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e11.. sqr(sqr(x14 - x1) + sqr(x114 - x2)) - (sqr(x14 - x1) + sqr(x114 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e12.. sqr(sqr(x15 - x1) + sqr(x115 - x2)) - (sqr(x15 - x1) + sqr(x115 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e13.. sqr(sqr(x16 - x1) + sqr(x116 - x2)) - (sqr(x16 - x1) + sqr(x116 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e14.. sqr(sqr(x17 - x1) + sqr(x117 - x2)) - (sqr(x17 - x1) + sqr(x117 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e15.. sqr(sqr(x18 - x1) + sqr(x118 - x2)) - (sqr(x18 - x1) + sqr(x118 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e16.. sqr(sqr(x19 - x1) + sqr(x119 - x2)) - (sqr(x19 - x1) + sqr(x119 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e17.. sqr(sqr(x20 - x1) + sqr(x120 - x2)) - (sqr(x20 - x1) + sqr(x120 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e18.. sqr(sqr(x21 - x1) + sqr(x121 - x2)) - (sqr(x21 - x1) + sqr(x121 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e19.. sqr(sqr(x22 - x1) + sqr(x122 - x2)) - (sqr(x22 - x1) + sqr(x122 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e20.. sqr(sqr(x23 - x1) + sqr(x123 - x2)) - (sqr(x23 - x1) + sqr(x123 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e21.. sqr(sqr(x24 - x1) + sqr(x124 - x2)) - (sqr(x24 - x1) + sqr(x124 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e22.. sqr(sqr(x25 - x1) + sqr(x125 - x2)) - (sqr(x25 - x1) + sqr(x125 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e23.. sqr(sqr(x26 - x1) + sqr(x126 - x2)) - (sqr(x26 - x1) + sqr(x126 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e24.. sqr(sqr(x27 - x1) + sqr(x127 - x2)) - (sqr(x27 - x1) + sqr(x127 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e25.. sqr(sqr(x28 - x1) + sqr(x128 - x2)) - (sqr(x28 - x1) + sqr(x128 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e26.. sqr(sqr(x29 - x1) + sqr(x129 - x2)) - (sqr(x29 - x1) + sqr(x129 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e27.. sqr(sqr(x30 - x1) + sqr(x130 - x2)) - (sqr(x30 - x1) + sqr(x130 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e28.. sqr(sqr(x31 - x1) + sqr(x131 - x2)) - (sqr(x31 - x1) + sqr(x131 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e29.. sqr(sqr(x32 - x1) + sqr(x132 - x2)) - (sqr(x32 - x1) + sqr(x132 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e30.. sqr(sqr(x33 - x1) + sqr(x133 - x2)) - (sqr(x33 - x1) + sqr(x133 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e31.. sqr(sqr(x34 - x1) + sqr(x134 - x2)) - (sqr(x34 - x1) + sqr(x134 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e32.. sqr(sqr(x35 - x1) + sqr(x135 - x2)) - (sqr(x35 - x1) + sqr(x135 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e33.. sqr(sqr(x36 - x1) + sqr(x136 - x2)) - (sqr(x36 - x1) + sqr(x136 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e34.. sqr(sqr(x37 - x1) + sqr(x137 - x2)) - (sqr(x37 - x1) + sqr(x137 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e35.. sqr(sqr(x38 - x1) + sqr(x138 - x2)) - (sqr(x38 - x1) + sqr(x138 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e36.. sqr(sqr(x39 - x1) + sqr(x139 - x2)) - (sqr(x39 - x1) + sqr(x139 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e37.. sqr(sqr(x40 - x1) + sqr(x140 - x2)) - (sqr(x40 - x1) + sqr(x140 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e38.. sqr(sqr(x41 - x1) + sqr(x141 - x2)) - (sqr(x41 - x1) + sqr(x141 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e39.. sqr(sqr(x42 - x1) + sqr(x142 - x2)) - (sqr(x42 - x1) + sqr(x142 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e40.. sqr(sqr(x43 - x1) + sqr(x143 - x2)) - (sqr(x43 - x1) + sqr(x143 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e41.. sqr(sqr(x44 - x1) + sqr(x144 - x2)) - (sqr(x44 - x1) + sqr(x144 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e42.. sqr(sqr(x45 - x1) + sqr(x145 - x2)) - (sqr(x45 - x1) + sqr(x145 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e43.. sqr(sqr(x46 - x1) + sqr(x146 - x2)) - (sqr(x46 - x1) + sqr(x146 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e44.. sqr(sqr(x47 - x1) + sqr(x147 - x2)) - (sqr(x47 - x1) + sqr(x147 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e45.. sqr(sqr(x48 - x1) + sqr(x148 - x2)) - (sqr(x48 - x1) + sqr(x148 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e46.. sqr(sqr(x49 - x1) + sqr(x149 - x2)) - (sqr(x49 - x1) + sqr(x149 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e47.. sqr(sqr(x50 - x1) + sqr(x150 - x2)) - (sqr(x50 - x1) + sqr(x150 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e48.. sqr(sqr(x51 - x1) + sqr(x151 - x2)) - (sqr(x51 - x1) + sqr(x151 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e49.. sqr(sqr(x52 - x1) + sqr(x152 - x2)) - (sqr(x52 - x1) + sqr(x152 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e50.. sqr(sqr(x53 - x1) + sqr(x153 - x2)) - (sqr(x53 - x1) + sqr(x153 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e51.. sqr(sqr(x54 - x1) + sqr(x154 - x2)) - (sqr(x54 - x1) + sqr(x154 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e52.. sqr(sqr(x55 - x1) + sqr(x155 - x2)) - (sqr(x55 - x1) + sqr(x155 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e53.. sqr(sqr(x56 - x1) + sqr(x156 - x2)) - (sqr(x56 - x1) + sqr(x156 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e54.. sqr(sqr(x57 - x1) + sqr(x157 - x2)) - (sqr(x57 - x1) + sqr(x157 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e55.. sqr(sqr(x58 - x1) + sqr(x158 - x2)) - (sqr(x58 - x1) + sqr(x158 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e56.. sqr(sqr(x59 - x1) + sqr(x159 - x2)) - (sqr(x59 - x1) + sqr(x159 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e57.. sqr(sqr(x60 - x1) + sqr(x160 - x2)) - (sqr(x60 - x1) + sqr(x160 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e58.. sqr(sqr(x61 - x1) + sqr(x161 - x2)) - (sqr(x61 - x1) + sqr(x161 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e59.. sqr(sqr(x62 - x1) + sqr(x162 - x2)) - (sqr(x62 - x1) + sqr(x162 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e60.. sqr(sqr(x63 - x1) + sqr(x163 - x2)) - (sqr(x63 - x1) + sqr(x163 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e61.. sqr(sqr(x64 - x1) + sqr(x164 - x2)) - (sqr(x64 - x1) + sqr(x164 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e62.. sqr(sqr(x65 - x1) + sqr(x165 - x2)) - (sqr(x65 - x1) + sqr(x165 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e63.. sqr(sqr(x66 - x1) + sqr(x166 - x2)) - (sqr(x66 - x1) + sqr(x166 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e64.. sqr(sqr(x67 - x1) + sqr(x167 - x2)) - (sqr(x67 - x1) + sqr(x167 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e65.. sqr(sqr(x68 - x1) + sqr(x168 - x2)) - (sqr(x68 - x1) + sqr(x168 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e66.. sqr(sqr(x69 - x1) + sqr(x169 - x2)) - (sqr(x69 - x1) + sqr(x169 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e67.. sqr(sqr(x70 - x1) + sqr(x170 - x2)) - (sqr(x70 - x1) + sqr(x170 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e68.. sqr(sqr(x71 - x1) + sqr(x171 - x2)) - (sqr(x71 - x1) + sqr(x171 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e69.. sqr(sqr(x72 - x1) + sqr(x172 - x2)) - (sqr(x72 - x1) + sqr(x172 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e70.. sqr(sqr(x73 - x1) + sqr(x173 - x2)) - (sqr(x73 - x1) + sqr(x173 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e71.. sqr(sqr(x74 - x1) + sqr(x174 - x2)) - (sqr(x74 - x1) + sqr(x174 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e72.. sqr(sqr(x75 - x1) + sqr(x175 - x2)) - (sqr(x75 - x1) + sqr(x175 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e73.. sqr(sqr(x76 - x1) + sqr(x176 - x2)) - (sqr(x76 - x1) + sqr(x176 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e74.. sqr(sqr(x77 - x1) + sqr(x177 - x2)) - (sqr(x77 - x1) + sqr(x177 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e75.. sqr(sqr(x78 - x1) + sqr(x178 - x2)) - (sqr(x78 - x1) + sqr(x178 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e76.. sqr(sqr(x79 - x1) + sqr(x179 - x2)) - (sqr(x79 - x1) + sqr(x179 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e77.. sqr(sqr(x80 - x1) + sqr(x180 - x2)) - (sqr(x80 - x1) + sqr(x180 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e78.. sqr(sqr(x81 - x1) + sqr(x181 - x2)) - (sqr(x81 - x1) + sqr(x181 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e79.. sqr(sqr(x82 - x1) + sqr(x182 - x2)) - (sqr(x82 - x1) + sqr(x182 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e80.. sqr(sqr(x83 - x1) + sqr(x183 - x2)) - (sqr(x83 - x1) + sqr(x183 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e81.. sqr(sqr(x84 - x1) + sqr(x184 - x2)) - (sqr(x84 - x1) + sqr(x184 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e82.. sqr(sqr(x85 - x1) + sqr(x185 - x2)) - (sqr(x85 - x1) + sqr(x185 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e83.. sqr(sqr(x86 - x1) + sqr(x186 - x2)) - (sqr(x86 - x1) + sqr(x186 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e84.. sqr(sqr(x87 - x1) + sqr(x187 - x2)) - (sqr(x87 - x1) + sqr(x187 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e85.. sqr(sqr(x88 - x1) + sqr(x188 - x2)) - (sqr(x88 - x1) + sqr(x188 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e86.. sqr(sqr(x89 - x1) + sqr(x189 - x2)) - (sqr(x89 - x1) + sqr(x189 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e87.. sqr(sqr(x90 - x1) + sqr(x190 - x2)) - (sqr(x90 - x1) + sqr(x190 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e88.. sqr(sqr(x91 - x1) + sqr(x191 - x2)) - (sqr(x91 - x1) + sqr(x191 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e89.. sqr(sqr(x92 - x1) + sqr(x192 - x2)) - (sqr(x92 - x1) + sqr(x192 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e90.. sqr(sqr(x93 - x1) + sqr(x193 - x2)) - (sqr(x93 - x1) + sqr(x193 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e91.. sqr(sqr(x94 - x1) + sqr(x194 - x2)) - (sqr(x94 - x1) + sqr(x194 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e92.. sqr(sqr(x95 - x1) + sqr(x195 - x2)) - (sqr(x95 - x1) + sqr(x195 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e93.. sqr(sqr(x96 - x1) + sqr(x196 - x2)) - (sqr(x96 - x1) + sqr(x196 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e94.. sqr(sqr(x97 - x1) + sqr(x197 - x2)) - (sqr(x97 - x1) + sqr(x197 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e95.. sqr(sqr(x98 - x1) + sqr(x198 - x2)) - (sqr(x98 - x1) + sqr(x198 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e96.. sqr(sqr(x99 - x1) + sqr(x199 - x2)) - (sqr(x99 - x1) + sqr(x199 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e97.. sqr(sqr(x100 - x1) + sqr(x200 - x2)) - (sqr(x100 - x1) + sqr(x200 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e98.. sqr(sqr(x101 - x1) + sqr(x201 - x2)) - (sqr(x101 - x1) + sqr(x201 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e99.. sqr(sqr(x102 - x1) + sqr(x202 - x2)) - (sqr(x102 - x1) + sqr(x202 - x2))*
      sqr(1 + sqr(x3)) =E= 0;

e100.. sqr(sqr(x103 - x1) + sqr(x203 - x2)) - (sqr(x103 - x1) + sqr(x203 - x2))
       *sqr(1 + sqr(x3)) =E= 0;

e101..  - (sqr((-5.868) + x4) + sqr(x104) + sqr((-4.2036741799025) + x5) + sqr(
       (-0.264472762271325) + x105) + sqr((-4.80140182864233) + x6) + sqr((-
       0.606558108682393) + x106) + sqr((-5.50560621976846) + x7) + sqr((-
       1.05025055581883) + x107) + sqr((-1.1) + x8) + sqr((-1.1) + x108) + sqr(
       (-5.18055618713195) + x9) + sqr((-1.68326474264042) + x109) + sqr((-
       4.59819269345246) + x10) + sqr((-1.82055327718686) + x110) + sqr((-
       3.63881170392617) + x11) + sqr((-1.71229481392475) + x111) + sqr((-
       4.99942831047383) + x12) + sqr((-2.74845897198723) + x112) + sqr((-
       3.5530451741573) + x13) + sqr((-2.25483103256633) + x113) + sqr((-
       3.63717219139038) + x14) + sqr((-2.64256027872357) + x114) + sqr((-
       4.20489969314525) + x15) + sqr((-3.47859555176734) + x115) + sqr((-
       2.71657036678704) + x16) + sqr((-2.55102937586458) + x116) + sqr((-
       3.43288008156986) + x17) + sqr((-3.65564598767725) + x117) + sqr((-
       3.05929332300839) + x18) + sqr((-3.69805036651174) + x118) + sqr((-
       2.15993732983489) + x19) + sqr((-2.97289869013553) + x119) + sqr((-
       2.81722092103611) + x20) + sqr((-4.43922983738157) + x120) + sqr((-
       1.93633007006689) + x21) + sqr((-3.52217132195895) + x121) + sqr((-
       1.69705171808988) + x22) + sqr((-3.60641847638328) + x122) + sqr((-
       1.85966469774904) + x23) + sqr((-4.69697686555725) + x123) + sqr((-
       1.06232409494802) + x24) + sqr((-3.26949737816612) + x124) + sqr((-
       1.09550152464865) + x25) + sqr((-4.26669673569011) + x125) + sqr((-
       0.834522196709259) + x26) + sqr((-4.37471855766378) + x126) + sqr((-
       0.406637903735006) + x27) + sqr((-3.21887045386261) + x127) + sqr((-
       0.29119894000833) + x28) + sqr((-4.62847461044846) + x128) + sqr(
       5.95768352726685e-16 + x29) + sqr((-3.70469790324108) + x129) + sqr(
       0.214509853358743 + x30) + sqr((-3.40953648366151) + x130) + sqr(
       0.564382106997288 + x31) + sqr((-4.46754439813896) + x131) + sqr(
       0.580090664239162 + x32) + sqr((-3.04094175563157) + x132) + sqr(
       0.933213373942124 + x33) + sqr((-3.63462612028607) + x133) + sqr(
       1.24120714123211 + x34) + sqr((-3.82004278479442) + x134) + sqr(
       1.03875000495839 + x35) + sqr((-2.62358302993685) + x135) + sqr(
       1.70109834651926 + x36) + sqr((-3.61501799953229) + x136) + sqr(
       1.62023872509221 + x37) + sqr((-2.94720329992601) + x137) + sqr(
       1.5545966666838 + x38) + sqr((-2.4496523706414) + x138) + sqr(
       2.32909327531223 + x39) + sqr((-3.20572187523074) + x139) + sqr(
       1.77985170119756 + x40) + sqr((-2.15147112127115) + x140) + sqr(
       2.18503856328317 + x41) + sqr((-2.32682973683525) + x141) + sqr(
       2.6438336219943 + x42) + sqr((-2.48272502603451) + x142) + sqr(
       1.92388927100478 + x43) + sqr((-1.59157962105969) + x143) + sqr(
       2.81331508292801 + x44) + sqr((-2.04399305242613) + x144) + sqr(
       2.62711282054807 + x45) + sqr((-1.66721649274544) + x145) + sqr(
       2.22215667565108 + x46) + sqr((-1.2216409703404) + x146) + sqr(
       3.23506236344563 + x47) + sqr((-1.5223047957316) + x147) + sqr(
       2.43620846984662 + x48) + sqr((-0.964563168482514) + x148) + sqr(
       2.68654146781481 + x49) + sqr((-0.872910237639494) + x149) + sqr(
       3.30664978208069 + x50) + sqr((-0.849003363057774) + x150) + sqr(
       2.30120899144419 + x51) + sqr((-0.438979092555077) + x151) + sqr(
       3.16302185996504 + x52) + sqr((-0.399582585580836) + x152) + sqr(
       3.0472489887431 + x53) + sqr((-0.191716656165792) + x153) + sqr(
       2.37757817210618 + x54) + sqr(7.64697078180328e-16 + x154) + sqr(
       3.43307648617797 + x55) + sqr(0.215990864784216 + x155) + sqr(
       2.63147767664133 + x56) + sqr(0.332432939284909 + x156) + sqr(
       2.64974079467729 + x57) + sqr(0.505465089819425 + x157) + sqr(
       3.35224647412572 + x58) + sqr(0.860710603752065 + x158) + sqr(
       2.2831732961878 + x59) + sqr(0.741847973844425 + x159) + sqr(
       2.94120412996309 + x60) + sqr(1.16450509464392 + x160) + sqr(
       2.93943608022624 + x61) + sqr(1.38319362626102 + x161) + sqr(
       2.13736848476547 + x62) + sqr(1.17502826795003 + x162) + sqr(
       3.02274978886792 + x63) + sqr(1.91829534766308 + x163) + sqr(
       2.36295797786471 + x64) + sqr(1.71678946280827 + x164) + sqr(
       2.15472830991168 + x65) + sqr(1.78254628198262 + x165) + sqr(
       2.75410149128341 + x66) + sqr(2.58627344768029 + x166) + sqr(
       1.82907680453372 + x67) + sqr(1.94776896447531 + x167) + sqr(
       2.14580294563257 + x68) + sqr(2.59383018616706 + x168) + sqr(
       2.17012654177406 + x69) + sqr(2.98692293723245 + x169) + sqr(
       1.44094286805766 + x70) + sqr(2.27056264067895 + x170) + sqr(
       1.89831772520277 + x71) + sqr(3.45302712333779 + x171) + sqr(
       1.44887804992544 + x72) + sqr(3.07902258580462 + x172) + sqr(
       1.12579443253038 + x73) + sqr(2.84343215815668 + x173) + sqr(
       1.32767697835272 + x74) + sqr(4.08616957896276 + x174) + sqr(
       0.774548759756706 + x75) + sqr(3.01666824785722 + x175) + sqr(
       0.694003827376833 + x76) + sqr(3.63809546910454 + x176) + sqr(
       0.539909072419082 + x77) + sqr(4.27382038176819 + x177) + sqr(
       0.19229263514403 + x78) + sqr(3.05640391244183 + x178) + sqr(
       8.08948989597829e-16 + x79) + sqr(4.40385863355381 + x179) + sqr((-
       0.252448048569758) + x80) + sqr(4.01254682873829 + x180) + sqr((-
       0.424856899476278) + x81) + sqr(3.36308865524515 + x181) + sqr((-
       0.915554124672497) + x82) + sqr(4.7995027999786 + x182) + sqr((-
       0.90726383342057) + x83) + sqr(3.53355933275104 + x183) + sqr((-
       1.25291755907878) + x84) + sqr(3.85608374501456 + x184) + sqr((-
       1.82790329869642) + x85) + sqr(4.61675672869684 + x185) + sqr((-
       1.47863554411157) + x86) + sqr(3.14226047991225 + x186) + sqr((-
       2.32523175433798) + x87) + sqr(4.22958085950429 + x187) + sqr((-
       2.49345394546066) + x88) + sqr(3.92905471849003 + x188) + sqr((-
       2.17090775157579) + x89) + sqr(2.98799818027963 + x189) + sqr((-
       3.43665420897681) + x90) + sqr(4.15420131881415 + x190) + sqr((-
       2.85349923806322) + x91) + sqr(3.03866805498654 + x191) + sqr((-
       3.13788895333444) + x92) + sqr(2.94667386349527 + x192) + sqr((-
       4.24783926458491) + x93) + sqr(3.51411825459144 + x193) + sqr((-
       3.0986143637298) + x94) + sqr(2.25127511313797 + x194) + sqr((-
       4.2884540935128) + x95) + sqr(2.72153572437542 + x195) + sqr((-
       4.52836947502001) + x96) + sqr(2.48949218573998 + x196) + sqr((-
       3.51736660482476) + x97) + sqr(1.65514708815934 + x197) + sqr((-
       5.27709596372823) + x98) + sqr(2.08935009715341 + x198) + sqr((-
       4.34474532944416) + x99) + sqr(1.41169333265233 + x199) + sqr((-
       4.23693275471429) + x100) + sqr(1.08785943322325 + x200) + sqr((-
       5.71530289811595) + x101) + sqr(1.09025233658496 + x201) + sqr((-
       4.02557351025659) + x102) + sqr(0.508548199439831 + x202) + sqr((-
       5.07064394449931) + x103) + sqr(0.319017876529908 + x203)) + objvar
        =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = -1; 
x3.l = 1; 
x4.l = 5.868; 
x5.l = 4.2036741799025; 
x6.l = 4.80140182864233; 
x7.l = 5.50560621976846; 
x8.l = 1.1; 
x9.l = 5.18055618713195; 
x10.l = 4.59819269345246; 
x11.l = 3.63881170392617; 
x12.l = 4.99942831047383; 
x13.l = 3.5530451741573; 
x14.l = 3.63717219139038; 
x15.l = 4.20489969314525; 
x16.l = 2.71657036678704; 
x17.l = 3.43288008156986; 
x18.l = 3.05929332300839; 
x19.l = 2.15993732983489; 
x20.l = 2.81722092103611; 
x21.l = 1.93633007006689; 
x22.l = 1.69705171808988; 
x23.l = 1.85966469774904; 
x24.l = 1.06232409494802; 
x25.l = 1.09550152464865; 
x26.l = 0.834522196709259; 
x27.l = 0.406637903735006; 
x28.l = 0.29119894000833; 
x29.l = -5.95768352726685E-16; 
x30.l = -0.214509853358743; 
x31.l = -0.564382106997288; 
x32.l = -0.580090664239162; 
x33.l = -0.933213373942124; 
x34.l = -1.24120714123211; 
x35.l = -1.03875000495839; 
x36.l = -1.70109834651926; 
x37.l = -1.62023872509221; 
x38.l = -1.5545966666838; 
x39.l = -2.32909327531223; 
x40.l = -1.77985170119756; 
x41.l = -2.18503856328317; 
x42.l = -2.6438336219943; 
x43.l = -1.92388927100478; 
x44.l = -2.81331508292801; 
x45.l = -2.62711282054807; 
x46.l = -2.22215667565108; 
x47.l = -3.23506236344563; 
x48.l = -2.43620846984662; 
x49.l = -2.68654146781481; 
x50.l = -3.30664978208069; 
x51.l = -2.30120899144419; 
x52.l = -3.16302185996504; 
x53.l = -3.0472489887431; 
x54.l = -2.37757817210618; 
x55.l = -3.43307648617797; 
x56.l = -2.63147767664133; 
x57.l = -2.64974079467729; 
x58.l = -3.35224647412572; 
x59.l = -2.2831732961878; 
x60.l = -2.94120412996309; 
x61.l = -2.93943608022624; 
x62.l = -2.13736848476547; 
x63.l = -3.02274978886792; 
x64.l = -2.36295797786471; 
x65.l = -2.15472830991168; 
x66.l = -2.75410149128341; 
x67.l = -1.82907680453372; 
x68.l = -2.14580294563257; 
x69.l = -2.17012654177406; 
x70.l = -1.44094286805766; 
x71.l = -1.89831772520277; 
x72.l = -1.44887804992544; 
x73.l = -1.12579443253038; 
x74.l = -1.32767697835272; 
x75.l = -0.774548759756706; 
x76.l = -0.694003827376833; 
x77.l = -0.539909072419082; 
x78.l = -0.19229263514403; 
x79.l = -8.08948989597829E-16; 
x80.l = 0.252448048569758; 
x81.l = 0.424856899476278; 
x82.l = 0.915554124672497; 
x83.l = 0.90726383342057; 
x84.l = 1.25291755907878; 
x85.l = 1.82790329869642; 
x86.l = 1.47863554411157; 
x87.l = 2.32523175433798; 
x88.l = 2.49345394546066; 
x89.l = 2.17090775157579; 
x90.l = 3.43665420897681; 
x91.l = 2.85349923806322; 
x92.l = 3.13788895333444; 
x93.l = 4.24783926458491; 
x94.l = 3.0986143637298; 
x95.l = 4.2884540935128; 
x96.l = 4.52836947502001; 
x97.l = 3.51736660482476; 
x98.l = 5.27709596372823; 
x99.l = 4.34474532944416; 
x100.l = 4.23693275471429; 
x101.l = 5.71530289811595; 
x102.l = 4.02557351025659; 
x103.l = 5.07064394449931; 
x105.l = 0.264472762271325; 
x106.l = 0.606558108682393; 
x107.l = 1.05025055581883; 
x108.l = 1.1; 
x109.l = 1.68326474264042; 
x110.l = 1.82055327718686; 
x111.l = 1.71229481392475; 
x112.l = 2.74845897198723; 
x113.l = 2.25483103256633; 
x114.l = 2.64256027872357; 
x115.l = 3.47859555176734; 
x116.l = 2.55102937586458; 
x117.l = 3.65564598767725; 
x118.l = 3.69805036651174; 
x119.l = 2.97289869013553; 
x120.l = 4.43922983738157; 
x121.l = 3.52217132195895; 
x122.l = 3.60641847638328; 
x123.l = 4.69697686555725; 
x124.l = 3.26949737816612; 
x125.l = 4.26669673569011; 
x126.l = 4.37471855766378; 
x127.l = 3.21887045386261; 
x128.l = 4.62847461044846; 
x129.l = 3.70469790324108; 
x130.l = 3.40953648366151; 
x131.l = 4.46754439813896; 
x132.l = 3.04094175563157; 
x133.l = 3.63462612028607; 
x134.l = 3.82004278479442; 
x135.l = 2.62358302993685; 
x136.l = 3.61501799953229; 
x137.l = 2.94720329992601; 
x138.l = 2.4496523706414; 
x139.l = 3.20572187523074; 
x140.l = 2.15147112127115; 
x141.l = 2.32682973683525; 
x142.l = 2.48272502603451; 
x143.l = 1.59157962105969; 
x144.l = 2.04399305242613; 
x145.l = 1.66721649274544; 
x146.l = 1.2216409703404; 
x147.l = 1.5223047957316; 
x148.l = 0.964563168482514; 
x149.l = 0.872910237639494; 
x150.l = 0.849003363057774; 
x151.l = 0.438979092555077; 
x152.l = 0.399582585580836; 
x153.l = 0.191716656165792; 
x154.l = -7.64697078180328E-16; 
x155.l = -0.215990864784216; 
x156.l = -0.332432939284909; 
x157.l = -0.505465089819425; 
x158.l = -0.860710603752065; 
x159.l = -0.741847973844425; 
x160.l = -1.16450509464392; 
x161.l = -1.38319362626102; 
x162.l = -1.17502826795003; 
x163.l = -1.91829534766308; 
x164.l = -1.71678946280827; 
x165.l = -1.78254628198262; 
x166.l = -2.58627344768029; 
x167.l = -1.94776896447531; 
x168.l = -2.59383018616706; 
x169.l = -2.98692293723245; 
x170.l = -2.27056264067895; 
x171.l = -3.45302712333779; 
x172.l = -3.07902258580462; 
x173.l = -2.84343215815668; 
x174.l = -4.08616957896276; 
x175.l = -3.01666824785722; 
x176.l = -3.63809546910454; 
x177.l = -4.27382038176819; 
x178.l = -3.05640391244183; 
x179.l = -4.40385863355381; 
x180.l = -4.01254682873829; 
x181.l = -3.36308865524515; 
x182.l = -4.7995027999786; 
x183.l = -3.53355933275104; 
x184.l = -3.85608374501456; 
x185.l = -4.61675672869684; 
x186.l = -3.14226047991225; 
x187.l = -4.22958085950429; 
x188.l = -3.92905471849003; 
x189.l = -2.98799818027963; 
x190.l = -4.15420131881415; 
x191.l = -3.03866805498654; 
x192.l = -2.94667386349527; 
x193.l = -3.51411825459144; 
x194.l = -2.25127511313797; 
x195.l = -2.72153572437542; 
x196.l = -2.48949218573998; 
x197.l = -1.65514708815934; 
x198.l = -2.08935009715341; 
x199.l = -1.41169333265233; 
x200.l = -1.08785943322325; 
x201.l = -1.09025233658496; 
x202.l = -0.508548199439831; 
x203.l = -0.319017876529908; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
