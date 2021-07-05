*  NLP written by GAMS Convert at 10/17/08 03:01:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        361      176      180        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        361      361        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        731      381      350        0
*
*  Solve m using NLP maximizing objvar;
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
          ,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,objvar;

Positive Variables  x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24
          ,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41
          ,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58
          ,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72,x73,x74,x75
          ,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,x91,x92
          ,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103,x104,x105,x106,x107
          ,x108,x109,x110,x111,x112,x113,x114,x115,x116,x117,x118,x119,x120
          ,x121,x122,x123,x124,x125,x126,x127,x128,x129,x130,x131,x132,x133
          ,x134,x135,x136,x137,x138,x139,x140,x141,x142,x143,x144,x145,x146
          ,x147,x148,x149,x150,x151,x152,x153,x154,x155,x156,x157,x158,x159
          ,x160,x161,x162,x163,x164,x165,x166,x167,x168,x169,x170,x171,x172
          ,x173,x174,x175,x176,x177,x178,x179,x180,x181,x182,x183,x184,x185
          ,x186,x187,x188,x189,x190,x191,x192,x193,x194,x195,x196,x197,x198
          ,x199,x200,x201,x202,x203,x204,x205,x206,x207,x208,x209,x210,x211
          ,x212,x213,x214,x215,x216,x217,x218,x219,x220,x221,x222,x223,x224
          ,x225,x226,x227,x228,x229,x230,x231,x232,x233,x234,x235,x236,x237
          ,x238,x239,x240,x241,x242,x243,x244,x245,x246,x247,x248,x249,x250
          ,x251,x252,x253,x254,x255,x256,x257,x258,x259,x260,x261,x262,x263
          ,x264,x265,x266,x267,x268,x269,x270,x271,x272,x273,x274,x275,x276
          ,x277,x278,x279,x280,x281,x282,x283,x284,x285,x286,x287,x288,x289
          ,x290,x291,x292,x293,x294,x295,x296,x297,x298,x299,x300,x301,x302
          ,x303,x304,x305,x306,x307,x308,x309,x310,x311,x312,x313,x314,x315
          ,x316,x317,x318,x319,x320,x321,x322,x323,x324,x325,x326,x327,x328
          ,x329,x330,x331,x332,x333,x334,x335,x336,x337,x338,x339,x340,x341
          ,x342,x343,x344,x345,x346,x347,x348,x349,x350,x351,x352,x353,x354
          ,x355,x356,x357,x358,x359,x360;

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
          ,e260,e261,e262,e263,e264,e265,e266,e267,e268,e269,e270,e271,e272
          ,e273,e274,e275,e276,e277,e278,e279,e280,e281,e282,e283,e284,e285
          ,e286,e287,e288,e289,e290,e291,e292,e293,e294,e295,e296,e297,e298
          ,e299,e300,e301,e302,e303,e304,e305,e306,e307,e308,e309,e310,e311
          ,e312,e313,e314,e315,e316,e317,e318,e319,e320,e321,e322,e323,e324
          ,e325,e326,e327,e328,e329,e330,e331,e332,e333,e334,e335,e336,e337
          ,e338,e339,e340,e341,e342,e343,e344,e345,e346,e347,e348,e349,e350
          ,e351,e352,e353,e354,e355,e356,e357,e358,e359,e360,e361;


e1..  - x1 + x6 =L= 15;

e2..  - x2 + x7 =L= 26;

e3..  - x3 + x8 =L= 15;

e4..  - x4 + x9 =L= 25;

e5..  - x5 + x10 =L= 20;

e6..  - x1 + x6 =G= 3;

e7..  - x2 + x7 =G= 4;

e8..  - x3 + x8 =G= 0;

e9..  - x4 + x9 =G= 4;

e10..  - x5 + x10 =G= 10;

e11.. 2*sqrt((1 - x1)*(1 - x1))*x11 - (sqrt((1 - x1)*(1 - x1)) - x1) =E= 1;

e12.. 2*sqrt((2 - x1)*(2 - x1))*x12 - (sqrt((2 - x1)*(2 - x1)) - x1) =E= 2;

e13.. 2*sqrt((3 - x1)*(3 - x1))*x13 - (sqrt((3 - x1)*(3 - x1)) - x1) =E= 3;

e14.. 2*sqrt((4 - x1)*(4 - x1))*x14 - (sqrt((4 - x1)*(4 - x1)) - x1) =E= 4;

e15.. 2*sqrt((5 - x1)*(5 - x1))*x15 - (sqrt((5 - x1)*(5 - x1)) - x1) =E= 5;

e16.. 2*sqrt((6 - x1)*(6 - x1))*x16 - (sqrt((6 - x1)*(6 - x1)) - x1) =E= 6;

e17.. 2*sqrt((7 - x1)*(7 - x1))*x17 - (sqrt((7 - x1)*(7 - x1)) - x1) =E= 7;

e18.. 2*sqrt((8 - x1)*(8 - x1))*x18 - (sqrt((8 - x1)*(8 - x1)) - x1) =E= 8;

e19.. 2*sqrt((9 - x1)*(9 - x1))*x19 - (sqrt((9 - x1)*(9 - x1)) - x1) =E= 9;

e20.. 2*sqrt((10 - x1)*(10 - x1))*x20 - (sqrt((10 - x1)*(10 - x1)) - x1)
       =E= 10;

