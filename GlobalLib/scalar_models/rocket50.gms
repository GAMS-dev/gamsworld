*  NLP written by GAMS Convert at 07/30/01 17:04:13
*  
*  Equation counts
*     Total       E       G       L       N       X
*       253     253       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       308     308       0       0       0       0       0       0
*  FX     4       4       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*      1307     404     903       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86
          ,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102
          ,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115
          ,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128
          ,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141
          ,x142,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154
          ,x155,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167
          ,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180
          ,x181,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193
          ,x194,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206
          ,x207,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219
          ,x220,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232
          ,x233,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245
          ,x246,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258
          ,x259,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271
          ,x272,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284
          ,x285,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296,x297
          ,x298,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308;

Positive Variables x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x207,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219
          ,x220,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232
          ,x233,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245
          ,x246,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258
          ,x259,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271
          ,x272,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284
          ,x285,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296,x297
          ,x298,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308;

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
          ,e247,e248,e249,e250,e251,e252,e253;


e1..  - 310*sqr(x3)*exp(500 - 500*x54) + x258 =E= 0;

e2..  - 310*sqr(x4)*exp(500 - 500*x55) + x259 =E= 0;

e3..  - 310*sqr(x5)*exp(500 - 500*x56) + x260 =E= 0;

e4..  - 310*sqr(x6)*exp(500 - 500*x57) + x261 =E= 0;

e5..  - 310*sqr(x7)*exp(500 - 500*x58) + x262 =E= 0;

e6..  - 310*sqr(x8)*exp(500 - 500*x59) + x263 =E= 0;

e7..  - 310*sqr(x9)*exp(500 - 500*x60) + x264 =E= 0;

e8..  - 310*sqr(x10)*exp(500 - 500*x61) + x265 =E= 0;

e9..  - 310*sqr(x11)*exp(500 - 500*x62) + x266 =E= 0;

e10..  - 310*sqr(x12)*exp(500 - 500*x63) + x267 =E= 0;

e11..  - 310*sqr(x13)*exp(500 - 500*x64) + x268 =E= 0;

e12..  - 310*sqr(x14)*exp(500 - 500*x65) + x269 =E= 0;

e13..  - 310*sqr(x15)*exp(500 - 500*x66) + x270 =E= 0;

e14..  - 310*sqr(x16)*exp(500 - 500*x67) + x271 =E= 0;

e15..  - 310*sqr(x17)*exp(500 - 500*x68) + x272 =E= 0;

e16..  - 310*sqr(x18)*exp(500 - 500*x69) + x273 =E= 0;

e17..  - 310*sqr(x19)*exp(500 - 500*x70) + x274 =E= 0;

e18..  - 310*sqr(x20)*exp(500 - 500*x71) + x275 =E= 0;

e19..  - 310*sqr(x21)*exp(500 - 500*x72) + x276 =E= 0;

e20..  - 310*sqr(x22)*exp(500 - 500*x73) + x277 =E= 0;

e21..  - 310*sqr(x23)*exp(500 - 500*x74) + x278 =E= 0;

e22..  - 310*sqr(x24)*exp(500 - 500*x75) + x279 =E= 0;

e23..  - 310*sqr(x25)*exp(500 - 500*x76) + x280 =E= 0;

e24..  - 310*sqr(x26)*exp(500 - 500*x77) + x281 =E= 0;

e25..  - 310*sqr(x27)*exp(500 - 500*x78) + x282 =E= 0;

e26..  - 310*sqr(x28)*exp(500 - 500*x79) + x283 =E= 0;

e27..  - 310*sqr(x29)*exp(500 - 500*x80) + x284 =E= 0;

e28..  - 310*sqr(x30)*exp(500 - 500*x81) + x285 =E= 0;

e29..  - 310*sqr(x31)*exp(500 - 500*x82) + x286 =E= 0;

e30..  - 310*sqr(x32)*exp(500 - 500*x83) + x287 =E= 0;

e31..  - 310*sqr(x33)*exp(500 - 500*x84) + x288 =E= 0;

e32..  - 310*sqr(x34)*exp(500 - 500*x85) + x289 =E= 0;

e33..  - 310*sqr(x35)*exp(500 - 500*x86) + x290 =E= 0;

e34..  - 310*sqr(x36)*exp(500 - 500*x87) + x291 =E= 0;

e35..  - 310*sqr(x37)*exp(500 - 500*x88) + x292 =E= 0;

e36..  - 310*sqr(x38)*exp(500 - 500*x89) + x293 =E= 0;

