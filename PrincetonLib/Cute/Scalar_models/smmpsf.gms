*  NLP written by GAMS Convert at 10/06/06 11:52:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        264      241       23        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        721      721        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1694     1661       33        0
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
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258,x259
          ,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271,x272
          ,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284,x285
          ,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296,x297,x298
          ,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308,x309,x310,x311
          ,x312,x313,x314,x315,x316,x317,x318,x319,x320,x321,x322,x323,x324
          ,x325,x326,x327,x328,x329,x330,x331,x332,x333,x334,x335,x336,x337
          ,x338,x339,x340,x341,x342,x343,x344,x345,x346,x347,x348,x349,x350
          ,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,x361,x362,x363
          ,x364,x365,x366,x367,x368,x369,x370,x371,x372,x373,x374,x375,x376
          ,x377,x378,x379,x380,x381,x382,x383,x384,x385,x386,x387,x388,x389
          ,x390,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400,x401,x402
          ,x403,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413,x414,x415
          ,x416,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426,x427,x428
          ,x429,x430,x431,x432,x433,x434,x435,x436,x437,x438,x439,x440,x441
          ,x442,x443,x444,x445,x446,x447,x448,x449,x450,x451,x452,x453,x454
          ,x455,x456,x457,x458,x459,x460,x461,x462,x463,x464,x465,x466,x467
          ,x468,x469,x470,x471,x472,x473,x474,x475,x476,x477,x478,x479,x480
          ,x481,x482,x483,x484,x485,x486,x487,x488,x489,x490,x491,x492,x493
          ,x494,x495,x496,x497,x498,x499,x500,x501,x502,x503,x504,x505,x506
          ,x507,x508,x509,x510,x511,x512,x513,x514,x515,x516,x517,x518,x519
          ,x520,x521,x522,x523,x524,x525,x526,x527,x528,x529,x530,x531,x532
          ,x533,x534,x535,x536,x537,x538,x539,x540,x541,x542,x543,x544,x545
          ,x546,x547,x548,x549,x550,x551,x552,x553,x554,x555,x556,x557,x558
          ,x559,x560,x561,x562,x563,x564,x565,x566,x567,x568,x569,x570,x571
          ,x572,x573,x574,x575,x576,x577,x578,x579,x580,x581,x582,x583,x584
          ,x585,x586,x587,x588,x589,x590,x591,x592,x593,x594,x595,x596,x597
          ,x598,x599,x600,x601,x602,x603,x604,x605,x606,x607,x608,x609,x610
          ,x611,x612,x613,x614,x615,x616,x617,x618,x619,x620,x621,x622,x623
          ,x624,x625,x626,x627,x628,x629,x630,x631,x632,x633,x634,x635,x636
          ,x637,x638,x639,x640,x641,x642,x643,x644,x645,x646,x647,x648,x649
          ,x650,x651,x652,x653,x654,x655,x656,x657,x658,x659,x660,x661,x662
          ,x663,x664,x665,x666,x667,x668,x669,x670,x671,x672,x673,x674,x675
          ,x676,x677,x678,x679,x680,x681,x682,x683,x684,x685,x686,x687,x688
          ,x689,x690,x691,x692,x693,x694,x695,x696,x697,x698,x699,x700,x701
          ,x702,x703,x704,x705,x706,x707,x708,x709,x710,x711,x712,x713,x714
          ,x715,x716,x717,x718,x719,x720,objvar;

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
          ,x180,x181,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192
          ,x193,x194,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205
          ,x206,x207,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218
          ,x219,x220,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231
          ,x232,x233,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244
          ,x245,x246,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257
          ,x258,x259,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270
          ,x271,x272,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283
          ,x284,x285,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296
          ,x297,x298,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308,x309
          ,x310,x311,x312,x313,x314,x315,x316,x317,x318,x319,x320,x321,x322
          ,x323,x324,x325,x326,x327,x328,x329,x330,x331,x332,x333,x334,x335
          ,x336,x337,x338,x339,x340,x341,x342,x343,x344,x345,x346,x347,x348
          ,x349,x350,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,x361
          ,x362,x363,x364,x365,x366,x367,x368,x369,x370,x371,x372,x373,x374
          ,x375,x376,x377,x378,x379,x380,x381,x382,x383,x384,x385,x386,x387
          ,x388,x389,x390,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400
          ,x401,x402,x403,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413
          ,x414,x415,x416,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426
          ,x427,x428,x429,x430,x431,x432,x433,x434,x435,x436,x437,x438,x439
          ,x440,x441,x442,x443,x444,x445,x446,x447,x448,x449,x450,x451,x452
          ,x453,x454,x455,x456,x457,x458,x459,x460,x461,x462,x463,x464,x465
          ,x466,x467,x468,x469,x470,x471,x472,x473,x474,x475,x476,x477,x478
          ,x479,x480,x481,x482,x483,x484,x485,x486,x487,x488,x489,x490,x491
          ,x492,x493,x494,x495,x496,x497,x498,x499,x500,x501,x502,x503,x504
          ,x505,x506,x507,x508,x509,x510,x511,x512,x513,x514,x515,x516,x517
          ,x518,x519,x520,x521,x522,x523,x524,x525,x526,x527,x528,x529,x530
          ,x531,x532,x533,x534,x535,x536,x537,x538,x539,x540,x541,x542,x543
          ,x544,x545,x546,x547,x548,x549,x550,x551,x552,x553,x554,x555,x556
          ,x557,x558,x559,x560,x561,x562,x563,x564,x565,x566,x567,x568,x569
          ,x570,x571,x572,x573,x574,x575,x576,x577,x578,x579,x580,x581,x582
          ,x583,x584,x585,x586,x587,x588,x589,x590,x591,x592,x593,x594,x595
          ,x596,x597,x598,x599,x600,x601,x602,x603,x604,x605,x606,x607,x608
          ,x609,x610,x611,x612,x613,x614,x615,x616,x617,x618,x619,x620,x621
          ,x622,x623,x624,x625,x626,x627,x628,x629,x630,x631,x632,x633,x634
          ,x635,x636,x637,x638,x639,x640,x641,x642,x643,x644,x645,x646,x647
          ,x648,x649,x650,x651,x652,x653,x654,x655,x656,x657,x658,x659,x660
          ,x661,x662,x663,x664,x665,x666,x667,x668,x669,x670,x671,x672,x673
          ,x674,x675,x676,x677,x678,x679,x680,x681,x682,x683,x684,x685,x686
          ,x687,x688,x689,x690,x691,x692,x693,x694,x695,x696,x697,x698,x699
          ,x700,x701,x702,x703,x704,x705,x706,x707,x708,x709,x710,x711,x712
          ,x713,x714,x715,x716,x717,x718,x719,x720;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203,e204,e205,e206,e207
          ,e208,e209,e210,e211,e212,e213,e214,e215,e216,e217,e218,e219,e220
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229,e230,e231,e232,e233
          ,e234,e235,e236,e237,e238,e239,e240,e241,e242,e243,e244,e245,e246
          ,e247,e248,e249,e250,e251,e252,e253,e254,e255,e256,e257,e258,e259
          ,e260,e261,e262,e263,e264;