e21.. 2*sqrt((11 - x1)*(11 - x1))*x21 - (sqrt((11 - x1)*(11 - x1)) - x1)
       =E= 11;

e22.. 2*sqrt((12 - x1)*(12 - x1))*x22 - (sqrt((12 - x1)*(12 - x1)) - x1)
       =E= 12;

e23.. 2*sqrt((13 - x1)*(13 - x1))*x23 - (sqrt((13 - x1)*(13 - x1)) - x1)
       =E= 13;

e24.. 2*sqrt((14 - x1)*(14 - x1))*x24 - (sqrt((14 - x1)*(14 - x1)) - x1)
       =E= 14;

e25.. 2*sqrt((15 - x1)*(15 - x1))*x25 - (sqrt((15 - x1)*(15 - x1)) - x1)
       =E= 15;

e26.. 2*sqrt((16 - x1)*(16 - x1))*x26 - (sqrt((16 - x1)*(16 - x1)) - x1)
       =E= 16;

e27.. 2*sqrt((17 - x1)*(17 - x1))*x27 - (sqrt((17 - x1)*(17 - x1)) - x1)
       =E= 17;

e28.. 2*sqrt((18 - x1)*(18 - x1))*x28 - (sqrt((18 - x1)*(18 - x1)) - x1)
       =E= 18;

e29.. 2*sqrt((19 - x1)*(19 - x1))*x29 - (sqrt((19 - x1)*(19 - x1)) - x1)
       =E= 19;

e30.. 2*sqrt((20 - x1)*(20 - x1))*x30 - (sqrt((20 - x1)*(20 - x1)) - x1)
       =E= 20;

e31.. 2*sqrt((21 - x1)*(21 - x1))*x31 - (sqrt((21 - x1)*(21 - x1)) - x1)
       =E= 21;

e32.. 2*sqrt((22 - x1)*(22 - x1))*x32 - (sqrt((22 - x1)*(22 - x1)) - x1)
       =E= 22;

e33.. 2*sqrt((23 - x1)*(23 - x1))*x33 - (sqrt((23 - x1)*(23 - x1)) - x1)
       =E= 23;

e34.. 2*sqrt((24 - x1)*(24 - x1))*x34 - (sqrt((24 - x1)*(24 - x1)) - x1)
       =E= 24;

e35.. 2*sqrt((25 - x1)*(25 - x1))*x35 - (sqrt((25 - x1)*(25 - x1)) - x1)
       =E= 25;

e36.. 2*sqrt((26 - x1)*(26 - x1))*x36 - (sqrt((26 - x1)*(26 - x1)) - x1)
       =E= 26;

e37.. 2*sqrt((27 - x1)*(27 - x1))*x37 - (sqrt((27 - x1)*(27 - x1)) - x1)
       =E= 27;

e38.. 2*sqrt((28 - x1)*(28 - x1))*x38 - (sqrt((28 - x1)*(28 - x1)) - x1)
       =E= 28;

e39.. 2*sqrt((29 - x1)*(29 - x1))*x39 - (sqrt((29 - x1)*(29 - x1)) - x1)
       =E= 29;

e40.. 2*sqrt((30 - x1)*(30 - x1))*x40 - (sqrt((30 - x1)*(30 - x1)) - x1)
       =E= 30;

e41.. 2*sqrt((31 - x1)*(31 - x1))*x41 - (sqrt((31 - x1)*(31 - x1)) - x1)
       =E= 31;

e42.. 2*sqrt((32 - x1)*(32 - x1))*x42 - (sqrt((32 - x1)*(32 - x1)) - x1)
       =E= 32;

e43.. 2*sqrt((33 - x1)*(33 - x1))*x43 - (sqrt((33 - x1)*(33 - x1)) - x1)
       =E= 33;

e44.. 2*sqrt((34 - x1)*(34 - x1))*x44 - (sqrt((34 - x1)*(34 - x1)) - x1)
       =E= 34;

e45.. 2*sqrt((35 - x1)*(35 - x1))*x45 - (sqrt((35 - x1)*(35 - x1)) - x1)
       =E= 35;

e46.. 2*sqrt((1 - x2)*(1 - x2))*x46 - (sqrt((1 - x2)*(1 - x2)) - x2) =E= 1;

e47.. 2*sqrt((2 - x2)*(2 - x2))*x47 - (sqrt((2 - x2)*(2 - x2)) - x2) =E= 2;

e48.. 2*sqrt((3 - x2)*(3 - x2))*x48 - (sqrt((3 - x2)*(3 - x2)) - x2) =E= 3;

e49.. 2*sqrt((4 - x2)*(4 - x2))*x49 - (sqrt((4 - x2)*(4 - x2)) - x2) =E= 4;

e50.. 2*sqrt((5 - x2)*(5 - x2))*x50 - (sqrt((5 - x2)*(5 - x2)) - x2) =E= 5;

e51.. 2*sqrt((6 - x2)*(6 - x2))*x51 - (sqrt((6 - x2)*(6 - x2)) - x2) =E= 6;

e52.. 2*sqrt((7 - x2)*(7 - x2))*x52 - (sqrt((7 - x2)*(7 - x2)) - x2) =E= 7;

e53.. 2*sqrt((8 - x2)*(8 - x2))*x53 - (sqrt((8 - x2)*(8 - x2)) - x2) =E= 8;