e37..  - 310*sqr(x39)*exp(500 - 500*x90) + x294 =E= 0;

e38..  - 310*sqr(x40)*exp(500 - 500*x91) + x295 =E= 0;

e39..  - 310*sqr(x41)*exp(500 - 500*x92) + x296 =E= 0;

e40..  - 310*sqr(x42)*exp(500 - 500*x93) + x297 =E= 0;

e41..  - 310*sqr(x43)*exp(500 - 500*x94) + x298 =E= 0;

e42..  - 310*sqr(x44)*exp(500 - 500*x95) + x299 =E= 0;

e43..  - 310*sqr(x45)*exp(500 - 500*x96) + x300 =E= 0;

e44..  - 310*sqr(x46)*exp(500 - 500*x97) + x301 =E= 0;

e45..  - 310*sqr(x47)*exp(500 - 500*x98) + x302 =E= 0;

e46..  - 310*sqr(x48)*exp(500 - 500*x99) + x303 =E= 0;

e47..  - 310*sqr(x49)*exp(500 - 500*x100) + x304 =E= 0;

e48..  - 310*sqr(x50)*exp(500 - 500*x101) + x305 =E= 0;

e49..  - 310*sqr(x51)*exp(500 - 500*x102) + x306 =E= 0;

e50..  - 310*sqr(x52)*exp(500 - 500*x103) + x307 =E= 0;

e51..  - 310*sqr(x53)*exp(500 - 500*x104) + x308 =E= 0;

e52..  - sqr(1/x54) + x105 =E= 0;

e53..  - sqr(1/x55) + x106 =E= 0;

e54..  - sqr(1/x56) + x107 =E= 0;

e55..  - sqr(1/x57) + x108 =E= 0;

e56..  - sqr(1/x58) + x109 =E= 0;

e57..  - sqr(1/x59) + x110 =E= 0;

e58..  - sqr(1/x60) + x111 =E= 0;

e59..  - sqr(1/x61) + x112 =E= 0;

e60..  - sqr(1/x62) + x113 =E= 0;

e61..  - sqr(1/x63) + x114 =E= 0;

e62..  - sqr(1/x64) + x115 =E= 0;

e63..  - sqr(1/x65) + x116 =E= 0;

e64..  - sqr(1/x66) + x117 =E= 0;

e65..  - sqr(1/x67) + x118 =E= 0;

e66..  - sqr(1/x68) + x119 =E= 0;

e67..  - sqr(1/x69) + x120 =E= 0;

e68..  - sqr(1/x70) + x121 =E= 0;

e69..  - sqr(1/x71) + x122 =E= 0;

e70..  - sqr(1/x72) + x123 =E= 0;

e71..  - sqr(1/x73) + x124 =E= 0;

e72..  - sqr(1/x74) + x125 =E= 0;

e73..  - sqr(1/x75) + x126 =E= 0;

e74..  - sqr(1/x76) + x127 =E= 0;

e75..  - sqr(1/x77) + x128 =E= 0;

e76..  - sqr(1/x78) + x129 =E= 0;

e77..  - sqr(1/x79) + x130 =E= 0;

e78..  - sqr(1/x80) + x131 =E= 0;

e79..  - sqr(1/x81) + x132 =E= 0;

e80..  - sqr(1/x82) + x133 =E= 0;

e81..  - sqr(1/x83) + x134 =E= 0;

e82..  - sqr(1/x84) + x135 =E= 0;

e83..  - sqr(1/x85) + x136 =E= 0;

e84..  - sqr(1/x86) + x137 =E= 0;

e85..  - sqr(1/x87) + x138 =E= 0;

e86..  - sqr(1/x88) + x139 =E= 0;

e87..  - sqr(1/x89) + x140 =E= 0;

e88..  - sqr(1/x90) + x141 =E= 0;

e89..  - sqr(1/x91) + x142 =E= 0;

e90..  - sqr(1/x92) + x143 =E= 0;

e91..  - sqr(1/x93) + x144 =E= 0;

e92..  - sqr(1/x94) + x145 =E= 0;

e93..  - sqr(1/x95) + x146 =E= 0;

e94..  - sqr(1/x96) + x147 =E= 0;

e95..  - sqr(1/x97) + x148 =E= 0;

e96..  - sqr(1/x98) + x149 =E= 0;

e97..  - sqr(1/x99) + x150 =E= 0;

e98..  - sqr(1/x100) + x151 =E= 0;

e99..  - sqr(1/x101) + x152 =E= 0;

e100..  - sqr(1/x102) + x153 =E= 0;

e101..  - sqr(1/x103) + x154 =E= 0;