e1..  - 225*x1 - 116*x2 - 140*x3 - 140*x4 - 245*x5 - 110*x6 - 190*x7 - 205*x8
      - 205*x9 - 157*x10 - 157*x11 - 51*x12 - 116*x13 - 258*x14 - 225*x15
      - 245*x16 - 210*x17 - 130*x18 - 168*x19 - 168*x20 =G= -1010354;

e2..  - 225*x21 - 116*x22 - 140*x23 - 140*x24 - 245*x25 - 110*x26 - 190*x27
      - 205*x28 - 205*x29 - 157*x30 - 157*x31 - 51*x32 - 116*x33 - 258*x34
      - 225*x35 - 245*x36 - 210*x37 - 130*x38 - 168*x39 - 168*x40 =G= -1031485;

e3..  - 225*x41 - 116*x42 - 140*x43 - 140*x44 - 245*x45 - 110*x46 - 190*x47
      - 205*x48 - 205*x49 - 157*x50 - 157*x51 - 51*x52 - 116*x53 - 258*x54
      - 225*x55 - 245*x56 - 210*x57 - 130*x58 - 168*x59 - 168*x60 =G= -1021078;

e4..  - 225*x61 - 116*x62 - 140*x63 - 140*x64 - 245*x65 - 110*x66 - 190*x67
      - 205*x68 - 205*x69 - 157*x70 - 157*x71 - 51*x72 - 116*x73 - 258*x74
      - 225*x75 - 245*x76 - 210*x77 - 130*x78 - 168*x79 - 168*x80 =G= -999792;

e5..  - 225*x81 - 116*x82 - 140*x83 - 140*x84 - 245*x85 - 110*x86 - 190*x87
      - 205*x88 - 205*x89 - 157*x90 - 157*x91 - 51*x92 - 116*x93 - 258*x94
      - 225*x95 - 245*x96 - 210*x97 - 130*x98 - 168*x99 - 168*x100
      =G= -1003985;

e6..  - 225*x101 - 116*x102 - 140*x103 - 140*x104 - 245*x105 - 110*x106
      - 190*x107 - 205*x108 - 205*x109 - 157*x110 - 157*x111 - 51*x112
      - 116*x113 - 258*x114 - 225*x115 - 245*x116 - 210*x117 - 130*x118
      - 168*x119 - 168*x120 =G= -1028153;

e7..  - 225*x121 - 116*x122 - 140*x123 - 140*x124 - 245*x125 - 110*x126
      - 190*x127 - 205*x128 - 205*x129 - 157*x130 - 157*x131 - 51*x132
      - 116*x133 - 258*x134 - 225*x135 - 245*x136 - 210*x137 - 130*x138
      - 168*x139 - 168*x140 =G= -1006962;

e8..  - 225*x141 - 116*x142 - 140*x143 - 140*x144 - 245*x145 - 110*x146
      - 190*x147 - 205*x148 - 205*x149 - 157*x150 - 157*x151 - 51*x152
      - 116*x153 - 258*x154 - 225*x155 - 245*x156 - 210*x157 - 130*x158
      - 168*x159 - 168*x160 =G= -1020401;

e9..  - 225*x161 - 116*x162 - 140*x163 - 140*x164 - 245*x165 - 110*x166
      - 190*x167 - 205*x168 - 205*x169 - 157*x170 - 157*x171 - 51*x172
      - 116*x173 - 258*x174 - 225*x175 - 245*x176 - 210*x177 - 130*x178
      - 168*x179 - 168*x180 =G= -1028626;

e10..  - 225*x181 - 116*x182 - 140*x183 - 140*x184 - 245*x185 - 110*x186
       - 190*x187 - 205*x188 - 205*x189 - 157*x190 - 157*x191 - 51*x192
       - 116*x193 - 258*x194 - 225*x195 - 245*x196 - 210*x197 - 130*x198
       - 168*x199 - 168*x200 =G= -1020589;

e11..  - 225*x201 - 116*x202 - 140*x203 - 140*x204 - 245*x205 - 110*x206
       - 190*x207 - 205*x208 - 205*x209 - 157*x210 - 157*x211 - 51*x212
       - 116*x213 - 258*x214 - 225*x215 - 245*x216 - 210*x217 - 130*x218
       - 168*x219 - 168*x220 =G= -1028371;