e54.. 2*sqrt((9 - x2)*(9 - x2))*x54 - (sqrt((9 - x2)*(9 - x2)) - x2) =E= 9;

e55.. 2*sqrt((10 - x2)*(10 - x2))*x55 - (sqrt((10 - x2)*(10 - x2)) - x2)
       =E= 10;

e56.. 2*sqrt((11 - x2)*(11 - x2))*x56 - (sqrt((11 - x2)*(11 - x2)) - x2)
       =E= 11;

e57.. 2*sqrt((12 - x2)*(12 - x2))*x57 - (sqrt((12 - x2)*(12 - x2)) - x2)
       =E= 12;

e58.. 2*sqrt((13 - x2)*(13 - x2))*x58 - (sqrt((13 - x2)*(13 - x2)) - x2)
       =E= 13;

e59.. 2*sqrt((14 - x2)*(14 - x2))*x59 - (sqrt((14 - x2)*(14 - x2)) - x2)
       =E= 14;

e60.. 2*sqrt((15 - x2)*(15 - x2))*x60 - (sqrt((15 - x2)*(15 - x2)) - x2)
       =E= 15;

e61.. 2*sqrt((16 - x2)*(16 - x2))*x61 - (sqrt((16 - x2)*(16 - x2)) - x2)
       =E= 16;

e62.. 2*sqrt((17 - x2)*(17 - x2))*x62 - (sqrt((17 - x2)*(17 - x2)) - x2)
       =E= 17;

e63.. 2*sqrt((18 - x2)*(18 - x2))*x63 - (sqrt((18 - x2)*(18 - x2)) - x2)
       =E= 18;

e64.. 2*sqrt((19 - x2)*(19 - x2))*x64 - (sqrt((19 - x2)*(19 - x2)) - x2)
       =E= 19;

e65.. 2*sqrt((20 - x2)*(20 - x2))*x65 - (sqrt((20 - x2)*(20 - x2)) - x2)
       =E= 20;

e66.. 2*sqrt((21 - x2)*(21 - x2))*x66 - (sqrt((21 - x2)*(21 - x2)) - x2)
       =E= 21;

e67.. 2*sqrt((22 - x2)*(22 - x2))*x67 - (sqrt((22 - x2)*(22 - x2)) - x2)
       =E= 22;

e68.. 2*sqrt((23 - x2)*(23 - x2))*x68 - (sqrt((23 - x2)*(23 - x2)) - x2)
       =E= 23;

e69.. 2*sqrt((24 - x2)*(24 - x2))*x69 - (sqrt((24 - x2)*(24 - x2)) - x2)
       =E= 24;

e70.. 2*sqrt((25 - x2)*(25 - x2))*x70 - (sqrt((25 - x2)*(25 - x2)) - x2)
       =E= 25;

e71.. 2*sqrt((26 - x2)*(26 - x2))*x71 - (sqrt((26 - x2)*(26 - x2)) - x2)
       =E= 26;

e72.. 2*sqrt((27 - x2)*(27 - x2))*x72 - (sqrt((27 - x2)*(27 - x2)) - x2)
       =E= 27;

e73.. 2*sqrt((28 - x2)*(28 - x2))*x73 - (sqrt((28 - x2)*(28 - x2)) - x2)
       =E= 28;

e74.. 2*sqrt((29 - x2)*(29 - x2))*x74 - (sqrt((29 - x2)*(29 - x2)) - x2)
       =E= 29;

e75.. 2*sqrt((30 - x2)*(30 - x2))*x75 - (sqrt((30 - x2)*(30 - x2)) - x2)
       =E= 30;

e76.. 2*sqrt((31 - x2)*(31 - x2))*x76 - (sqrt((31 - x2)*(31 - x2)) - x2)
       =E= 31;

e77.. 2*sqrt((32 - x2)*(32 - x2))*x77 - (sqrt((32 - x2)*(32 - x2)) - x2)
       =E= 32;

e78.. 2*sqrt((33 - x2)*(33 - x2))*x78 - (sqrt((33 - x2)*(33 - x2)) - x2)
       =E= 33;

e79.. 2*sqrt((34 - x2)*(34 - x2))*x79 - (sqrt((34 - x2)*(34 - x2)) - x2)
       =E= 34;

e80.. 2*sqrt((35 - x2)*(35 - x2))*x80 - (sqrt((35 - x2)*(35 - x2)) - x2)
       =E= 35;

e81.. 2*sqrt((1 - x3)*(1 - x3))*x256 - (sqrt((1 - x3)*(1 - x3)) - x3) =E= 1;

e82.. 2*sqrt((2 - x3)*(2 - x3))*x257 - (sqrt((2 - x3)*(2 - x3)) - x3) =E= 2;

e83.. 2*sqrt((3 - x3)*(3 - x3))*x258 - (sqrt((3 - x3)*(3 - x3)) - x3) =E= 3;

e84.. 2*sqrt((4 - x3)*(4 - x3))*x259 - (sqrt((4 - x3)*(4 - x3)) - x3) =E= 4;

e85.. 2*sqrt((5 - x3)*(5 - x3))*x260 - (sqrt((5 - x3)*(5 - x3)) - x3) =E= 5;

e86.. 2*sqrt((6 - x3)*(6 - x3))*x261 - (sqrt((6 - x3)*(6 - x3)) - x3) =E= 6;