e102..  - sqr(1/x104) + x155 =E= 0;

e103..  - objvar - x104 =E= 0;

e104..  - 0.5*x2*(x3 + x4) - x54 + x55 =E= 0;

e105..  - 0.5*x2*(x4 + x5) - x55 + x56 =E= 0;

e106..  - 0.5*x2*(x5 + x6) - x56 + x57 =E= 0;

e107..  - 0.5*x2*(x6 + x7) - x57 + x58 =E= 0;

e108..  - 0.5*x2*(x7 + x8) - x58 + x59 =E= 0;

e109..  - 0.5*x2*(x8 + x9) - x59 + x60 =E= 0;

e110..  - 0.5*x2*(x9 + x10) - x60 + x61 =E= 0;

e111..  - 0.5*x2*(x10 + x11) - x61 + x62 =E= 0;

e112..  - 0.5*x2*(x11 + x12) - x62 + x63 =E= 0;

e113..  - 0.5*x2*(x12 + x13) - x63 + x64 =E= 0;

e114..  - 0.5*x2*(x13 + x14) - x64 + x65 =E= 0;

e115..  - 0.5*x2*(x14 + x15) - x65 + x66 =E= 0;

e116..  - 0.5*x2*(x15 + x16) - x66 + x67 =E= 0;

e117..  - 0.5*x2*(x16 + x17) - x67 + x68 =E= 0;

e118..  - 0.5*x2*(x17 + x18) - x68 + x69 =E= 0;

e119..  - 0.5*x2*(x18 + x19) - x69 + x70 =E= 0;

e120..  - 0.5*x2*(x19 + x20) - x70 + x71 =E= 0;

e121..  - 0.5*x2*(x20 + x21) - x71 + x72 =E= 0;

e122..  - 0.5*x2*(x21 + x22) - x72 + x73 =E= 0;

e123..  - 0.5*x2*(x22 + x23) - x73 + x74 =E= 0;

e124..  - 0.5*x2*(x23 + x24) - x74 + x75 =E= 0;

e125..  - 0.5*x2*(x24 + x25) - x75 + x76 =E= 0;

e126..  - 0.5*x2*(x25 + x26) - x76 + x77 =E= 0;

e127..  - 0.5*x2*(x26 + x27) - x77 + x78 =E= 0;

e128..  - 0.5*x2*(x27 + x28) - x78 + x79 =E= 0;

e129..  - 0.5*x2*(x28 + x29) - x79 + x80 =E= 0;

e130..  - 0.5*x2*(x29 + x30) - x80 + x81 =E= 0;

e131..  - 0.5*x2*(x30 + x31) - x81 + x82 =E= 0;

e132..  - 0.5*x2*(x31 + x32) - x82 + x83 =E= 0;

e133..  - 0.5*x2*(x32 + x33) - x83 + x84 =E= 0;

e134..  - 0.5*x2*(x33 + x34) - x84 + x85 =E= 0;

e135..  - 0.5*x2*(x34 + x35) - x85 + x86 =E= 0;

e136..  - 0.5*x2*(x35 + x36) - x86 + x87 =E= 0;

e137..  - 0.5*x2*(x36 + x37) - x87 + x88 =E= 0;

e138..  - 0.5*x2*(x37 + x38) - x88 + x89 =E= 0;

e139..  - 0.5*x2*(x38 + x39) - x89 + x90 =E= 0;

e140..  - 0.5*x2*(x39 + x40) - x90 + x91 =E= 0;

e141..  - 0.5*x2*(x40 + x41) - x91 + x92 =E= 0;

e142..  - 0.5*x2*(x41 + x42) - x92 + x93 =E= 0;

e143..  - 0.5*x2*(x42 + x43) - x93 + x94 =E= 0;

e144..  - 0.5*x2*(x43 + x44) - x94 + x95 =E= 0;

e145..  - 0.5*x2*(x44 + x45) - x95 + x96 =E= 0;

e146..  - 0.5*x2*(x45 + x46) - x96 + x97 =E= 0;

e147..  - 0.5*x2*(x46 + x47) - x97 + x98 =E= 0;

e148..  - 0.5*x2*(x47 + x48) - x98 + x99 =E= 0;

e149..  - 0.5*x2*(x48 + x49) - x99 + x100 =E= 0;

e150..  - 0.5*x2*(x49 + x50) - x100 + x101 =E= 0;

e151..  - 0.5*x2*(x50 + x51) - x101 + x102 =E= 0;

e152..  - 0.5*x2*(x51 + x52) - x102 + x103 =E= 0;

