*  NLP written by GAMS Convert at 10/06/06 11:52:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        109      109        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        469      469        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        973      865      108        0
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
          ,x468,objvar;

Positive Variables  x2,x3,x4,x5,x7,x8,x9,x10,x11,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x36,x37
          ,x38,x39,x40,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55
          ,x56,x57,x58,x59,x60,x61,x62,x63,x65,x66,x67,x68,x69,x71,x72,x73,x74
          ,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,x91
          ,x92,x94,x95,x96,x97,x98,x100,x101,x102,x103,x104,x105,x106,x107
          ,x108,x109,x110,x111,x112,x113,x114,x115,x116,x117,x118,x119,x120
          ,x121,x123,x124,x125,x126,x127,x128,x129,x130,x131,x132,x133,x134
          ,x135,x136,x137,x138,x139,x140,x141,x142,x143,x144,x146,x147,x148
          ,x149,x150,x152,x153,x154,x155,x157,x158,x159,x160,x161,x163,x164
          ,x165,x166,x167,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177
          ,x178,x179,x180,x181,x182,x183,x184,x186,x187,x188,x189,x190,x192
          ,x193,x194,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205
          ,x206,x207,x208,x209,x210,x211,x212,x213,x215,x216,x217,x218,x219
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x244,x245,x246,x247
          ,x248,x250,x251,x252,x253,x254,x255,x256,x257,x258,x259,x260,x261
          ,x262,x263,x264,x265,x267,x268,x269,x270,x271,x273,x274,x275,x276
          ,x277,x278,x279,x280,x281,x282,x283,x284,x285,x286,x287,x288,x289
          ,x290,x291,x292,x293,x294,x296,x297,x298,x299,x300,x302,x303,x304
          ,x305,x307,x308,x309,x310,x311,x313,x314,x315,x316,x317,x318,x319
          ,x320,x321,x322,x323,x324,x325,x326,x327,x328,x329,x330,x331,x332
          ,x333,x334,x336,x337,x338,x339,x340,x342,x343,x344,x345,x346,x347
          ,x348,x349,x350,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360
          ,x361,x362,x363,x365,x366,x367,x368,x369,x371,x372,x373,x374,x375
          ,x376,x377,x378,x379,x380,x381,x382,x384,x385,x386,x388,x389,x390
          ,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400,x401,x402,x403
          ,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413,x414,x415,x416
          ,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426,x427,x428,x429
          ,x431,x432,x433,x435,x436,x437,x438,x439,x440,x441,x442,x443,x444
          ,x445,x446,x447,x448,x450,x451,x452,x454,x455,x456,x457,x458,x459
          ,x460,x461,x462,x463,x464,x465,x466,x467,x468;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109;


e1..  - x18 + x24 - x47 + x53 - x76 + x82 =E= 0;

e2..  - x7 + x13 + x18 - x24 - x105 + x111 - x168 + x174 =E= -2000;

e3..    x47 - x53 - x128 + x134 - x197 + x203 - x226 + x232 =E= 2000;

e4..    x105 - x111 - x157 + x163 - x318 + x324 - x347 + x353 =E= 0;

e5..    x197 - x203 + x255 - x278 + x284 - x307 + x313 - x376 =E= 0;

e6..    x157 - x163 - x255 + x376 - x438 + x442 =E= 0;

e7..    x7 - x13 + x76 - x82 + x226 - x232 - x457 + x461 =E= 0;

e8..    x128 - x134 + x168 - x174 + x278 - x284 + x318 - x324 - x391 + x395
      + x457 - x461 =E= 0;

e9..    x307 - x313 + x347 - x353 + x391 - x395 + x438 - x442 =E= 0;

e10..  - x30 + x36 - x59 + x65 - x88 + x94 =E= 0;

e11..  - x19 + x25 + x30 - x36 - x117 + x123 - x180 + x186 =E= -2000;

e12..    x59 - x65 - x140 + x146 - x209 + x215 - x238 + x244 =E= 0;

e13..    x117 - x123 - x169 + x175 - x330 + x336 - x359 + x365 =E= 2000;

e14..    x209 - x215 - x261 + x267 - x290 + x296 - x319 + x325 =E= 0;

e15..    x169 - x175 + x261 - x267 - x446 + x450 =E= 0;

e16..    x19 - x25 + x88 - x94 + x238 - x244 - x380 + x384 =E= 0;

e17..    x140 - x146 + x180 - x186 + x290 - x296 + x330 - x336 + x380 - x384
       - x399 + x403 =E= 0;