e87.. 2*sqrt((7 - x3)*(7 - x3))*x262 - (sqrt((7 - x3)*(7 - x3)) - x3) =E= 7;

e88.. 2*sqrt((8 - x3)*(8 - x3))*x263 - (sqrt((8 - x3)*(8 - x3)) - x3) =E= 8;

e89.. 2*sqrt((9 - x3)*(9 - x3))*x264 - (sqrt((9 - x3)*(9 - x3)) - x3) =E= 9;

e90.. 2*sqrt((10 - x3)*(10 - x3))*x265 - (sqrt((10 - x3)*(10 - x3)) - x3)
       =E= 10;

e91.. 2*sqrt((11 - x3)*(11 - x3))*x266 - (sqrt((11 - x3)*(11 - x3)) - x3)
       =E= 11;

e92.. 2*sqrt((12 - x3)*(12 - x3))*x267 - (sqrt((12 - x3)*(12 - x3)) - x3)
       =E= 12;

e93.. 2*sqrt((13 - x3)*(13 - x3))*x268 - (sqrt((13 - x3)*(13 - x3)) - x3)
       =E= 13;

e94.. 2*sqrt((14 - x3)*(14 - x3))*x269 - (sqrt((14 - x3)*(14 - x3)) - x3)
       =E= 14;

e95.. 2*sqrt((15 - x3)*(15 - x3))*x270 - (sqrt((15 - x3)*(15 - x3)) - x3)
       =E= 15;

e96.. 2*sqrt((16 - x3)*(16 - x3))*x271 - (sqrt((16 - x3)*(16 - x3)) - x3)
       =E= 16;

e97.. 2*sqrt((17 - x3)*(17 - x3))*x272 - (sqrt((17 - x3)*(17 - x3)) - x3)
       =E= 17;

e98.. 2*sqrt((18 - x3)*(18 - x3))*x273 - (sqrt((18 - x3)*(18 - x3)) - x3)
       =E= 18;

e99.. 2*sqrt((19 - x3)*(19 - x3))*x274 - (sqrt((19 - x3)*(19 - x3)) - x3)
       =E= 19;

e100.. 2*sqrt((20 - x3)*(20 - x3))*x275 - (sqrt((20 - x3)*(20 - x3)) - x3)
        =E= 20;

e101.. 2*sqrt((21 - x3)*(21 - x3))*x276 - (sqrt((21 - x3)*(21 - x3)) - x3)
        =E= 21;

e102.. 2*sqrt((22 - x3)*(22 - x3))*x277 - (sqrt((22 - x3)*(22 - x3)) - x3)
        =E= 22;

e103.. 2*sqrt((23 - x3)*(23 - x3))*x278 - (sqrt((23 - x3)*(23 - x3)) - x3)
        =E= 23;

e104.. 2*sqrt((24 - x3)*(24 - x3))*x279 - (sqrt((24 - x3)*(24 - x3)) - x3)
        =E= 24;

e105.. 2*sqrt((25 - x3)*(25 - x3))*x280 - (sqrt((25 - x3)*(25 - x3)) - x3)
        =E= 25;

e106.. 2*sqrt((26 - x3)*(26 - x3))*x281 - (sqrt((26 - x3)*(26 - x3)) - x3)
        =E= 26;

e107.. 2*sqrt((27 - x3)*(27 - x3))*x282 - (sqrt((27 - x3)*(27 - x3)) - x3)
        =E= 27;

e108.. 2*sqrt((28 - x3)*(28 - x3))*x283 - (sqrt((28 - x3)*(28 - x3)) - x3)
        =E= 28;

e109.. 2*sqrt((29 - x3)*(29 - x3))*x284 - (sqrt((29 - x3)*(29 - x3)) - x3)
        =E= 29;

e110.. 2*sqrt((30 - x3)*(30 - x3))*x285 - (sqrt((30 - x3)*(30 - x3)) - x3)
        =E= 30;

e111.. 2*sqrt((31 - x3)*(31 - x3))*x286 - (sqrt((31 - x3)*(31 - x3)) - x3)
        =E= 31;

e112.. 2*sqrt((32 - x3)*(32 - x3))*x287 - (sqrt((32 - x3)*(32 - x3)) - x3)
        =E= 32;

e113.. 2*sqrt((33 - x3)*(33 - x3))*x288 - (sqrt((33 - x3)*(33 - x3)) - x3)
        =E= 33;

e114.. 2*sqrt((34 - x3)*(34 - x3))*x289 - (sqrt((34 - x3)*(34 - x3)) - x3)
        =E= 34;

e115.. 2*sqrt((35 - x3)*(35 - x3))*x290 - (sqrt((35 - x3)*(35 - x3)) - x3)
        =E= 35;

e116.. 2*sqrt((1 - x4)*(1 - x4))*x291 - (sqrt((1 - x4)*(1 - x4)) - x4) =E= 1;

e117.. 2*sqrt((2 - x4)*(2 - x4))*x292 - (sqrt((2 - x4)*(2 - x4)) - x4) =E= 2;

e118.. 2*sqrt((3 - x4)*(3 - x4))*x293 - (sqrt((3 - x4)*(3 - x4)) - x4) =E= 3;

e119.. 2*sqrt((4 - x4)*(4 - x4))*x294 - (sqrt((4 - x4)*(4 - x4)) - x4) =E= 4;