e153..  - 0.5*x2*(x52 + x53) - x103 + x104 =E= 0;

e154..  - 0.5*x2*((x208 - x157*x106 - x259)/x157 + (x207 - x156*x105 - x258)/
       x156) - x3 + x4 =E= 0;

e155..  - 0.5*x2*((x209 - x158*x107 - x260)/x158 + (x208 - x157*x106 - x259)/
       x157) - x4 + x5 =E= 0;

e156..  - 0.5*x2*((x210 - x159*x108 - x261)/x159 + (x209 - x158*x107 - x260)/
       x158) - x5 + x6 =E= 0;

e157..  - 0.5*x2*((x211 - x160*x109 - x262)/x160 + (x210 - x159*x108 - x261)/
       x159) - x6 + x7 =E= 0;

e158..  - 0.5*x2*((x212 - x161*x110 - x263)/x161 + (x211 - x160*x109 - x262)/
       x160) - x7 + x8 =E= 0;

e159..  - 0.5*x2*((x213 - x162*x111 - x264)/x162 + (x212 - x161*x110 - x263)/
       x161) - x8 + x9 =E= 0;

e160..  - 0.5*x2*((x214 - x163*x112 - x265)/x163 + (x213 - x162*x111 - x264)/
       x162) - x9 + x10 =E= 0;

e161..  - 0.5*x2*((x215 - x164*x113 - x266)/x164 + (x214 - x163*x112 - x265)/
       x163) - x10 + x11 =E= 0;

e162..  - 0.5*x2*((x216 - x165*x114 - x267)/x165 + (x215 - x164*x113 - x266)/
       x164) - x11 + x12 =E= 0;

e163..  - 0.5*x2*((x217 - x166*x115 - x268)/x166 + (x216 - x165*x114 - x267)/
       x165) - x12 + x13 =E= 0;

e164..  - 0.5*x2*((x218 - x167*x116 - x269)/x167 + (x217 - x166*x115 - x268)/
       x166) - x13 + x14 =E= 0;

e165..  - 0.5*x2*((x219 - x168*x117 - x270)/x168 + (x218 - x167*x116 - x269)/
       x167) - x14 + x15 =E= 0;

e166..  - 0.5*x2*((x220 - x169*x118 - x271)/x169 + (x219 - x168*x117 - x270)/
       x168) - x15 + x16 =E= 0;

e167..  - 0.5*x2*((x221 - x170*x119 - x272)/x170 + (x220 - x169*x118 - x271)/
       x169) - x16 + x17 =E= 0;

e168..  - 0.5*x2*((x222 - x171*x120 - x273)/x171 + (x221 - x170*x119 - x272)/
       x170) - x17 + x18 =E= 0;

e169..  - 0.5*x2*((x223 - x172*x121 - x274)/x172 + (x222 - x171*x120 - x273)/
       x171) - x18 + x19 =E= 0;

e170..  - 0.5*x2*((x224 - x173*x122 - x275)/x173 + (x223 - x172*x121 - x274)/
       x172) - x19 + x20 =E= 0;

e171..  - 0.5*x2*((x225 - x174*x123 - x276)/x174 + (x224 - x173*x122 - x275)/
       x173) - x20 + x21 =E= 0;

e172..  - 0.5*x2*((x226 - x175*x124 - x277)/x175 + (x225 - x174*x123 - x276)/
       x174) - x21 + x22 =E= 0;

e173..  - 0.5*x2*((x227 - x176*x125 - x278)/x176 + (x226 - x175*x124 - x277)/
       x175) - x22 + x23 =E= 0;

e174..  - 0.5*x2*((x228 - x177*x126 - x279)/x177 + (x227 - x176*x125 - x278)/
       x176) - x23 + x24 =E= 0;

e175..  - 0.5*x2*((x229 - x178*x127 - x280)/x178 + (x228 - x177*x126 - x279)/
       x177) - x24 + x25 =E= 0;

e176..  - 0.5*x2*((x230 - x179*x128 - x281)/x179 + (x229 - x178*x127 - x280)/
       x178) - x25 + x26 =E= 0;

e177..  - 0.5*x2*((x231 - x180*x129 - x282)/x180 + (x230 - x179*x128 - x281)/
       x179) - x26 + x27 =E= 0;

e178..  - 0.5*x2*((x232 - x181*x130 - x283)/x181 + (x231 - x180*x129 - x282)/
       x180) - x27 + x28 =E= 0;

e179..  - 0.5*x2*((x233 - x182*x131 - x284)/x182 + (x232 - x181*x130 - x283)/
       x181) - x28 + x29 =E= 0;