e12..  - 225*x221 - 116*x222 - 140*x223 - 140*x224 - 245*x225 - 110*x226
       - 190*x227 - 205*x228 - 205*x229 - 157*x230 - 157*x231 - 51*x232
       - 116*x233 - 258*x234 - 225*x235 - 245*x236 - 210*x237 - 130*x238
       - 168*x239 - 168*x240 =G= -1040972;

e13..    x1 - x241 + x242 =E= 124;

e14..    x2 - x243 + x244 =E= 94;

e15..    x3 - x245 + x246 =E= 155;

e16..    x4 - x247 + x248 =E= 52;

e17..    x5 - x249 + x250 =E= 1899;

e18..    x6 - x251 + x252 =E= 29;

e19..    x7 - x253 + x254 =E= 226;

e20..    x8 - x255 + x256 =E= 1;

e21..    x9 - x257 + x258 =E= 1;

e22..    x10 - x259 + x260 =E= 257;

e23..    x11 - x261 + x262 =E= 515;

e24..    x12 - x263 + x264 =E= 23;

e25..    x13 - x265 + x266 =E= 76;

e26..    x14 - x267 + x268 =E= 60;

e27..    x15 - x269 + x270 =E= 1647;

e28..    x16 - x271 + x272 =E= 245;

e29..    x17 - x273 + x274 =E= 465;

e30..    x18 - x275 + x276 =E= 307;

e31..    x19 - x277 + x278 =E= 45;

e32..    x20 - x279 + x280 =E= 123;

e33..    x21 + x241 - x281 + x282 =E= 376;

e34..    x22 + x243 - x283 + x284 =E= 282;

e35..    x23 + x245 - x285 + x286 =E= 125;

e36..    x24 + x247 - x287 + x288 =E= 41;

e37..    x25 + x249 - x289 + x290 =E= 1557.333;

e38..    x26 + x251 - x291 + x292 =E= 14;

e39..    x27 + x253 - x293 + x294 =E= 180;

e40..    x28 + x255 - x295 + x296 =E= 81.333;

e41..    x29 + x257 - x297 + x298 =E= 68;

e42..    x30 + x259 - x299 + x300 =E= 211;

e43..    x31 + x261 - x301 + x302 =E= 426;

e44..    x32 + x263 - x303 + x304 =E= 20;

e45..    x33 + x265 - x305 + x306 =E= 59;

e46..    x34 + x267 - x307 + x308 =E= 39;

e47..    x35 + x269 - x309 + x310 =E= 1220.667;

e48..    x36 + x271 - x311 + x312 =E= 601;

e49..    x37 + x273 - x313 + x314 =E= 514;

e50..    x38 + x275 - x315 + x316 =E= 217;

e51..    x39 + x277 - x317 + x318 =E= 32;

e52..    x40 + x279 - x319 + x320 =E= 76;

e53..    x41 + x281 - x321 + x322 =E= 257;

e54..    x42 + x283 - x323 + x324 =E= 225;

e55..    x43 + x285 - x325 + x326 =E= 90;

e56..    x44 + x287 - x327 + x328 =E= 38;

e57..    x45 + x289 - x329 + x330 =E= 1481;

e58..    x46 + x291 - x331 + x332 =E= 14;

e59..    x47 + x293 - x333 + x334 =E= 217;

e60..    x48 + x295 - x335 + x336 =E= 86.333;

e61..    x49 + x297 - x337 + x338 =E= 88;

e62..    x50 + x299 - x339 + x340 =E= 210;

e63..    x51 + x301 - x341 + x342 =E= 472;

e64..    x52 + x303 - x343 + x344 =E= 18;

e65..    x53 + x305 - x345 + x346 =E= 44;

e66..    x54 + x307 - x347 + x348 =E= 42;

e67..    x55 + x309 - x349 + x350 =E= 1547;

e68..    x56 + x311 - x351 + x352 =E= 897;

e69..    x57 + x313 - x353 + x354 =E= 485;

e70..    x58 + x315 - x355 + x356 =E= 304;

e71..    x59 + x317 - x357 + x358 =E= 39;

e72..    x60 + x319 - x359 + x360 =E= 61;

e73..    x61 + x321 - x361 + x362 =E= 349;

e74..    x62 + x323 - x363 + x364 =E= 331;

e75..    x63 + x325 - x365 + x366 =E= 30;

e76..    x64 + x327 - x367 + x368 =E= 43;

e77..    x65 + x329 - x369 + x370 =E= 1472.667;

e78..    x66 + x331 - x371 + x372 =E= 23;

e79..    x67 + x333 - x373 + x374 =E= 280;

e80..    x68 + x335 - x375 + x376 =E= 96;

e81..    x69 + x337 - x377 + x378 =E= 91;

e82..    x70 + x339 - x379 + x380 =E= 264;

e83..    x71 + x341 - x381 + x382 =E= 610;

e84..    x72 + x343 - x383 + x384 =E= 21;

e85..    x73 + x345 - x385 + x386 =E= 15;

e86..    x74 + x347 - x387 + x388 =E= 53;

e87..    x75 + x349 - x389 + x390 =E= 1844.667;

e88..    x76 + x351 - x391 + x392 =E= 906;

e89..    x77 + x353 - x393 + x394 =E= 478;

e90..    x78 + x355 - x395 + x396 =E= 402;

e91..    x79 + x357 - x397 + x398 =E= 38;

e92..    x80 + x359 - x399 + x400 =E= 28;

e93..    x81 + x361 - x401 + x402 =E= 248;

e94..    x82 + x363 - x403 + x404 =E= 261;

e95..    x83 + x365 - x405 + x406 =E= 30;