e120.. 2*sqrt((5 - x4)*(5 - x4))*x295 - (sqrt((5 - x4)*(5 - x4)) - x4) =E= 5;

e121.. 2*sqrt((6 - x4)*(6 - x4))*x296 - (sqrt((6 - x4)*(6 - x4)) - x4) =E= 6;

e122.. 2*sqrt((7 - x4)*(7 - x4))*x297 - (sqrt((7 - x4)*(7 - x4)) - x4) =E= 7;

e123.. 2*sqrt((8 - x4)*(8 - x4))*x298 - (sqrt((8 - x4)*(8 - x4)) - x4) =E= 8;

e124.. 2*sqrt((9 - x4)*(9 - x4))*x299 - (sqrt((9 - x4)*(9 - x4)) - x4) =E= 9;

e125.. 2*sqrt((10 - x4)*(10 - x4))*x300 - (sqrt((10 - x4)*(10 - x4)) - x4)
        =E= 10;

e126.. 2*sqrt((11 - x4)*(11 - x4))*x301 - (sqrt((11 - x4)*(11 - x4)) - x4)
        =E= 11;

e127.. 2*sqrt((12 - x4)*(12 - x4))*x302 - (sqrt((12 - x4)*(12 - x4)) - x4)
        =E= 12;

e128.. 2*sqrt((13 - x4)*(13 - x4))*x303 - (sqrt((13 - x4)*(13 - x4)) - x4)
        =E= 13;

e129.. 2*sqrt((14 - x4)*(14 - x4))*x304 - (sqrt((14 - x4)*(14 - x4)) - x4)
        =E= 14;

e130.. 2*sqrt((15 - x4)*(15 - x4))*x305 - (sqrt((15 - x4)*(15 - x4)) - x4)
        =E= 15;

e131.. 2*sqrt((16 - x4)*(16 - x4))*x306 - (sqrt((16 - x4)*(16 - x4)) - x4)
        =E= 16;

e132.. 2*sqrt((17 - x4)*(17 - x4))*x307 - (sqrt((17 - x4)*(17 - x4)) - x4)
        =E= 17;

e133.. 2*sqrt((18 - x4)*(18 - x4))*x308 - (sqrt((18 - x4)*(18 - x4)) - x4)
        =E= 18;

e134.. 2*sqrt((19 - x4)*(19 - x4))*x309 - (sqrt((19 - x4)*(19 - x4)) - x4)
        =E= 19;

e135.. 2*sqrt((20 - x4)*(20 - x4))*x310 - (sqrt((20 - x4)*(20 - x4)) - x4)
        =E= 20;

e136.. 2*sqrt((21 - x4)*(21 - x4))*x311 - (sqrt((21 - x4)*(21 - x4)) - x4)
        =E= 21;

e137.. 2*sqrt((22 - x4)*(22 - x4))*x312 - (sqrt((22 - x4)*(22 - x4)) - x4)
        =E= 22;

e138.. 2*sqrt((23 - x4)*(23 - x4))*x313 - (sqrt((23 - x4)*(23 - x4)) - x4)
        =E= 23;

e139.. 2*sqrt((24 - x4)*(24 - x4))*x314 - (sqrt((24 - x4)*(24 - x4)) - x4)
        =E= 24;

e140.. 2*sqrt((25 - x4)*(25 - x4))*x315 - (sqrt((25 - x4)*(25 - x4)) - x4)
        =E= 25;

e141.. 2*sqrt((26 - x4)*(26 - x4))*x316 - (sqrt((26 - x4)*(26 - x4)) - x4)
        =E= 26;

e142.. 2*sqrt((27 - x4)*(27 - x4))*x317 - (sqrt((27 - x4)*(27 - x4)) - x4)
        =E= 27;

e143.. 2*sqrt((28 - x4)*(28 - x4))*x318 - (sqrt((28 - x4)*(28 - x4)) - x4)
        =E= 28;

e144.. 2*sqrt((29 - x4)*(29 - x4))*x319 - (sqrt((29 - x4)*(29 - x4)) - x4)
        =E= 29;

e145.. 2*sqrt((30 - x4)*(30 - x4))*x320 - (sqrt((30 - x4)*(30 - x4)) - x4)
        =E= 30;

e146.. 2*sqrt((31 - x4)*(31 - x4))*x321 - (sqrt((31 - x4)*(31 - x4)) - x4)
        =E= 31;

e147.. 2*sqrt((32 - x4)*(32 - x4))*x322 - (sqrt((32 - x4)*(32 - x4)) - x4)
        =E= 32;

e148.. 2*sqrt((33 - x4)*(33 - x4))*x323 - (sqrt((33 - x4)*(33 - x4)) - x4)
        =E= 33;

e149.. 2*sqrt((34 - x4)*(34 - x4))*x324 - (sqrt((34 - x4)*(34 - x4)) - x4)
        =E= 34;

e150.. 2*sqrt((35 - x4)*(35 - x4))*x325 - (sqrt((35 - x4)*(35 - x4)) - x4)
        =E= 35;

e151.. 2*sqrt((1 - x5)*(1 - x5))*x326 - (sqrt((1 - x5)*(1 - x5)) - x5) =E= 1;

e152.. 2*sqrt((2 - x5)*(2 - x5))*x327 - (sqrt((2 - x5)*(2 - x5)) - x5) =E= 2;