e180..  - 0.5*x2*((x234 - x183*x132 - x285)/x183 + (x233 - x182*x131 - x284)/
       x182) - x29 + x30 =E= 0;

e181..  - 0.5*x2*((x235 - x184*x133 - x286)/x184 + (x234 - x183*x132 - x285)/
       x183) - x30 + x31 =E= 0;

e182..  - 0.5*x2*((x236 - x185*x134 - x287)/x185 + (x235 - x184*x133 - x286)/
       x184) - x31 + x32 =E= 0;

e183..  - 0.5*x2*((x237 - x186*x135 - x288)/x186 + (x236 - x185*x134 - x287)/
       x185) - x32 + x33 =E= 0;

e184..  - 0.5*x2*((x238 - x187*x136 - x289)/x187 + (x237 - x186*x135 - x288)/
       x186) - x33 + x34 =E= 0;

e185..  - 0.5*x2*((x239 - x188*x137 - x290)/x188 + (x238 - x187*x136 - x289)/
       x187) - x34 + x35 =E= 0;

e186..  - 0.5*x2*((x240 - x189*x138 - x291)/x189 + (x239 - x188*x137 - x290)/
       x188) - x35 + x36 =E= 0;

e187..  - 0.5*x2*((x241 - x190*x139 - x292)/x190 + (x240 - x189*x138 - x291)/
       x189) - x36 + x37 =E= 0;

e188..  - 0.5*x2*((x242 - x191*x140 - x293)/x191 + (x241 - x190*x139 - x292)/
       x190) - x37 + x38 =E= 0;

e189..  - 0.5*x2*((x243 - x192*x141 - x294)/x192 + (x242 - x191*x140 - x293)/
       x191) - x38 + x39 =E= 0;

e190..  - 0.5*x2*((x244 - x193*x142 - x295)/x193 + (x243 - x192*x141 - x294)/
       x192) - x39 + x40 =E= 0;

e191..  - 0.5*x2*((x245 - x194*x143 - x296)/x194 + (x244 - x193*x142 - x295)/
       x193) - x40 + x41 =E= 0;

e192..  - 0.5*x2*((x246 - x195*x144 - x297)/x195 + (x245 - x194*x143 - x296)/
       x194) - x41 + x42 =E= 0;

e193..  - 0.5*x2*((x247 - x196*x145 - x298)/x196 + (x246 - x195*x144 - x297)/
       x195) - x42 + x43 =E= 0;

e194..  - 0.5*x2*((x248 - x197*x146 - x299)/x197 + (x247 - x196*x145 - x298)/
       x196) - x43 + x44 =E= 0;

e195..  - 0.5*x2*((x249 - x198*x147 - x300)/x198 + (x248 - x197*x146 - x299)/
       x197) - x44 + x45 =E= 0;

e196..  - 0.5*x2*((x250 - x199*x148 - x301)/x199 + (x249 - x198*x147 - x300)/
       x198) - x45 + x46 =E= 0;

e197..  - 0.5*x2*((x251 - x200*x149 - x302)/x200 + (x250 - x199*x148 - x301)/
       x199) - x46 + x47 =E= 0;

e198..  - 0.5*x2*((x252 - x201*x150 - x303)/x201 + (x251 - x200*x149 - x302)/
       x200) - x47 + x48 =E= 0;

e199..  - 0.5*x2*((x253 - x202*x151 - x304)/x202 + (x252 - x201*x150 - x303)/
       x201) - x48 + x49 =E= 0;

e200..  - 0.5*x2*((x254 - x203*x152 - x305)/x203 + (x253 - x202*x151 - x304)/
       x202) - x49 + x50 =E= 0;

e201..  - 0.5*x2*((x255 - x204*x153 - x306)/x204 + (x254 - x203*x152 - x305)/
       x203) - x50 + x51 =E= 0;

e202..  - 0.5*x2*((x256 - x205*x154 - x307)/x205 + (x255 - x204*x153 - x306)/
       x204) - x51 + x52 =E= 0;

e203..  - 0.5*x2*((x257 - x206*x155 - x308)/x206 + (x256 - x205*x154 - x307)/
       x205) - x52 + x53 =E= 0;

e204.. x2*(x207 + x208) - x156 + x157 =E= 0;

e205.. x2*(x208 + x209) - x157 + x158 =E= 0;

e206.. x2*(x209 + x210) - x158 + x159 =E= 0;

e207.. x2*(x210 + x211) - x159 + x160 =E= 0;