e96..    x84 + x367 - x407 + x408 =E= 29;

e97..    x85 + x369 - x409 + x410 =E= 1434.667;

e98..    x86 + x371 - x411 + x412 =E= 20;

e99..    x87 + x373 - x413 + x414 =E= 255;

e100..    x88 + x375 - x415 + x416 =E= 91;

e101..    x89 + x377 - x417 + x418 =E= 75;

e102..    x90 + x379 - x419 + x420 =E= 259;

e103..    x91 + x381 - x421 + x422 =E= 570;

e104..    x92 + x383 - x423 + x424 =E= 23;

e105..    x93 + x385 - x425 + x426 =E= 10;

e106..    x94 + x387 - x427 + x428 =E= 53;

e107..    x95 + x389 - x429 + x430 =E= 1677.667;

e108..    x96 + x391 - x431 + x432 =E= 841;

e109..    x97 + x393 - x433 + x434 =E= 518;

e110..    x98 + x395 - x435 + x436 =E= 414;

e111..    x99 + x397 - x437 + x438 =E= 24;

e112..    x100 + x399 - x439 + x440 =E= 19;

e113..    x101 + x401 - x441 + x442 =E= 239;

e114..    x102 + x403 - x443 + x444 =E= 207;

e115..    x103 + x405 - x445 + x446 =E= 33.333;

e116..    x104 + x407 - x447 + x448 =E= 37;

e117..    x105 + x409 - x449 + x450 =E= 1616;

e118..    x106 + x411 - x451 + x452 =E= 22;

e119..    x107 + x413 - x453 + x454 =E= 280;

e120..    x108 + x415 - x455 + x456 =E= 160.667;

e121..    x109 + x417 - x457 + x458 =E= 92;

e122..    x110 + x419 - x459 + x460 =E= 249;

e123..    x111 + x421 - x461 + x462 =E= 588;

e124..    x112 + x423 - x463 + x464 =E= 25;

e125..    x113 + x425 - x465 + x466 =E= 23;

e126..    x114 + x427 - x467 + x468 =E= 39;

e127..    x115 + x429 - x469 + x470 =E= 1738.667;

e128..    x116 + x431 - x471 + x472 =E= 859;

e129..    x117 + x433 - x473 + x474 =E= 488;

e130..    x118 + x435 - x475 + x476 =E= 136;

e131..    x119 + x437 - x477 + x478 =E= 44;

e132..    x120 + x439 - x479 + x480 =E= 39;

e133..    x121 + x441 - x481 + x482 =E= 379;

e134..    x122 + x443 - x483 + x484 =E= 344;

e135..    x123 + x445 - x485 + x486 =E= 74.667;

e136..    x124 + x447 - x487 + x488 =E= 50;

e137..    x125 + x449 - x489 + x490 =E= 2060;

e138..    x126 + x451 - x491 + x492 =E= 27;

e139..    x127 + x453 - x493 + x494 =E= 356;

e140..    x128 + x455 - x495 + x496 =E= 290.333;

e141..    x129 + x457 - x497 + x498 =E= 125;

e142..    x130 + x459 - x499 + x500 =E= 265;

e143..    x131 + x461 - x501 + x502 =E= 689;

e144..    x132 + x463 - x503 + x504 =E= 23;

e145..    x133 + x465 - x505 + x506 =E= 39;

e146..    x134 + x467 - x507 + x508 =E= 51;

e147..    x135 + x469 - x509 + x510 =E= 2104.333;

e148..    x136 + x471 - x511 + x512 =E= 1034;

e149..    x137 + x473 - x513 + x514 =E= 375;

e150..    x138 + x475 - x515 + x516 =E= 502;

e151..    x139 + x477 - x517 + x518 =E= 64;

e152..    x140 + x479 - x519 + x520 =E= 58;

e153..    x141 + x481 - x521 + x522 =E= 317;

e154..    x142 + x483 - x523 + x524 =E= 284;

e155..    x143 + x485 - x525 + x526 =E= 66.667;

e156..    x144 + x487 - x527 + x528 =E= 38;

e157..    x145 + x489 - x529 + x530 =E= 1889;

e158..    x146 + x491 - x531 + x532 =E= 21;

e159..    x147 + x493 - x533 + x534 =E= 290;

e160..    x148 + x495 - x535 + x536 =E= 257.333;

e161..    x149 + x497 - x537 + x538 =E= 103;

e162..    x150 + x499 - x539 + x540 =E= 234;

e163..    x151 + x501 - x541 + x542 =E= 595;

e164..    x152 + x503 - x543 + x544 =E= 23;

e165..    x153 + x505 - x545 + x546 =E= 28;

e166..    x154 + x507 - x547 + x548 =E= 46;

e167..    x155 + x509 - x549 + x550 =E= 1727.333;

e168..    x156 + x511 - x551 + x552 =E= 886;

e169..    x157 + x513 - x553 + x554 =E= 334;

e170..    x158 + x515 - x555 + x556 =E= 442;

e171..    x159 + x517 - x557 + x558 =E= 40;

e172..    x160 + x519 - x559 + x560 =E= 42;

e173..    x161 + x521 - x561 + x562 =E= 300;

e174..    x162 + x523 - x563 + x564 =E= 251;

e175..    x163 + x525 - x565 + x566 =E= 56.333;

e176..    x164 + x527 - x567 + x568 =E= 42;

e177..    x165 + x529 - x569 + x570 =E= 1812;

e178..    x166 + x531 - x571 + x572 =E= 18;

e179..    x167 + x533 - x573 + x574 =E= 296;

e180..    x168 + x535 - x575 + x576 =E= 244.667;

e181..    x169 + x537 - x577 + x578 =E= 84;

e182..    x170 + x539 - x579 + x580 =E= 236;