e153.. 2*sqrt((3 - x5)*(3 - x5))*x328 - (sqrt((3 - x5)*(3 - x5)) - x5) =E= 3;

e154.. 2*sqrt((4 - x5)*(4 - x5))*x329 - (sqrt((4 - x5)*(4 - x5)) - x5) =E= 4;

e155.. 2*sqrt((5 - x5)*(5 - x5))*x330 - (sqrt((5 - x5)*(5 - x5)) - x5) =E= 5;

e156.. 2*sqrt((6 - x5)*(6 - x5))*x331 - (sqrt((6 - x5)*(6 - x5)) - x5) =E= 6;

e157.. 2*sqrt((7 - x5)*(7 - x5))*x332 - (sqrt((7 - x5)*(7 - x5)) - x5) =E= 7;

e158.. 2*sqrt((8 - x5)*(8 - x5))*x333 - (sqrt((8 - x5)*(8 - x5)) - x5) =E= 8;

e159.. 2*sqrt((9 - x5)*(9 - x5))*x334 - (sqrt((9 - x5)*(9 - x5)) - x5) =E= 9;

e160.. 2*sqrt((10 - x5)*(10 - x5))*x335 - (sqrt((10 - x5)*(10 - x5)) - x5)
        =E= 10;

e161.. 2*sqrt((11 - x5)*(11 - x5))*x336 - (sqrt((11 - x5)*(11 - x5)) - x5)
        =E= 11;

e162.. 2*sqrt((12 - x5)*(12 - x5))*x337 - (sqrt((12 - x5)*(12 - x5)) - x5)
        =E= 12;

e163.. 2*sqrt((13 - x5)*(13 - x5))*x338 - (sqrt((13 - x5)*(13 - x5)) - x5)
        =E= 13;

e164.. 2*sqrt((14 - x5)*(14 - x5))*x339 - (sqrt((14 - x5)*(14 - x5)) - x5)
        =E= 14;

e165.. 2*sqrt((15 - x5)*(15 - x5))*x340 - (sqrt((15 - x5)*(15 - x5)) - x5)
        =E= 15;

e166.. 2*sqrt((16 - x5)*(16 - x5))*x341 - (sqrt((16 - x5)*(16 - x5)) - x5)
        =E= 16;

e167.. 2*sqrt((17 - x5)*(17 - x5))*x342 - (sqrt((17 - x5)*(17 - x5)) - x5)
        =E= 17;

e168.. 2*sqrt((18 - x5)*(18 - x5))*x343 - (sqrt((18 - x5)*(18 - x5)) - x5)
        =E= 18;

e169.. 2*sqrt((19 - x5)*(19 - x5))*x344 - (sqrt((19 - x5)*(19 - x5)) - x5)
        =E= 19;

e170.. 2*sqrt((20 - x5)*(20 - x5))*x345 - (sqrt((20 - x5)*(20 - x5)) - x5)
        =E= 20;

e171.. 2*sqrt((21 - x5)*(21 - x5))*x346 - (sqrt((21 - x5)*(21 - x5)) - x5)
        =E= 21;

e172.. 2*sqrt((22 - x5)*(22 - x5))*x347 - (sqrt((22 - x5)*(22 - x5)) - x5)
        =E= 22;

e173.. 2*sqrt((23 - x5)*(23 - x5))*x348 - (sqrt((23 - x5)*(23 - x5)) - x5)
        =E= 23;

e174.. 2*sqrt((24 - x5)*(24 - x5))*x349 - (sqrt((24 - x5)*(24 - x5)) - x5)
        =E= 24;

e175.. 2*sqrt((25 - x5)*(25 - x5))*x350 - (sqrt((25 - x5)*(25 - x5)) - x5)
        =E= 25;

e176.. 2*sqrt((26 - x5)*(26 - x5))*x351 - (sqrt((26 - x5)*(26 - x5)) - x5)
        =E= 26;

e177.. 2*sqrt((27 - x5)*(27 - x5))*x352 - (sqrt((27 - x5)*(27 - x5)) - x5)
        =E= 27;

e178.. 2*sqrt((28 - x5)*(28 - x5))*x353 - (sqrt((28 - x5)*(28 - x5)) - x5)
        =E= 28;

e179.. 2*sqrt((29 - x5)*(29 - x5))*x354 - (sqrt((29 - x5)*(29 - x5)) - x5)
        =E= 29;

e180.. 2*sqrt((30 - x5)*(30 - x5))*x355 - (sqrt((30 - x5)*(30 - x5)) - x5)
        =E= 30;

e181.. 2*sqrt((31 - x5)*(31 - x5))*x356 - (sqrt((31 - x5)*(31 - x5)) - x5)
        =E= 31;

e182.. 2*sqrt((32 - x5)*(32 - x5))*x357 - (sqrt((32 - x5)*(32 - x5)) - x5)
        =E= 32;

e183.. 2*sqrt((33 - x5)*(33 - x5))*x358 - (sqrt((33 - x5)*(33 - x5)) - x5)
        =E= 33;

e184.. 2*sqrt((34 - x5)*(34 - x5))*x359 - (sqrt((34 - x5)*(34 - x5)) - x5)
        =E= 34;

e185.. 2*sqrt((35 - x5)*(35 - x5))*x360 - (sqrt((35 - x5)*(35 - x5)) - x5)
        =E= 35;

e186..    10*x11 - 10*x186 =G= 0;