e208.. x2*(x211 + x212) - x160 + x161 =E= 0;

e209.. x2*(x212 + x213) - x161 + x162 =E= 0;

e210.. x2*(x213 + x214) - x162 + x163 =E= 0;

e211.. x2*(x214 + x215) - x163 + x164 =E= 0;

e212.. x2*(x215 + x216) - x164 + x165 =E= 0;

e213.. x2*(x216 + x217) - x165 + x166 =E= 0;

e214.. x2*(x217 + x218) - x166 + x167 =E= 0;

e215.. x2*(x218 + x219) - x167 + x168 =E= 0;

e216.. x2*(x219 + x220) - x168 + x169 =E= 0;

e217.. x2*(x220 + x221) - x169 + x170 =E= 0;

e218.. x2*(x221 + x222) - x170 + x171 =E= 0;

e219.. x2*(x222 + x223) - x171 + x172 =E= 0;

e220.. x2*(x223 + x224) - x172 + x173 =E= 0;

e221.. x2*(x224 + x225) - x173 + x174 =E= 0;

e222.. x2*(x225 + x226) - x174 + x175 =E= 0;

e223.. x2*(x226 + x227) - x175 + x176 =E= 0;

e224.. x2*(x227 + x228) - x176 + x177 =E= 0;

e225.. x2*(x228 + x229) - x177 + x178 =E= 0;

e226.. x2*(x229 + x230) - x178 + x179 =E= 0;

e227.. x2*(x230 + x231) - x179 + x180 =E= 0;

e228.. x2*(x231 + x232) - x180 + x181 =E= 0;

e229.. x2*(x232 + x233) - x181 + x182 =E= 0;

e230.. x2*(x233 + x234) - x182 + x183 =E= 0;

e231.. x2*(x234 + x235) - x183 + x184 =E= 0;

e232.. x2*(x235 + x236) - x184 + x185 =E= 0;

e233.. x2*(x236 + x237) - x185 + x186 =E= 0;

e234.. x2*(x237 + x238) - x186 + x187 =E= 0;

e235.. x2*(x238 + x239) - x187 + x188 =E= 0;

e236.. x2*(x239 + x240) - x188 + x189 =E= 0;

e237.. x2*(x240 + x241) - x189 + x190 =E= 0;

e238.. x2*(x241 + x242) - x190 + x191 =E= 0;

e239.. x2*(x242 + x243) - x191 + x192 =E= 0;

e240.. x2*(x243 + x244) - x192 + x193 =E= 0;

e241.. x2*(x244 + x245) - x193 + x194 =E= 0;

e242.. x2*(x245 + x246) - x194 + x195 =E= 0;

e243.. x2*(x246 + x247) - x195 + x196 =E= 0;

e244.. x2*(x247 + x248) - x196 + x197 =E= 0;

e245.. x2*(x248 + x249) - x197 + x198 =E= 0;

e246.. x2*(x249 + x250) - x198 + x199 =E= 0;

e247.. x2*(x250 + x251) - x199 + x200 =E= 0;

e248.. x2*(x251 + x252) - x200 + x201 =E= 0;

e249.. x2*(x252 + x253) - x201 + x202 =E= 0;

e250.. x2*(x253 + x254) - x202 + x203 =E= 0;

e251.. x2*(x254 + x255) - x203 + x204 =E= 0;

e252.. x2*(x255 + x256) - x204 + x205 =E= 0;

e253.. x2*(x256 + x257) - x205 + x206 =E= 0;

* set non default bounds