e18..    x319 - x325 + x359 - x365 + x399 - x403 + x446 - x450 =E= 0;

e19..  - x42 + x48 - x71 + x77 - x100 + x106 =E= 0;

e20..  - x2 + x8 - x31 + x37 + x42 - x48 - x192 + x198 =E= -1000;

e21..    x71 - x77 + x129 - x152 + x158 - x221 + x227 - x250 =E= 0;

e22..    x2 - x8 - x181 + x187 - x342 + x348 - x371 + x377 =E= 0;

e23..    x221 - x227 - x273 + x279 - x302 + x308 - x331 + x337 =E= 1000;

e24..    x181 - x187 + x273 - x279 - x454 + x458 =E= 0;

e25..    x31 - x37 + x100 - x106 - x129 + x250 - x388 + x392 =E= 0;

e26..    x152 - x158 + x192 - x198 + x302 - x308 + x342 - x348 + x388 - x392
       - x407 + x411 =E= 0;

e27..    x331 - x337 + x371 - x377 + x407 - x411 + x454 - x458 =E= 0;

e28..  - x54 + x60 - x83 + x89 - x112 + x118 =E= 0;

e29..  - x14 + x20 - x43 + x49 + x54 - x60 - x204 + x210 =E= 0;

e30..    x83 - x89 - x135 + x141 - x164 + x170 - x233 + x239 =E= -1000;

e31..    x14 - x20 - x193 + x199 - x256 + x262 - x354 + x360 =E= 1000;

e32..    x233 - x239 - x285 + x291 - x314 + x320 - x343 + x349 =E= 0;

e33..    x193 - x199 + x285 - x291 + x381 - x462 =E= 0;

e34..    x43 - x49 + x112 - x118 + x135 - x141 - x396 + x400 =E= 0;

e35..    x164 - x170 + x204 - x210 + x314 - x320 + x354 - x360 + x396 - x400
       - x415 + x419 =E= 0;

e36..    x256 - x262 + x343 - x349 - x381 + x415 - x419 + x462 =E= 0;

e37..    x3 - x66 + x72 - x95 + x101 - x124 =E= 0;

e38..  - x26 + x32 - x55 + x61 + x66 - x72 - x216 + x222 =E= 0;

e39..    x95 - x101 - x147 + x153 - x176 + x182 - x245 + x251 =E= -2000;

e40..    x26 - x32 - x205 + x211 - x268 + x274 - x366 + x372 =E= 0;

e41..    x245 - x251 - x297 + x303 - x326 + x332 - x355 + x361 =E= 2000;

e42..    x205 - x211 + x297 - x303 - x385 + x389 =E= 0;

e43..  - x3 + x55 - x61 + x124 + x147 - x153 - x404 + x408 =E= 0;

e44..    x176 - x182 + x216 - x222 + x326 - x332 + x366 - x372 + x404 - x408
       - x423 + x427 =E= 0;

e45..    x268 - x274 + x355 - x361 + x385 - x389 + x423 - x427 =E= 0;

e46..  - x9 + x15 - x78 + x84 - x107 + x113 =E= 0;

e47..  - x38 + x44 - x67 + x73 + x78 - x84 - x228 + x234 =E= 0;

e48..    x107 - x113 - x130 + x136 - x159 + x165 - x188 + x194 =E= 0;

e49..    x38 - x44 - x217 + x223 + x257 - x280 + x286 - x378 =E= -1000;

e50..    x130 - x136 - x309 + x315 - x338 + x344 - x367 + x373 =E= 1000;

e51..    x217 - x223 + x309 - x315 - x393 + x397 =E= 0;

e52..    x9 - x15 + x67 - x73 + x159 - x165 - x412 + x416 =E= 0;

e53..    x188 - x194 + x228 - x234 - x257 + x338 - x344 + x378 + x412 - x416
       - x431 + x435 =E= 0;

e54..    x280 - x286 + x367 - x373 + x393 - x397 + x431 - x435 =E= 0;

e55..  - x21 + x27 - x90 + x96 - x119 + x125 =E= 0;

e56..  - x50 + x56 - x79 + x85 + x90 - x96 - x240 + x246 =E= 200;

e57..    x119 - x125 - x142 + x148 - x171 + x177 - x200 + x206 =E= -200;

e58..    x50 - x56 - x229 + x235 - x263 + x269 - x292 + x298 =E= 0;

e59..    x142 - x148 - x321 + x327 - x350 + x356 - x382 + x386 =E= 0;