e187..    10*x12 - 10*x187 =G= 0;

e188..    10*x13 - 10*x188 =G= 0;

e189..    10*x14 - 10*x189 =G= 0;

e190..    10*x15 - 10*x190 =G= 0;

e191..    10*x16 - 10*x191 =G= 0;

e192..    10*x17 - 10*x192 =G= 0;

e193..    10*x18 - 10*x193 =G= 0;

e194..    10*x19 - 10*x194 =G= 0;

e195..    10*x20 - 10*x195 =G= 0;

e196..    10*x21 - 10*x196 =G= 0;

e197..    10*x22 - 10*x197 =G= 0;

e198..    10*x23 - 10*x198 =G= 0;

e199..    10*x24 - 10*x199 =G= 0;

e200..    10*x25 - 10*x200 =G= 0;

e201..    10*x26 - 10*x201 =G= 0;

e202..    10*x27 - 10*x202 =G= 0;

e203..    10*x28 - 10*x203 =G= 0;

e204..    10*x29 - 10*x204 =G= 0;

e205..    10*x30 - 10*x205 =G= 0;

e206..    10*x31 - 10*x206 =G= 0;

e207..    10*x32 - 10*x207 =G= 0;

e208..    10*x33 - 10*x208 =G= 0;

e209..    10*x34 - 10*x209 =G= 0;

e210..    10*x35 - 10*x210 =G= 0;

e211..    10*x36 - 10*x211 =G= 0;

e212..    10*x37 - 10*x212 =G= 0;

e213..    10*x38 - 10*x213 =G= 0;

e214..    10*x39 - 10*x214 =G= 0;

e215..    10*x40 - 10*x215 =G= 0;

e216..    10*x41 - 10*x216 =G= 0;

e217..    10*x42 - 10*x217 =G= 0;

e218..    10*x43 - 10*x218 =G= 0;

e219..    10*x44 - 10*x219 =G= 0;

e220..    10*x45 - 10*x220 =G= 0;

e221..    12*x46 - 12*x221 =G= 0;

e222..    12*x47 - 12*x222 =G= 0;

e223..    12*x48 - 12*x223 =G= 0;

e224..    12*x49 - 12*x224 =G= 0;

e225..    12*x50 - 12*x225 =G= 0;

e226..    12*x51 - 12*x226 =G= 0;

e227..    12*x52 - 12*x227 =G= 0;

e228..    12*x53 - 12*x228 =G= 0;

e229..    12*x54 - 12*x229 =G= 0;

e230..    12*x55 - 12*x230 =G= 0;

e231..    12*x56 - 12*x231 =G= 0;

e232..    12*x57 - 12*x232 =G= 0;

e233..    12*x58 - 12*x233 =G= 0;

e234..    12*x59 - 12*x234 =G= 0;

e235..    12*x60 - 12*x235 =G= 0;

e236..    12*x61 - 12*x236 =G= 0;

e237..    12*x62 - 12*x237 =G= 0;

e238..    12*x63 - 12*x238 =G= 0;

e239..    12*x64 - 12*x239 =G= 0;

e240..    12*x65 - 12*x240 =G= 0;

e241..    12*x66 - 12*x241 =G= 0;

e242..    12*x67 - 12*x242 =G= 0;

e243..    12*x68 - 12*x243 =G= 0;

e244..    12*x69 - 12*x244 =G= 0;

e245..    12*x70 - 12*x245 =G= 0;

e246..    12*x71 - 12*x246 =G= 0;

e247..    12*x72 - 12*x247 =G= 0;

e248..    12*x73 - 12*x248 =G= 0;

e249..    12*x74 - 12*x249 =G= 0;

e250..    12*x75 - 12*x250 =G= 0;

e251..    12*x76 - 12*x251 =G= 0;

e252..    12*x77 - 12*x252 =G= 0;

e253..    12*x78 - 12*x253 =G= 0;

e254..    12*x79 - 12*x254 =G= 0;

e255..    12*x80 - 12*x255 =G= 0;

e256..    5*x81 - 5*x256 =G= 0;

e257..    5*x82 - 5*x257 =G= 0;

e258..    5*x83 - 5*x258 =G= 0;

e259..    5*x84 - 5*x259 =G= 0;

e260..    5*x85 - 5*x260 =G= 0;

e261..    5*x86 - 5*x261 =G= 0;

e262..    5*x87 - 5*x262 =G= 0;

e263..    5*x88 - 5*x263 =G= 0;

e264..    5*x89 - 5*x264 =G= 0;

e265..    5*x90 - 5*x265 =G= 0;

e266..    5*x91 - 5*x266 =G= 0;

e267..    5*x92 - 5*x267 =G= 0;

e268..    5*x93 - 5*x268 =G= 0;

e269..    5*x94 - 5*x269 =G= 0;

e270..    5*x95 - 5*x270 =G= 0;

e271..    5*x96 - 5*x271 =G= 0;

e272..    5*x97 - 5*x272 =G= 0;

e273..    5*x98 - 5*x273 =G= 0;

e274..    5*x99 - 5*x274 =G= 0;

e275..    5*x100 - 5*x275 =G= 0;

e276..    5*x101 - 5*x276 =G= 0;

e277..    5*x102 - 5*x277 =G= 0;

e278..    5*x103 - 5*x278 =G= 0;

e279..    5*x104 - 5*x279 =G= 0;