x3.fx = 0; 
x54.fx = 1; 
x55.lo = 1; 
x56.lo = 1; 
x57.lo = 1; 
x58.lo = 1; 
x59.lo = 1; 
x60.lo = 1; 
x61.lo = 1; 
x62.lo = 1; 
x63.lo = 1; 
x64.lo = 1; 
x65.lo = 1; 
x66.lo = 1; 
x67.lo = 1; 
x68.lo = 1; 
x69.lo = 1; 
x70.lo = 1; 
x71.lo = 1; 
x72.lo = 1; 
x73.lo = 1; 
x74.lo = 1; 
x75.lo = 1; 
x76.lo = 1; 
x77.lo = 1; 
x78.lo = 1; 
x79.lo = 1; 
x80.lo = 1; 
x81.lo = 1; 
x82.lo = 1; 
x83.lo = 1; 
x84.lo = 1; 
x85.lo = 1; 
x86.lo = 1; 
x87.lo = 1; 
x88.lo = 1; 
x89.lo = 1; 
x90.lo = 1; 
x91.lo = 1; 
x92.lo = 1; 
x93.lo = 1; 
x94.lo = 1; 
x95.lo = 1; 
x96.lo = 1; 
x97.lo = 1; 
x98.lo = 1; 
x99.lo = 1; 
x100.lo = 1; 
x101.lo = 1; 
x102.lo = 1; 
x103.lo = 1; 
x104.lo = 1; 
x156.fx = 1; 
x157.lo = 0.6; x157.up = 1; 
x158.lo = 0.6; x158.up = 1; 
x159.lo = 0.6; x159.up = 1; 
x160.lo = 0.6; x160.up = 1; 
x161.lo = 0.6; x161.up = 1; 
x162.lo = 0.6; x162.up = 1; 
x163.lo = 0.6; x163.up = 1; 
x164.lo = 0.6; x164.up = 1; 
x165.lo = 0.6; x165.up = 1; 
x166.lo = 0.6; x166.up = 1; 
x167.lo = 0.6; x167.up = 1; 
x168.lo = 0.6; x168.up = 1; 
x169.lo = 0.6; x169.up = 1; 
x170.lo = 0.6; x170.up = 1; 
x171.lo = 0.6; x171.up = 1; 
x172.lo = 0.6; x172.up = 1; 
x173.lo = 0.6; x173.up = 1; 
x174.lo = 0.6; x174.up = 1; 
x175.lo = 0.6; x175.up = 1; 
x176.lo = 0.6; x176.up = 1; 
x177.lo = 0.6; x177.up = 1; 
x178.lo = 0.6; x178.up = 1; 
x179.lo = 0.6; x179.up = 1; 
x180.lo = 0.6; x180.up = 1; 
x181.lo = 0.6; x181.up = 1; 
x182.lo = 0.6; x182.up = 1; 
x183.lo = 0.6; x183.up = 1; 
x184.lo = 0.6; x184.up = 1; 
x185.lo = 0.6; x185.up = 1; 
x186.lo = 0.6; x186.up = 1; 
x187.lo = 0.6; x187.up = 1; 
x188.lo = 0.6; x188.up = 1; 
x189.lo = 0.6; x189.up = 1; 
x190.lo = 0.6; x190.up = 1; 
x191.lo = 0.6; x191.up = 1; 
x192.lo = 0.6; x192.up = 1; 
x193.lo = 0.6; x193.up = 1; 
x194.lo = 0.6; x194.up = 1; 
x195.lo = 0.6; x195.up = 1; 
x196.lo = 0.6; x196.up = 1; 
x197.lo = 0.6; x197.up = 1; 
x198.lo = 0.6; x198.up = 1; 
x199.lo = 0.6; x199.up = 1; 
x200.lo = 0.6; x200.up = 1; 
x201.lo = 0.6; x201.up = 1; 
x202.lo = 0.6; x202.up = 1; 
x203.lo = 0.6; x203.up = 1; 
x204.lo = 0.6; x204.up = 1; 
x205.lo = 0.6; x205.up = 1; 
x206.fx = 0.6; 
x207.up = 3.5; 
x208.up = 3.5; 
x209.up = 3.5; 
x210.up = 3.5; 
x211.up = 3.5; 
x212.up = 3.5; 
x213.up = 3.5; 
x214.up = 3.5; 
x215.up = 3.5; 
x216.up = 3.5; 
x217.up = 3.5; 
x218.up = 3.5; 
x219.up = 3.5; 
x220.up = 3.5; 
x221.up = 3.5; 
x222.up = 3.5; 
x223.up = 3.5; 
x224.up = 3.5; 
x225.up = 3.5; 
x226.up = 3.5; 
x227.up = 3.5; 
x228.up = 3.5; 
x229.up = 3.5; 
x230.up = 3.5; 
x231.up = 3.5; 
x232.up = 3.5; 
x233.up = 3.5; 
x234.up = 3.5; 
x235.up = 3.5; 
x236.up = 3.5; 
x237.up = 3.5; 
x238.up = 3.5; 
x239.up = 3.5; 
x240.up = 3.5; 
x241.up = 3.5; 
x242.up = 3.5; 
x243.up = 3.5; 
x244.up = 3.5; 
x245.up = 3.5; 
x246.up = 3.5; 
x247.up = 3.5; 
x248.up = 3.5; 
x249.up = 3.5; 
x250.up = 3.5; 
x251.up = 3.5; 
x252.up = 3.5; 
x253.up = 3.5; 
x254.up = 3.5; 
x255.up = 3.5; 
x256.up = 3.5; 
x257.up = 3.5; 

* set non default levels