e60..    x229 - x235 + x321 - x327 - x401 + x405 =E= 0;

e61..    x21 - x27 + x79 - x85 + x171 - x177 - x420 + x424 =E= 0;

e62..    x200 - x206 + x240 - x246 + x263 - x269 + x350 - x356 + x420 - x424
       - x439 + x443 =E= 0;

e63..    x292 - x298 + x382 - x386 + x401 - x405 + x439 - x443 =E= 0;

e64..  - x4 + x10 - x33 + x39 - x102 + x108 =E= 0;

e65..  - x62 + x68 - x91 + x97 + x102 - x108 + x131 - x252 =E= 200;

e66..    x4 - x10 - x154 + x160 - x183 + x189 - x212 + x218 =E= 0;

e67..    x62 - x68 - x241 + x247 - x275 + x281 - x304 + x310 =E= -200;

e68..    x154 - x160 - x333 + x339 - x362 + x368 - x390 + x394 =E= 0;

e69..    x241 - x247 + x333 - x339 - x409 + x413 =E= 0;

e70..    x33 - x39 + x91 - x97 + x183 - x189 - x428 + x432 =E= 0;

e71..  - x131 + x212 - x218 + x252 + x275 - x281 + x362 - x368 + x428 - x432
       - x447 + x451 =E= 0;

e72..    x304 - x310 + x390 - x394 + x409 - x413 + x447 - x451 =E= 0;

e73..  - x16 + x22 - x45 + x51 - x114 + x120 =E= 0;

e74..  - x74 + x80 - x103 + x109 + x114 - x120 - x137 + x143 =E= 100;

e75..    x16 - x22 - x166 + x172 - x195 + x201 - x224 + x230 =E= 0;

e76..    x74 - x80 - x258 + x264 - x287 + x293 - x316 + x322 =E= 0;

e77..    x166 - x172 + x253 - x345 + x351 - x374 - x398 + x402 =E= -100;

e78..    x258 - x264 + x345 - x351 - x417 + x421 =E= 0;

e79..    x45 - x51 + x103 - x109 + x195 - x201 - x436 + x440 =E= 0;

e80..    x137 - x143 + x224 - x230 - x253 + x287 - x293 + x374 + x436 - x440
       - x455 + x459 =E= 0;

e81..    x316 - x322 + x398 - x402 + x417 - x421 + x455 - x459 =E= 0;

e82..    x5 - x28 + x34 - x57 + x63 - x126 =E= 0;

e83..  - x5 - x86 + x92 - x115 + x121 + x126 - x149 + x155 =E= 0;

e84..    x28 - x34 - x178 + x184 - x207 + x213 - x236 + x242 =E= 100;

e85..    x86 - x92 - x270 + x276 - x299 + x305 - x328 + x334 =E= -100;

e86..    x178 - x184 - x259 + x265 - x357 + x363 - x406 + x410 =E= 0;

e87..    x270 - x276 + x357 - x363 - x425 + x429 =E= 0;

e88..    x57 - x63 + x115 - x121 + x207 - x213 - x444 + x448 =E= 0;

e89..    x149 - x155 + x236 - x242 + x259 - x265 + x299 - x305 + x444 - x448
       - x463 + x464 =E= 0;

e90..    x328 - x334 + x406 - x410 + x425 - x429 + x463 - x464 =E= 0;

e91..  - x11 + x17 - x40 + x46 - x69 + x75 =E= 0;

e92..    x11 - x17 - x98 + x104 - x132 + x138 - x161 + x167 =E= 0;

e93..    x40 - x46 + x127 - x190 + x196 - x219 + x225 - x248 =E= 200;

e94..    x98 - x104 - x282 + x288 - x311 + x317 - x340 + x346 =E= 0;

e95..    x190 - x196 - x271 + x277 - x369 + x375 - x414 + x418 =E= -200;

e96..    x282 - x288 + x369 - x375 - x433 + x437 =E= 0;

e97..    x69 - x75 + x132 - x138 + x219 - x225 - x452 + x456 =E= 0;

e98..  - x127 + x161 - x167 + x248 + x271 - x277 + x311 - x317 + x452 - x456
       - x465 + x466 =E= 0;

e99..    x340 - x346 + x414 - x418 + x433 - x437 + x465 - x466 =E= 0;

e100..  - x23 + x29 - x52 + x58 - x81 + x87 =E= 0;

e101..    x23 - x29 - x110 + x116 - x144 + x150 - x173 + x179 =E= 0;