e183..    x171 + x541 - x581 + x582 =E= 600;

e184..    x172 + x543 - x583 + x584 =E= 25;

e185..    x173 + x545 - x585 + x586 =E= 27;

e186..    x174 + x547 - x587 + x588 =E= 77;

e187..    x175 + x549 - x589 + x590 =E= 1820.667;

e188..    x176 + x551 - x591 + x592 =E= 939;

e189..    x177 + x553 - x593 + x594 =E= 338;

e190..    x178 + x555 - x595 + x596 =E= 386;

e191..    x179 + x557 - x597 + x598 =E= 44;

e192..    x180 + x559 - x599 + x600 =E= 45;

e193..    x181 + x561 - x601 + x602 =E= 311;

e194..    x182 + x563 - x603 + x604 =E= 256;

e195..    x183 + x565 - x605 + x606 =E= 57.333;

e196..    x184 + x567 - x607 + x608 =E= 45;

e197..    x185 + x569 - x609 + x610 =E= 1549.333;

e198..    x186 + x571 - x611 + x612 =E= 28;

e199..    x187 + x573 - x613 + x614 =E= 301;

e200..    x188 + x575 - x615 + x616 =E= 254;

e201..    x189 + x577 - x617 + x618 =E= 87;

e202..    x190 + x579 - x619 + x620 =E= 239;

e203..    x191 + x581 - x621 + x622 =E= 620;

e204..    x192 + x583 - x623 + x624 =E= 21;

e205..    x193 + x585 - x625 + x626 =E= 26;

e206..    x194 + x587 - x627 + x628 =E= 92;

e207..    x195 + x589 - x629 + x630 =E= 2066;

e208..    x196 + x591 - x631 + x632 =E= 1056;

e209..    x197 + x593 - x633 + x634 =E= 293;

e210..    x198 + x595 - x635 + x636 =E= 453;

e211..    x199 + x597 - x637 + x638 =E= 46;

e212..    x200 + x599 - x639 + x640 =E= 42;

e213..    x201 + x601 - x641 + x642 =E= 260;

e214..    x202 + x603 - x643 + x644 =E= 190;

e215..    x203 + x605 - x645 + x646 =E= 51;

e216..    x204 + x607 - x647 + x648 =E= 36;

e217..    x205 + x609 - x649 + x650 =E= 1596;

e218..    x206 + x611 - x651 + x652 =E= 16;

e219..    x207 + x613 - x653 + x654 =E= 243;

e220..    x208 + x615 - x655 + x656 =E= 217;

e221..    x209 + x617 - x657 + x658 =E= 75;

e222..    x210 + x619 - x659 + x660 =E= 206;

e223..    x211 + x621 - x661 + x662 =E= 530;

e224..    x212 + x623 - x663 + x664 =E= 21;

e225..    x213 + x625 - x665 + x666 =E= 20;

e226..    x214 + x627 - x667 + x668 =E= 92;

e227..    x215 + x629 - x669 + x670 =E= 1707.333;

e228..    x216 + x631 - x671 + x672 =E= 911;

e229..    x217 + x633 - x673 + x674 =E= 224;

e230..    x218 + x635 - x675 + x676 =E= 419;

e231..    x219 + x637 - x677 + x678 =E= 37;

e232..    x220 + x639 - x679 + x680 =E= 33;

e233..    x221 + x641 - x681 + x682 =E= 179;

e234..    x222 + x643 - x683 + x684 =E= 83;

e235..    x223 + x645 - x685 + x686 =E= 31.667;

e236..    x224 + x647 - x687 + x688 =E= 23;

e237..    x225 + x649 - x689 + x690 =E= 1232.667;

e238..    x226 + x651 - x691 + x692 =E= 0;

e239..    x227 + x653 - x693 + x694 =E= 149;

e240..    x228 + x655 - x695 + x696 =E= 156.667;

e241..    x229 + x657 - x697 + x698 =E= 35;

e242..    x230 + x659 - x699 + x700 =E= 136;

e243..    x231 + x661 - x701 + x702 =E= 333;

e244..    x232 + x663 - x703 + x704 =E= 28;

e245..    x233 + x665 - x705 + x706 =E= 11;

e246..    x234 + x667 - x707 + x708 =E= 55;

e247..    x235 + x669 - x709 + x710 =E= 1020.333;

e248..    x236 + x671 - x711 + x712 =E= 559;

e249..    x237 + x673 - x713 + x714 =E= 90;

e250..    x238 + x675 - x715 + x716 =E= 297;

e251..    x239 + x677 - x717 + x718 =E= 23;

e252..    x240 + x679 - x719 + x720 =E= 18;

e253..  - (sqr(x20 - x19 + x40) - 2.5e-5*sqr(x19 + x20)) =G= 0;

e254..  - (sqr(x40 - x39 + x60) - 2.5e-5*sqr(x39 + x40)) =G= 0;

e255..  - (sqr(x60 - x59 + x80) - 2.5e-5*sqr(x59 + x60)) =G= 0;

e256..  - (sqr(x80 - x79 + x100) - 2.5e-5*sqr(x79 + x80)) =G= 0;

e257..  - (sqr(x100 - x99 + x120) - 2.5e-5*sqr(x99 + x100)) =G= 0;

e258..  - (sqr(x120 - x119 + x140) - 2.5e-5*sqr(x119 + x120)) =G= 0;

e259..  - (sqr(x140 - x139 + x160) - 2.5e-5*sqr(x139 + x140)) =G= 0;

e260..  - (sqr(x160 - x159 + x180) - 2.5e-5*sqr(x159 + x160)) =G= 0;

e261..  - (sqr(x180 - x179 + x200) - 2.5e-5*sqr(x179 + x180)) =G= 0;