x2.l = 0.02; 
x4.l = 0.0384; 
x5.l = 0.0564; 
x6.l = 0.0736; 
x7.l = 0.09; 
x8.l = 0.1056; 
x9.l = 0.1204; 
x10.l = 0.1344; 
x11.l = 0.1476; 
x12.l = 0.16; 
x13.l = 0.1716; 
x14.l = 0.1824; 
x15.l = 0.1924; 
x16.l = 0.2016; 
x17.l = 0.21; 
x18.l = 0.2176; 
x19.l = 0.2244; 
x20.l = 0.2304; 
x21.l = 0.2356; 
x22.l = 0.24; 
x23.l = 0.2436; 
x24.l = 0.2464; 
x25.l = 0.2484; 
x26.l = 0.2496; 
x27.l = 0.25; 
x28.l = 0.2496; 
x29.l = 0.2484; 
x30.l = 0.2464; 
x31.l = 0.2436; 
x32.l = 0.24; 
x33.l = 0.2356; 
x34.l = 0.2304; 
x35.l = 0.2244; 
x36.l = 0.2176; 
x37.l = 0.21; 
x38.l = 0.2016; 
x39.l = 0.1924; 
x40.l = 0.1824; 
x41.l = 0.1716; 
x42.l = 0.16; 
x43.l = 0.1476; 
x44.l = 0.1344; 
x45.l = 0.1204; 
x46.l = 0.1056; 
x47.l = 0.09; 
x48.l = 0.0736; 
x49.l = 0.0564; 
x50.l = 0.0384; 
x51.l = 0.0196; 
x157.l = 0.984; 
x158.l = 0.976; 
x159.l = 0.968; 
x160.l = 0.96; 
x161.l = 0.952; 
x162.l = 0.944; 
x163.l = 0.936; 
x164.l = 0.928; 
x165.l = 0.92; 
x166.l = 0.912; 
x167.l = 0.904; 
x168.l = 0.896; 
x169.l = 0.888; 
x170.l = 0.88; 
x171.l = 0.872; 
x172.l = 0.864; 
x173.l = 0.856; 
x174.l = 0.848; 
x175.l = 0.84; 
x176.l = 0.832; 
x177.l = 0.824; 
x178.l = 0.816; 
x179.l = 0.808; 
x180.l = 0.8; 
x181.l = 0.792; 
x182.l = 0.784; 
x183.l = 0.776; 
x184.l = 0.768; 
x185.l = 0.76; 
x186.l = 0.752; 
x187.l = 0.744; 
x188.l = 0.736; 
x189.l = 0.728; 
x190.l = 0.72; 
x191.l = 0.712; 
x192.l = 0.704; 
x193.l = 0.696; 
x194.l = 0.688; 
x195.l = 0.68; 
x196.l = 0.672; 
x197.l = 0.664; 
x198.l = 0.656; 
x199.l = 0.648; 
x200.l = 0.64; 
x201.l = 0.632; 
x202.l = 0.624; 
x203.l = 0.616; 
x204.l = 0.608; 
x207.l = 1.75; 
x208.l = 1.75; 
x209.l = 1.75; 
x210.l = 1.75; 
x211.l = 1.75; 
x212.l = 1.75; 
x213.l = 1.75; 
x214.l = 1.75; 
x215.l = 1.75; 
x216.l = 1.75; 
x217.l = 1.75; 
x218.l = 1.75; 
x219.l = 1.75; 
x220.l = 1.75; 
x221.l = 1.75; 
x222.l = 1.75; 
x223.l = 1.75; 
x224.l = 1.75; 
x225.l = 1.75; 
x226.l = 1.75; 
x227.l = 1.75; 
x228.l = 1.75; 
x229.l = 1.75; 
x230.l = 1.75; 
x231.l = 1.75; 
x232.l = 1.75; 
x233.l = 1.75; 
x234.l = 1.75; 
x235.l = 1.75; 
x236.l = 1.75; 
x237.l = 1.75; 
x238.l = 1.75; 
x239.l = 1.75; 
x240.l = 1.75; 
x241.l = 1.75; 
x242.l = 1.75; 
x243.l = 1.75; 
x244.l = 1.75; 
x245.l = 1.75; 
x246.l = 1.75; 
x247.l = 1.75; 
x248.l = 1.75; 
x249.l = 1.75; 
x250.l = 1.75; 
x251.l = 1.75; 
x252.l = 1.75; 
x253.l = 1.75; 
x254.l = 1.75; 
x255.l = 1.75; 
x256.l = 1.75; 
x257.l = 1.75; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