e102..    x52 - x58 - x133 + x139 - x202 + x208 - x231 + x237 =E= 0;

e103..    x110 - x116 - x294 + x300 - x323 + x329 - x352 + x358 =E= 100;

e104..    x202 - x208 - x254 + x260 - x283 + x289 - x422 + x426 =E= -100;

e105..    x254 - x260 + x294 - x300 - x441 + x445 =E= 0;

e106..    x81 - x87 + x144 - x150 + x231 - x237 + x379 - x460 =E= 0;

e107..    x133 - x139 + x173 - x179 + x283 - x289 + x323 - x329 - x379 + x460
        - x467 + x468 =E= 0;

e108..    x352 - x358 + x422 - x426 + x441 - x445 + x467 - x468 =E= 0;

e109..  - (0.35*((x11 + x23)*(x11 + x23)*x11 + x23)/(x6*x6) + 0.35*x11 + 0.35*
       x23 + 0.35*((x17 + x29)*(x17 + x29)*x17 + x29)/(x12*x12) + 0.35*x17 + 
       0.35*x29 + 0.35*sqrt(x6) + 0.35*sqrt(x12) + 0.4*((x40 + x52)*(x40 + x52)
       *x40 + x52)/(x35*x35) + 0.4*x40 + 0.4*x52 + 0.4*((x46 + x58)*(x46 + x58)
       *x46 + x58)/(x41*x41) + 0.4*x46 + 0.4*x58 + 0.4*sqrt(x35) + 0.4*sqrt(x41
       ) + 0.3*((x69 + x81)*(x69 + x81)*x69 + x81)/(x64*x64) + 0.3*x69 + 0.3*
       x81 + 0.3*((x75 + x87)*(x75 + x87)*x75 + x87)/(x70*x70) + 0.3*x75 + 0.3*
       x87 + 0.3*sqrt(x64) + 0.3*sqrt(x70) + ((x98 + x110)*(x98 + x110)*x98 + 
       x110)/(x93*x93) + x98 + x110 + ((x104 + x116)*(x104 + x116)*x104 + x116)
       /(x99*x99) + x104 + x116 + 0.5*sqrt(x93) + 0.5*sqrt(x99) + 0.15*((x132
        + x144)*(x132 + x144)*x132 + x144)/(x122*x122) + 0.15*x132 + 0.15*x144
        + 0.15*((x138 + x150)*(x138 + x150)*x138 + x150)/(x1*x1) + 0.15*x138 + 
       0.15*x150 + 0.15*sqrt(x122) + 0.15*sqrt(x1) + 0.55*((x161 + x173)*(x161
        + x173)*x161 + x173)/(x156*x156) + 0.55*x161 + 0.55*x173 + 0.55*((x167
        + x179)*(x167 + x179)*x167 + x179)/(x162*x162) + 0.55*x167 + 0.55*x179
        + 0.55*sqrt(x156) + 0.55*sqrt(x162) + ((x190 + x202)*(x190 + x202)*x190
        + x202)/(x185*x185) + x190 + x202 + ((x196 + x208)*(x196 + x208)*x196
        + x208)/(x191*x191) + x196 + x208 + sqrt(x185) + sqrt(x191) + 0.25*((
       x219 + x231)*(x219 + x231)*x219 + x231)/(x214*x214) + 0.25*x219 + 0.25*
       x231 + 0.25*((x225 + x237)*(x225 + x237)*x225 + x237)/(x220*x220) + 0.25
       *x225 + 0.25*x237 + 0.25*sqrt(x214) + 0.25*sqrt(x220) + 0.6*((x133 + 
       x248)*(x133 + x248)*x248 + x133)/(x243*x243) + 0.6*x133 + 0.6*x248 + 0.6
       *((x127 + x139)*(x127 + x139)*x127 + x139)/(x249*x249) + 0.6*x127 + 0.6*
       x139 + 0.6*sqrt(x243) + 0.6*sqrt(x249) + 0.35*((x282 + x294)*(x282 + 
       x294)*x282 + x294)/(x145*x145) + 0.35*x282 + 0.35*x294 + 0.35*((x288 + 
       x300)*(x288 + x300)*x288 + x300)/(x151*x151) + 0.35*x288 + 0.35*x300 + 
       0.35*sqrt(x145) + 0.35*sqrt(x151) + 0.55*((x311 + x323)*(x311 + x323)*
       x311 + x323)/(x306*x306) + 0.55*x311 + 0.55*x323 + 0.55*((x317 + x329)*(
       x317 + x329)*x317 + x329)/(x312*x312) + 0.55*x317 + 0.55*x329 + 0.55*
       sqrt(x306) + 0.55*sqrt(x312) + 0.15*((x340 + x352)*(x340 + x352)*x340 + 
       x352)/(x335*x335) + 0.15*x340 + 0.15*x352 + 0.15*((x346 + x358)*(x346 + 
       x358)*x346 + x358)/(x341*x341) + 0.15*x346 + 0.15*x358 + 0.15*sqrt(x335)
        + 0.15*sqrt(x341) + 0.4*((x254 + x369)*(x254 + x369)*x369 + x254)/(x364
       *x364) + 0.4*x254 + 0.4*x369 + 0.4*((x260 + x375)*(x260 + x375)*x375 + 
       x260)/(x370*x370) + 0.4*x260 + 0.4*x375 + 0.4*sqrt(x364) + 0.4*sqrt(x370
       ) + 0.6*((x271 + x283)*(x271 + x283)*x271 + x283)/(x266*x266) + 0.6*x271
        + 0.6*x283 + 0.6*((x277 + x289)*(x277 + x289)*x277 + x289)/(x272*x272)
        + 0.6*x277 + 0.6*x289 + 0.6*sqrt(x266) + 0.6*sqrt(x272) + 0.25*((x414
        + x422)*(x414 + x422)*x414 + x422)/(x295*x295) + 0.25*x414 + 0.25*x422
        + 0.25*((x418 + x426)*(x418 + x426)*x418 + x426)/(x301*x301) + 0.25*
       x418 + 0.25*x426 + 0.25*sqrt(x295) + 0.25*sqrt(x301) + 0.3*((x433 + x441
       )*(x433 + x441)*x433 + x441)/(x430*x430) + 0.3*x433 + 0.3*x441 + 0.3*((
       x437 + x445)*(x437 + x445)*x437 + x445)/(x434*x434) + 0.3*x437 + 0.3*
       x445 + 0.3*sqrt(x430) + 0.3*sqrt(x434) + 0.5*((x452 + x460)*(x452 + x460
       )*x452 + x460)/(x449*x449) + 0.5*x452 + 0.5*x460 + 0.5*((x379 + x456)*(
       x379 + x456)*x456 + x379)/(x453*x453) + 0.5*x379 + 0.5*x456 + 0.5*sqrt(
       x449) + 0.5*sqrt(x453) + 0.5*((x465 + x467)*(x465 + x467)*x465 + x467)/(
       x383*x383) + 0.5*x465 + 0.5*x467 + 0.5*((x466 + x468)*(x466 + x468)*x466
        + x468)/(x387*x387) + 0.5*x466 + 0.5*x468 + 0.5*sqrt(x383) + 0.5*sqrt(
       x387)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.01; 
x6.lo = 0.01; 
x12.lo = 0.01; 
x35.lo = 0.01; 
x41.lo = 0.01; 
x64.lo = 0.01; 
x70.lo = 0.01; 
x93.lo = 0.01; 
x99.lo = 0.01; 
x122.lo = 0.01; 
x145.lo = 0.01; 
x151.lo = 0.01; 
x156.lo = 0.01; 
x162.lo = 0.01; 
x185.lo = 0.01; 
x191.lo = 0.01; 
x214.lo = 0.01; 
x220.lo = 0.01; 
x243.lo = 0.01; 
x249.lo = 0.01; 
x266.lo = 0.01; 
x272.lo = 0.01; 
x295.lo = 0.01; 
x301.lo = 0.01; 
x306.lo = 0.01; 
x312.lo = 0.01; 
x335.lo = 0.01; 
x341.lo = 0.01; 
x364.lo = 0.01; 
x370.lo = 0.01; 
x383.lo = 0.01; 
x387.lo = 0.01; 
x430.lo = 0.01; 
x434.lo = 0.01; 
x449.lo = 0.01; 
x453.lo = 0.01; 

* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 
x4.l = 0.1; 
x5.l = 0.1; 
x6.l = 0.1; 
x7.l = 0.1; 
x8.l = 0.1; 
x9.l = 0.1; 
x10.l = 0.1; 
x11.l = 0.1; 
x12.l = 0.1; 
x13.l = 0.1; 
x14.l = 0.1; 
x15.l = 0.1; 
x16.l = 0.1; 
x17.l = 0.1; 
x18.l = 0.1; 
x19.l = 0.1; 
x20.l = 0.1; 
x21.l = 0.1; 
x22.l = 0.1; 
x23.l = 0.1; 
x24.l = 0.1; 
x25.l = 0.1; 
x26.l = 0.1; 
x27.l = 0.1; 
x28.l = 0.1; 
x29.l = 0.1; 
x30.l = 0.1; 
x31.l = 0.1; 
x32.l = 0.1; 
x33.l = 0.1; 
x34.l = 0.1; 
x35.l = 0.1; 
x36.l = 0.1; 
x37.l = 0.1; 
x38.l = 0.1; 
x39.l = 0.1; 
x40.l = 0.1; 
x41.l = 0.1; 
x42.l = 0.1; 
x43.l = 0.1; 
x44.l = 0.1; 
x45.l = 0.1; 
x46.l = 0.1; 
x47.l = 0.1; 
x48.l = 0.1; 
x49.l = 0.1; 
x50.l = 0.1; 
x51.l = 0.1; 
x52.l = 0.1; 
x53.l = 0.1; 
x54.l = 0.1; 
x55.l = 0.1; 
x56.l = 0.1; 
x57.l = 0.1; 
x58.l = 0.1; 
x59.l = 0.1; 
x60.l = 0.1; 
x61.l = 0.1; 
x62.l = 0.1; 
x63.l = 0.1; 
x64.l = 0.1; 
x65.l = 0.1; 
x66.l = 0.1; 
x67.l = 0.1; 
x68.l = 0.1; 
x69.l = 0.1; 
x70.l = 0.1; 
x71.l = 0.1; 
x72.l = 0.1; 
x73.l = 0.1; 
x74.l = 0.1; 
x75.l = 0.1; 
x76.l = 0.1; 
x77.l = 0.1; 
x78.l = 0.1; 
x79.l = 0.1; 
x80.l = 0.1; 
x81.l = 0.1; 
x82.l = 0.1; 
x83.l = 0.1; 
x84.l = 0.1; 
x85.l = 0.1; 
x86.l = 0.1; 
x87.l = 0.1; 
x88.l = 0.1; 
x89.l = 0.1; 
x90.l = 0.1; 
x91.l = 0.1; 
x92.l = 0.1; 
x93.l = 0.1; 
x94.l = 0.1; 
x95.l = 0.1; 
x96.l = 0.1; 
x97.l = 0.1; 
x98.l = 0.1; 
x99.l = 0.1; 
x100.l = 0.1; 
x101.l = 0.1; 
x102.l = 0.1; 
x103.l = 0.1; 
x104.l = 0.1; 
x105.l = 0.1; 
x106.l = 0.1; 
x107.l = 0.1; 
x108.l = 0.1; 
x109.l = 0.1; 
x110.l = 0.1; 
x111.l = 0.1; 
x112.l = 0.1; 
x113.l = 0.1; 
x114.l = 0.1; 
x115.l = 0.1; 
x116.l = 0.1; 
x117.l = 0.1; 
x118.l = 0.1; 
x119.l = 0.1; 
x120.l = 0.1; 
x121.l = 0.1; 
x122.l = 0.1; 
x123.l = 0.1; 
x124.l = 0.1; 
x125.l = 0.1; 
x126.l = 0.1; 
x127.l = 0.1; 
x128.l = 0.1; 
x129.l = 0.1; 
x130.l = 0.1; 
x131.l = 0.1; 
x132.l = 0.1; 
x133.l = 0.1; 
x134.l = 0.1; 
x135.l = 0.1; 
x136.l = 0.1; 
x137.l = 0.1; 
x138.l = 0.1; 
x139.l = 0.1; 
x140.l = 0.1; 
x141.l = 0.1; 
x142.l = 0.1; 
x143.l = 0.1; 
x144.l = 0.1; 
x145.l = 0.1; 
x146.l = 0.1; 
x147.l = 0.1; 
x148.l = 0.1; 
x149.l = 0.1; 
x150.l = 0.1; 
x151.l = 0.1; 
x152.l = 0.1; 
x153.l = 0.1; 
x154.l = 0.1; 
x155.l = 0.1; 
x156.l = 0.1; 
x157.l = 0.1; 
x158.l = 0.1; 
x159.l = 0.1; 
x160.l = 0.1; 
x161.l = 0.1; 
x162.l = 0.1; 
x163.l = 0.1; 
x164.l = 0.1; 
x165.l = 0.1; 
x166.l = 0.1; 
x167.l = 0.1; 
x168.l = 0.1; 
x169.l = 0.1; 
x170.l = 0.1; 
x171.l = 0.1; 
x172.l = 0.1; 
x173.l = 0.1; 
x174.l = 0.1; 
x175.l = 0.1; 
x176.l = 0.1; 
x177.l = 0.1; 
x178.l = 0.1; 
x179.l = 0.1; 
x180.l = 0.1; 
x181.l = 0.1; 
x182.l = 0.1; 
x183.l = 0.1; 
x184.l = 0.1; 
x185.l = 0.1; 
x186.l = 0.1; 
x187.l = 0.1; 
x188.l = 0.1; 
x189.l = 0.1; 
x190.l = 0.1; 
x191.l = 0.1; 
x192.l = 0.1; 
x193.l = 0.1; 
x194.l = 0.1; 
x195.l = 0.1; 
x196.l = 0.1; 
x197.l = 0.1; 
x198.l = 0.1; 
x199.l = 0.1; 
x200.l = 0.1; 
x201.l = 0.1; 
x202.l = 0.1; 
x203.l = 0.1; 
x204.l = 0.1; 
x205.l = 0.1; 
x206.l = 0.1; 
x207.l = 0.1; 
x208.l = 0.1; 
x209.l = 0.1; 
x210.l = 0.1; 
x211.l = 0.1; 
x212.l = 0.1; 
x213.l = 0.1; 
x214.l = 0.1; 
x215.l = 0.1; 
x216.l = 0.1; 
x217.l = 0.1; 
x218.l = 0.1; 
x219.l = 0.1; 
x220.l = 0.1; 
x221.l = 0.1; 
x222.l = 0.1; 
x223.l = 0.1; 
x224.l = 0.1; 
x225.l = 0.1; 
x226.l = 0.1; 
x227.l = 0.1; 
x228.l = 0.1; 
x229.l = 0.1; 
x230.l = 0.1; 
x231.l = 0.1; 
x232.l = 0.1; 
x233.l = 0.1; 
x234.l = 0.1; 
x235.l = 0.1; 
x236.l = 0.1; 
x237.l = 0.1; 
x238.l = 0.1; 
x239.l = 0.1; 
x240.l = 0.1; 
x241.l = 0.1; 
x242.l = 0.1; 
x243.l = 0.1; 
x244.l = 0.1; 
x245.l = 0.1; 
x246.l = 0.1; 
x247.l = 0.1; 
x248.l = 0.1; 
x249.l = 0.1; 
x250.l = 0.1; 
x251.l = 0.1; 
x252.l = 0.1; 
x253.l = 0.1; 
x254.l = 0.1; 
x255.l = 0.1; 
x256.l = 0.1; 
x257.l = 0.1; 
x258.l = 0.1; 
x259.l = 0.1; 
x260.l = 0.1; 
x261.l = 0.1; 
x262.l = 0.1; 
x263.l = 0.1; 
x264.l = 0.1; 
x265.l = 0.1; 
x266.l = 0.1; 
x267.l = 0.1; 
x268.l = 0.1; 
x269.l = 0.1; 
x270.l = 0.1; 
x271.l = 0.1; 
x272.l = 0.1; 
x273.l = 0.1; 
x274.l = 0.1; 
x275.l = 0.1; 
x276.l = 0.1; 
x277.l = 0.1; 
x278.l = 0.1; 
x279.l = 0.1; 
x280.l = 0.1; 
x281.l = 0.1; 
x282.l = 0.1; 
x283.l = 0.1; 
x284.l = 0.1; 
x285.l = 0.1; 
x286.l = 0.1; 
x287.l = 0.1; 
x288.l = 0.1; 
x289.l = 0.1; 
x290.l = 0.1; 
x291.l = 0.1; 
x292.l = 0.1; 
x293.l = 0.1; 
x294.l = 0.1; 
x295.l = 0.1; 
x296.l = 0.1; 
x297.l = 0.1; 
x298.l = 0.1; 
x299.l = 0.1; 
x300.l = 0.1; 
x301.l = 0.1; 
x302.l = 0.1; 
x303.l = 0.1; 
x304.l = 0.1; 
x305.l = 0.1; 
x306.l = 0.1; 
x307.l = 0.1; 
x308.l = 0.1; 
x309.l = 0.1; 
x310.l = 0.1; 
x311.l = 0.1; 
x312.l = 0.1; 
x313.l = 0.1; 
x314.l = 0.1; 
x315.l = 0.1; 
x316.l = 0.1; 
x317.l = 0.1; 
x318.l = 0.1; 
x319.l = 0.1; 
x320.l = 0.1; 
x321.l = 0.1; 
x322.l = 0.1; 
x323.l = 0.1; 
x324.l = 0.1; 
x325.l = 0.1; 
x326.l = 0.1; 
x327.l = 0.1; 
x328.l = 0.1; 
x329.l = 0.1; 
x330.l = 0.1; 
x331.l = 0.1; 
x332.l = 0.1; 
x333.l = 0.1; 
x334.l = 0.1; 
x335.l = 0.1; 
x336.l = 0.1; 
x337.l = 0.1; 
x338.l = 0.1; 
x339.l = 0.1; 
x340.l = 0.1; 
x341.l = 0.1; 
x342.l = 0.1; 
x343.l = 0.1; 
x344.l = 0.1; 
x345.l = 0.1; 
x346.l = 0.1; 
x347.l = 0.1; 
x348.l = 0.1; 
x349.l = 0.1; 
x350.l = 0.1; 
x351.l = 0.1; 
x352.l = 0.1; 
x353.l = 0.1; 
x354.l = 0.1; 
x355.l = 0.1; 
x356.l = 0.1; 
x357.l = 0.1; 
x358.l = 0.1; 
x359.l = 0.1; 
x360.l = 0.1; 
x361.l = 0.1; 
x362.l = 0.1; 
x363.l = 0.1; 
x364.l = 0.1; 
x365.l = 0.1; 
x366.l = 0.1; 
x367.l = 0.1; 
x368.l = 0.1; 
x369.l = 0.1; 
x370.l = 0.1; 
x371.l = 0.1; 
x372.l = 0.1; 
x373.l = 0.1; 
x374.l = 0.1; 
x375.l = 0.1; 
x376.l = 0.1; 
x377.l = 0.1; 
x378.l = 0.1; 
x379.l = 0.1; 
x380.l = 0.1; 
x381.l = 0.1; 
x382.l = 0.1; 
x383.l = 0.1; 
x384.l = 0.1; 
x385.l = 0.1; 
x386.l = 0.1; 
x387.l = 0.1; 
x388.l = 0.1; 
x389.l = 0.1; 
x390.l = 0.1; 
x391.l = 0.1; 
x392.l = 0.1; 
x393.l = 0.1; 
x394.l = 0.1; 
x395.l = 0.1; 
x396.l = 0.1; 
x397.l = 0.1; 
x398.l = 0.1; 
x399.l = 0.1; 
x400.l = 0.1; 
x401.l = 0.1; 
x402.l = 0.1; 
x403.l = 0.1; 
x404.l = 0.1; 
x405.l = 0.1; 
x406.l = 0.1; 
x407.l = 0.1; 
x408.l = 0.1; 
x409.l = 0.1; 
x410.l = 0.1; 
x411.l = 0.1; 
x412.l = 0.1; 
x413.l = 0.1; 
x414.l = 0.1; 
x415.l = 0.1; 
x416.l = 0.1; 
x417.l = 0.1; 
x418.l = 0.1; 
x419.l = 0.1; 
x420.l = 0.1; 
x421.l = 0.1; 
x422.l = 0.1; 
x423.l = 0.1; 
x424.l = 0.1; 
x425.l = 0.1; 
x426.l = 0.1; 
x427.l = 0.1; 
x428.l = 0.1; 
x429.l = 0.1; 
x430.l = 0.1; 
x431.l = 0.1; 
x432.l = 0.1; 
x433.l = 0.1; 
x434.l = 0.1; 
x435.l = 0.1; 
x436.l = 0.1; 
x437.l = 0.1; 
x438.l = 0.1; 
x439.l = 0.1; 
x440.l = 0.1; 
x441.l = 0.1; 
x442.l = 0.1; 
x443.l = 0.1; 
x444.l = 0.1; 
x445.l = 0.1; 
x446.l = 0.1; 
x447.l = 0.1; 
x448.l = 0.1; 
x449.l = 0.1; 
x450.l = 0.1; 
x451.l = 0.1; 
x452.l = 0.1; 
x453.l = 0.1; 
x454.l = 0.1; 
x455.l = 0.1; 
x456.l = 0.1; 
x457.l = 0.1; 
x458.l = 0.1; 
x459.l = 0.1; 
x460.l = 0.1; 
x461.l = 0.1; 
x462.l = 0.1; 
x463.l = 0.1; 
x464.l = 0.1; 
x465.l = 0.1; 
x466.l = 0.1; 
x467.l = 0.1; 
x468.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