e262..  - (sqr(x200 - x199 + x220) - 2.5e-5*sqr(x199 + x200)) =G= 0;

e263..  - (sqr(x220 - x219 + x240) - 2.5e-5*sqr(x219 + x220)) =G= 0;

e264..  - 1.419999*x241 - 71*x242 - 2.44*x243 - 122*x244 - 2.24*x245 - 112*x246
        - 2.099999*x247 - 105*x248 - 0.88*x249 - 44*x250 - 1.66*x251 - 83*x252
        - 1.759999*x253 - 88*x254 - 1.099999*x255 - 55*x256 - 1.099999*x257
        - 55*x258 - 1.94*x259 - 97*x260 - 1.86*x261 - 93*x262 - 1.36*x263
        - 68*x264 - 2.54*x265 - 127*x266 - 1.419999*x267 - 71*x268 - 1.48*x269
        - 74*x270 - 1.16*x271 - 58*x272 - 1.08*x273 - 54*x274 - 1.339999*x275
        - 67*x276 - 2.28*x277 - 114*x278 - 2.86*x279 - 143*x280 - 1.419999*x281
        - 71*x282 - 2.44*x283 - 122*x284 - 2.24*x285 - 112*x286 - 2.099999*x287
        - 105*x288 - 0.88*x289 - 44*x290 - 1.66*x291 - 83*x292 - 1.759999*x293
        - 88*x294 - 1.099999*x295 - 55*x296 - 1.099999*x297 - 55*x298
        - 1.94*x299 - 97*x300 - 1.86*x301 - 93*x302 - 1.36*x303 - 68*x304
        - 2.54*x305 - 127*x306 - 1.419999*x307 - 71*x308 - 1.48*x309 - 74*x310
        - 1.16*x311 - 58*x312 - 1.08*x313 - 54*x314 - 1.339999*x315 - 67*x316
        - 2.28*x317 - 114*x318 - 2.86*x319 - 143*x320 - 1.419999*x321 - 71*x322
        - 2.44*x323 - 122*x324 - 2.24*x325 - 112*x326 - 2.099999*x327
        - 105*x328 - 0.88*x329 - 44*x330 - 1.66*x331 - 83*x332 - 1.759999*x333
        - 88*x334 - 1.099999*x335 - 55*x336 - 1.099999*x337 - 55*x338
        - 1.94*x339 - 97*x340 - 1.86*x341 - 93*x342 - 1.36*x343 - 68*x344
        - 2.54*x345 - 127*x346 - 1.419999*x347 - 71*x348 - 1.48*x349 - 74*x350
        - 1.16*x351 - 58*x352 - 1.08*x353 - 54*x354 - 1.339999*x355 - 67*x356
        - 2.28*x357 - 114*x358 - 2.86*x359 - 143*x360 - 1.419999*x361 - 71*x362
        - 2.44*x363 - 122*x364 - 2.24*x365 - 112*x366 - 2.099999*x367
        - 105*x368 - 0.88*x369 - 44*x370 - 1.66*x371 - 83*x372 - 1.759999*x373
        - 88*x374 - 1.099999*x375 - 55*x376 - 1.099999*x377 - 55*x378
        - 1.94*x379 - 97*x380 - 1.86*x381 - 93*x382 - 1.36*x383 - 68*x384
        - 2.54*x385 - 127*x386 - 1.419999*x387 - 71*x388 - 1.48*x389 - 74*x390
        - 1.16*x391 - 58*x392 - 1.08*x393 - 54*x394 - 1.339999*x395 - 67*x396
        - 2.28*x397 - 114*x398 - 2.86*x399 - 143*x400 - 1.419999*x401 - 71*x402
        - 2.44*x403 - 122*x404 - 2.24*x405 - 112*x406 - 2.099999*x407
        - 105*x408 - 0.88*x409 - 44*x410 - 1.66*x411 - 83*x412 - 1.759999*x413
        - 88*x414 - 1.099999*x415 - 55*x416 - 1.099999*x417 - 55*x418
        - 1.94*x419 - 97*x420 - 1.86*x421 - 93*x422 - 1.36*x423 - 68*x424
        - 2.54*x425 - 127*x426 - 1.419999*x427 - 71*x428 - 1.48*x429 - 74*x430
        - 1.16*x431 - 58*x432 - 1.08*x433 - 54*x434 - 1.339999*x435 - 67*x436
        - 2.28*x437 - 114*x438 - 2.86*x439 - 143*x440 - 1.419999*x441 - 71*x442
        - 2.44*x443 - 122*x444 - 2.24*x445 - 112*x446 - 2.099999*x447
        - 105*x448 - 0.88*x449 - 44*x450 - 1.66*x451 - 83*x452 - 1.759999*x453
        - 88*x454 - 1.099999*x455 - 55*x456 - 1.099999*x457 - 55*x458
        - 1.94*x459 - 97*x460 - 1.86*x461 - 93*x462 - 1.36*x463 - 68*x464
        - 2.54*x465 - 127*x466 - 1.419999*x467 - 71*x468 - 1.48*x469 - 74*x470
        - 1.16*x471 - 58*x472 - 1.08*x473 - 54*x474 - 1.339999*x475 - 67*x476
        - 2.28*x477 - 114*x478 - 2.86*x479 - 143*x480 - 1.419999*x481 - 71*x482
        - 2.44*x483 - 122*x484 - 2.24*x485 - 112*x486 - 2.099999*x487
        - 105*x488 - 0.88*x489 - 44*x490 - 1.66*x491 - 83*x492 - 1.759999*x493
        - 88*x494 - 1.099999*x495 - 55*x496 - 1.099999*x497 - 55*x498
        - 1.94*x499 - 97*x500 - 1.86*x501 - 93*x502 - 1.36*x503 - 68*x504
        - 2.54*x505 - 127*x506 - 1.419999*x507 - 71*x508 - 1.48*x509 - 74*x510
        - 1.16*x511 - 58*x512 - 1.08*x513 - 54*x514 - 1.339999*x515 - 67*x516
        - 2.28*x517 - 114*x518 - 2.86*x519 - 143*x520 - 1.419999*x521 - 71*x522
        - 2.44*x523 - 122*x524 - 2.24*x525 - 112*x526 - 2.099999*x527
        - 105*x528 - 0.88*x529 - 44*x530 - 1.66*x531 - 83*x532 - 1.759999*x533
        - 88*x534 - 1.099999*x535 - 55*x536 - 1.099999*x537 - 55*x538
        - 1.94*x539 - 97*x540 - 1.86*x541 - 93*x542 - 1.36*x543 - 68*x544
        - 2.54*x545 - 127*x546 - 1.419999*x547 - 71*x548 - 1.48*x549 - 74*x550
        - 1.16*x551 - 58*x552 - 1.08*x553 - 54*x554 - 1.339999*x555 - 67*x556
        - 2.28*x557 - 114*x558 - 2.86*x559 - 143*x560 - 1.419999*x561 - 71*x562
        - 2.44*x563 - 122*x564 - 2.24*x565 - 112*x566 - 2.099999*x567
        - 105*x568 - 0.88*x569 - 44*x570 - 1.66*x571 - 83*x572 - 1.759999*x573
        - 88*x574 - 1.099999*x575 - 55*x576 - 1.099999*x577 - 55*x578
        - 1.94*x579 - 97*x580 - 1.86*x581 - 93*x582 - 1.36*x583 - 68*x584
        - 2.54*x585 - 127*x586 - 1.419999*x587 - 71*x588 - 1.48*x589 - 74*x590
        - 1.16*x591 - 58*x592 - 1.08*x593 - 54*x594 - 1.339999*x595 - 67*x596
        - 2.28*x597 - 114*x598 - 2.86*x599 - 143*x600 - 1.419999*x601 - 71*x602
        - 2.44*x603 - 122*x604 - 2.24*x605 - 112*x606 - 2.099999*x607
        - 105*x608 - 0.88*x609 - 44*x610 - 1.66*x611 - 83*x612 - 1.759999*x613
        - 88*x614 - 1.099999*x615 - 55*x616 - 1.099999*x617 - 55*x618
        - 1.94*x619 - 97*x620 - 1.86*x621 - 93*x622 - 1.36*x623 - 68*x624
        - 2.54*x625 - 127*x626 - 1.419999*x627 - 71*x628 - 1.48*x629 - 74*x630
        - 1.16*x631 - 58*x632 - 1.08*x633 - 54*x634 - 1.339999*x635 - 67*x636
        - 2.28*x637 - 114*x638 - 2.86*x639 - 143*x640 - 1.419999*x641 - 71*x642
        - 2.44*x643 - 122*x644 - 2.24*x645 - 112*x646 - 2.099999*x647
        - 105*x648 - 0.88*x649 - 44*x650 - 1.66*x651 - 83*x652 - 1.759999*x653
        - 88*x654 - 1.099999*x655 - 55*x656 - 1.099999*x657 - 55*x658
        - 1.94*x659 - 97*x660 - 1.86*x661 - 93*x662 - 1.36*x663 - 68*x664
        - 2.54*x665 - 127*x666 - 1.419999*x667 - 71*x668 - 1.48*x669 - 74*x670
        - 1.16*x671 - 58*x672 - 1.08*x673 - 54*x674 - 1.339999*x675 - 67*x676
        - 2.28*x677 - 114*x678 - 2.86*x679 - 143*x680 - 1.419999*x681 - 71*x682
        - 2.44*x683 - 122*x684 - 2.24*x685 - 112*x686 - 2.099999*x687
        - 105*x688 - 0.88*x689 - 44*x690 - 1.66*x691 - 83*x692 - 1.759999*x693
        - 88*x694 - 1.099999*x695 - 55*x696 - 1.099999*x697 - 55*x698
        - 1.94*x699 - 97*x700 - 1.86*x701 - 93*x702 - 1.36*x703 - 68*x704
        - 2.54*x705 - 127*x706 - 1.419999*x707 - 71*x708 - 1.48*x709 - 74*x710
        - 1.16*x711 - 58*x712 - 1.08*x713 - 54*x714 - 1.339999*x715 - 67*x716
        - 2.28*x717 - 114*x718 - 2.86*x719 - 143*x720 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 124; 