e280..    5*x105 - 5*x280 =G= 0;

e281..    5*x106 - 5*x281 =G= 0;

e282..    5*x107 - 5*x282 =G= 0;

e283..    5*x108 - 5*x283 =G= 0;

e284..    5*x109 - 5*x284 =G= 0;

e285..    5*x110 - 5*x285 =G= 0;

e286..    5*x111 - 5*x286 =G= 0;

e287..    5*x112 - 5*x287 =G= 0;

e288..    5*x113 - 5*x288 =G= 0;

e289..    5*x114 - 5*x289 =G= 0;

e290..    5*x115 - 5*x290 =G= 0;

e291..    8*x116 - 8*x291 =G= 0;

e292..    8*x117 - 8*x292 =G= 0;

e293..    8*x118 - 8*x293 =G= 0;

e294..    8*x119 - 8*x294 =G= 0;

e295..    8*x120 - 8*x295 =G= 0;

e296..    8*x121 - 8*x296 =G= 0;

e297..    8*x122 - 8*x297 =G= 0;

e298..    8*x123 - 8*x298 =G= 0;

e299..    8*x124 - 8*x299 =G= 0;

e300..    8*x125 - 8*x300 =G= 0;

e301..    8*x126 - 8*x301 =G= 0;

e302..    8*x127 - 8*x302 =G= 0;

e303..    8*x128 - 8*x303 =G= 0;

e304..    8*x129 - 8*x304 =G= 0;

e305..    8*x130 - 8*x305 =G= 0;

e306..    8*x131 - 8*x306 =G= 0;

e307..    8*x132 - 8*x307 =G= 0;

e308..    8*x133 - 8*x308 =G= 0;

e309..    8*x134 - 8*x309 =G= 0;

e310..    8*x135 - 8*x310 =G= 0;

e311..    8*x136 - 8*x311 =G= 0;

e312..    8*x137 - 8*x312 =G= 0;

e313..    8*x138 - 8*x313 =G= 0;

e314..    8*x139 - 8*x314 =G= 0;

e315..    8*x140 - 8*x315 =G= 0;

e316..    8*x141 - 8*x316 =G= 0;

e317..    8*x142 - 8*x317 =G= 0;

e318..    8*x143 - 8*x318 =G= 0;

e319..    8*x144 - 8*x319 =G= 0;

e320..    8*x145 - 8*x320 =G= 0;

e321..    8*x146 - 8*x321 =G= 0;

e322..    8*x147 - 8*x322 =G= 0;

e323..    8*x148 - 8*x323 =G= 0;

e324..    8*x149 - 8*x324 =G= 0;

e325..    8*x150 - 8*x325 =G= 0;

e326..    7*x151 - 7*x326 =G= 0;

e327..    7*x152 - 7*x327 =G= 0;

e328..    7*x153 - 7*x328 =G= 0;

e329..    7*x154 - 7*x329 =G= 0;

e330..    7*x155 - 7*x330 =G= 0;

e331..    7*x156 - 7*x331 =G= 0;

e332..    7*x157 - 7*x332 =G= 0;

e333..    7*x158 - 7*x333 =G= 0;

e334..    7*x159 - 7*x334 =G= 0;

e335..    7*x160 - 7*x335 =G= 0;

e336..    7*x161 - 7*x336 =G= 0;

e337..    7*x162 - 7*x337 =G= 0;

e338..    7*x163 - 7*x338 =G= 0;

e339..    7*x164 - 7*x339 =G= 0;

e340..    7*x165 - 7*x340 =G= 0;

e341..    7*x166 - 7*x341 =G= 0;

e342..    7*x167 - 7*x342 =G= 0;

e343..    7*x168 - 7*x343 =G= 0;

e344..    7*x169 - 7*x344 =G= 0;

e345..    7*x170 - 7*x345 =G= 0;

e346..    7*x171 - 7*x346 =G= 0;

e347..    7*x172 - 7*x347 =G= 0;

e348..    7*x173 - 7*x348 =G= 0;

e349..    7*x174 - 7*x349 =G= 0;

e350..    7*x175 - 7*x350 =G= 0;

e351..    7*x176 - 7*x351 =G= 0;

e352..    7*x177 - 7*x352 =G= 0;

e353..    7*x178 - 7*x353 =G= 0;

e354..    7*x179 - 7*x354 =G= 0;

e355..    7*x180 - 7*x355 =G= 0;

e356..    7*x181 - 7*x356 =G= 0;

e357..    7*x182 - 7*x357 =G= 0;

e358..    7*x183 - 7*x358 =G= 0;

e359..    7*x184 - 7*x359 =G= 0;

e360..    7*x185 - 7*x360 =G= 0;

e361..  - 1.8*x1 - 1.6*x2 + 5.5*x3 + 7*x4 + 6.2*x5 + 1.8*x6 + 1.6*x7 - 5.5*x8
        - 7*x9 - 6.2*x10 + objvar =E= 0;

* set non default bounds

x1.lo = 1; 
x2.lo = 1; 
x3.lo = 1; 
x4.lo = 1; 
x5.lo = 1; 
x6.lo = 1; x6.up = 35; 
x7.lo = 1; x7.up = 35; 
x8.lo = 1; x8.up = 35; 
x9.lo = 1; x9.up = 35; 
x10.lo = 1; x10.up = 35; 

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

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;