x2.l = 94; 
x3.l = 155; 
x4.l = 52; 
x6.l = 29; 
x7.l = 226; 
x8.l = 1; 
x9.l = 1; 
x10.l = 257; 
x11.l = 515; 
x12.l = 23; 
x13.l = 76; 
x14.l = 60; 
x15.l = 1647; 
x16.l = 869.379395; 
x17.l = 465; 
x18.l = 307; 
x19.l = 45; 
x20.l = 123; 
x21.l = 376; 
x22.l = 282; 
x23.l = 125; 
x24.l = 41; 
x26.l = 14; 
x27.l = 180; 
x28.l = 81.332993; 
x29.l = 67.999985; 
x30.l = 211; 
x31.l = 426; 
x32.l = 20; 
x33.l = 59; 
x34.l = 39; 
x35.l = 1220.666992; 
x36.l = 1133.471924; 
x37.l = 514; 
x38.l = 217; 
x39.l = 32; 
x40.l = 76; 
x41.l = 257; 
x42.l = 225; 
x43.l = 90; 
x44.l = 38; 
x46.l = 14; 
x47.l = 217; 
x48.l = 86.332993; 
x49.l = 88; 
x50.l = 210; 
x51.l = 472; 
x52.l = 18; 
x53.l = 44; 
x54.l = 41.999985; 
x55.l = 1547; 
x56.l = 859.378418; 
x57.l = 485; 
x58.l = 304; 
x59.l = 39; 
x60.l = 61; 
x61.l = 349; 
x62.l = 331; 
x63.l = 30; 
x64.l = 43; 
x66.l = 23; 
x67.l = 280; 
x68.l = 96; 
x69.l = 90.999985; 
x70.l = 264; 
x71.l = 610; 
x72.l = 21; 
x73.l = 15; 
x74.l = 53; 
x75.l = 1844.666992; 
x76.l = 188.183365; 
x77.l = 478; 
x78.l = 402; 
x79.l = 38; 
x80.l = 28; 
x81.l = 248; 
x82.l = 261; 
x83.l = 30; 
x84.l = 29; 
x86.l = 20; 
x87.l = 255; 
x88.l = 91; 
x89.l = 74.999985; 
x90.l = 259; 
x91.l = 570; 
x92.l = 23; 
x93.l = 10; 
x94.l = 53; 
x95.l = 1677.666992; 
x96.l = 536.775146; 
x97.l = 518; 
x98.l = 414; 
x99.l = 24; 
x100.l = 19; 
x101.l = 238.999985; 
x102.l = 207; 
x103.l = 33.332993; 
x104.l = 37; 
x106.l = 22; 
x107.l = 280; 
x108.l = 160.666992; 
x109.l = 186.085693; 
x110.l = 249; 
x111.l = 588; 
x112.l = 25; 
x113.l = 23; 
x114.l = 39; 
x115.l = 1738.666992; 
x116.l = 262.640625; 
x117.l = 862.999756; 
x118.l = 136; 
x119.l = 44; 
x120.l = 39; 
x121.l = 378.999756; 
x122.l = 344; 
x123.l = 74.666992; 
x124.l = 50; 
x126.l = 27; 
x127.l = 356; 
x128.l = 290.332764; 
x129.l = 30.914291; 
x130.l = 265; 
x131.l = 689; 
x132.l = 23; 
x133.l = 39; 
x134.l = 50.999985; 
x135.l = 2104.332764; 
x138.l = 502; 
x139.l = 64; 
x140.l = 58; 
x141.l = 317; 
x142.l = 284; 
x143.l = 66.666992; 
x144.l = 38; 
x146.l = 21; 
x147.l = 290; 
x148.l = 257.332764; 
x149.l = 102.999985; 
x150.l = 234; 
x151.l = 595; 
x152.l = 23; 
x153.l = 28; 
x154.l = 46; 
x155.l = 1727.332764; 
x156.l = 382.581299; 
x157.l = 333.999756; 
x158.l = 442; 
x159.l = 40; 
x160.l = 42; 
x161.l = 299.999756; 
x162.l = 251; 
x163.l = 56.332993; 
x164.l = 42; 
x166.l = 18; 
x167.l = 296; 
x168.l = 244.666992; 
x169.l = 83.999985; 
x170.l = 236; 
x171.l = 600; 
x172.l = 25; 
x173.l = 27; 
x174.l = 77; 
x175.l = 1820.666992; 
x176.l = 372.895996; 
x177.l = 337.999756; 
x178.l = 386; 
x179.l = 44; 
x180.l = 45; 
x181.l = 310.999756; 
x182.l = 256; 
x183.l = 57.332993; 
x184.l = 45; 
x186.l = 28; 
x187.l = 301; 
x188.l = 254; 
x189.l = 87; 
x190.l = 239; 
x191.l = 620; 
x192.l = 21; 
x193.l = 26; 
x194.l = 92; 
x195.l = 2065.999756; 
x196.l = 55.821945; 
x197.l = 293; 
x198.l = 453; 
x199.l = 46; 
x200.l = 42; 
x201.l = 260; 
x202.l = 190; 
x203.l = 51; 
x204.l = 36; 
x206.l = 16; 
x207.l = 243; 
x208.l = 216.999985; 
x209.l = 74.999985; 
x210.l = 206; 
x211.l = 530; 
x212.l = 21; 
x213.l = 20; 
x214.l = 92; 
x215.l = 1707.332764; 
x216.l = 766.375732; 
x217.l = 223.999985; 
x218.l = 419; 
x219.l = 37; 
x220.l = 33; 
x221.l = 179; 
x222.l = 83; 
x223.l = 31.666992; 
x224.l = 23; 
x225.l = 1232.666992; 
x227.l = 149; 
x228.l = 156.666992; 
x229.l = 35; 
x230.l = 136; 
x231.l = 333; 
x232.l = 28; 
x233.l = 11; 
x234.l = 55; 
x235.l = 1020.332764; 
x236.l = 559; 
x237.l = 90; 
x238.l = 297; 
x239.l = 23; 
x240.l = 18; 
x250.l = 1898.999756; 
x271.l = 624; 
x290.l = 1557.332764; 
x311.l = 1157; 
x330.l = 1480.999756; 
x351.l = 1119; 
x370.l = 1472.666992; 
x391.l = 401; 
x410.l = 1434.666992; 
x431.l = 97; 
x450.l = 1615.999756; 
x457.l = 94; 
x472.l = 499.17041; 
x473.l = 375; 
x490.l = 2060; 
x512.l = 1033.999756; 
x530.l = 1889; 
x552.l = 503.418457; 
x570.l = 1811.999756; 
x592.l = 566.10376; 
x610.l = 1549.332764; 
x632.l = 1000.177979; 
x650.l = 1595.999756; 
x672.l = 144.624176; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
