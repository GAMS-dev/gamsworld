*  NLP written by GAMS Convert at 07/31/01 15:58:53
*  
*  Equation counts
*     Total       E       G       L       N       X
*       101     101       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       301     301       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       601       1     600       0
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
          ,x299,x300,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101;


e1..  - (1/sqrt(sqr(x1 - x2) + sqr(x101 - x102) + sqr(x201 - x202)) + 1/sqrt(
     sqr(x1 - x3) + sqr(x101 - x103) + sqr(x201 - x203)) + 1/sqrt(sqr(x1 - x4)
      + sqr(x101 - x104) + sqr(x201 - x204)) + 1/sqrt(sqr(x1 - x5) + sqr(x101
      - x105) + sqr(x201 - x205)) + 1/sqrt(sqr(x1 - x6) + sqr(x101 - x106) + 
     sqr(x201 - x206)) + 1/sqrt(sqr(x1 - x7) + sqr(x101 - x107) + sqr(x201 - 
     x207)) + 1/sqrt(sqr(x1 - x8) + sqr(x101 - x108) + sqr(x201 - x208)) + 1/
     sqrt(sqr(x1 - x9) + sqr(x101 - x109) + sqr(x201 - x209)) + 1/sqrt(sqr(x1
      - x10) + sqr(x101 - x110) + sqr(x201 - x210)) + 1/sqrt(sqr(x1 - x11) + 
     sqr(x101 - x111) + sqr(x201 - x211)) + 1/sqrt(sqr(x1 - x12) + sqr(x101 - 
     x112) + sqr(x201 - x212)) + 1/sqrt(sqr(x1 - x13) + sqr(x101 - x113) + sqr(
     x201 - x213)) + 1/sqrt(sqr(x1 - x14) + sqr(x101 - x114) + sqr(x201 - x214)
     ) + 1/sqrt(sqr(x1 - x15) + sqr(x101 - x115) + sqr(x201 - x215)) + 1/sqrt(
     sqr(x1 - x16) + sqr(x101 - x116) + sqr(x201 - x216)) + 1/sqrt(sqr(x1 - x17
     ) + sqr(x101 - x117) + sqr(x201 - x217)) + 1/sqrt(sqr(x1 - x18) + sqr(x101
      - x118) + sqr(x201 - x218)) + 1/sqrt(sqr(x1 - x19) + sqr(x101 - x119) + 
     sqr(x201 - x219)) + 1/sqrt(sqr(x1 - x20) + sqr(x101 - x120) + sqr(x201 - 
     x220)) + 1/sqrt(sqr(x1 - x21) + sqr(x101 - x121) + sqr(x201 - x221)) + 1/
     sqrt(sqr(x1 - x22) + sqr(x101 - x122) + sqr(x201 - x222)) + 1/sqrt(sqr(x1
      - x23) + sqr(x101 - x123) + sqr(x201 - x223)) + 1/sqrt(sqr(x1 - x24) + 
     sqr(x101 - x124) + sqr(x201 - x224)) + 1/sqrt(sqr(x1 - x25) + sqr(x101 - 
     x125) + sqr(x201 - x225)) + 1/sqrt(sqr(x1 - x26) + sqr(x101 - x126) + sqr(
     x201 - x226)) + 1/sqrt(sqr(x1 - x27) + sqr(x101 - x127) + sqr(x201 - x227)
     ) + 1/sqrt(sqr(x1 - x28) + sqr(x101 - x128) + sqr(x201 - x228)) + 1/sqrt(
     sqr(x1 - x29) + sqr(x101 - x129) + sqr(x201 - x229)) + 1/sqrt(sqr(x1 - x30
     ) + sqr(x101 - x130) + sqr(x201 - x230)) + 1/sqrt(sqr(x1 - x31) + sqr(x101
      - x131) + sqr(x201 - x231)) + 1/sqrt(sqr(x1 - x32) + sqr(x101 - x132) + 
     sqr(x201 - x232)) + 1/sqrt(sqr(x1 - x33) + sqr(x101 - x133) + sqr(x201 - 
     x233)) + 1/sqrt(sqr(x1 - x34) + sqr(x101 - x134) + sqr(x201 - x234)) + 1/
     sqrt(sqr(x1 - x35) + sqr(x101 - x135) + sqr(x201 - x235)) + 1/sqrt(sqr(x1
      - x36) + sqr(x101 - x136) + sqr(x201 - x236)) + 1/sqrt(sqr(x1 - x37) + 
     sqr(x101 - x137) + sqr(x201 - x237)) + 1/sqrt(sqr(x1 - x38) + sqr(x101 - 
     x138) + sqr(x201 - x238)) + 1/sqrt(sqr(x1 - x39) + sqr(x101 - x139) + sqr(
     x201 - x239)) + 1/sqrt(sqr(x1 - x40) + sqr(x101 - x140) + sqr(x201 - x240)
     ) + 1/sqrt(sqr(x1 - x41) + sqr(x101 - x141) + sqr(x201 - x241)) + 1/sqrt(
     sqr(x1 - x42) + sqr(x101 - x142) + sqr(x201 - x242)) + 1/sqrt(sqr(x1 - x43
     ) + sqr(x101 - x143) + sqr(x201 - x243)) + 1/sqrt(sqr(x1 - x44) + sqr(x101
      - x144) + sqr(x201 - x244)) + 1/sqrt(sqr(x1 - x45) + sqr(x101 - x145) + 
     sqr(x201 - x245)) + 1/sqrt(sqr(x1 - x46) + sqr(x101 - x146) + sqr(x201 - 
     x246)) + 1/sqrt(sqr(x1 - x47) + sqr(x101 - x147) + sqr(x201 - x247)) + 1/
     sqrt(sqr(x1 - x48) + sqr(x101 - x148) + sqr(x201 - x248)) + 1/sqrt(sqr(x1
      - x49) + sqr(x101 - x149) + sqr(x201 - x249)) + 1/sqrt(sqr(x1 - x50) + 
     sqr(x101 - x150) + sqr(x201 - x250)) + 1/sqrt(sqr(x1 - x51) + sqr(x101 - 
     x151) + sqr(x201 - x251)) + 1/sqrt(sqr(x1 - x52) + sqr(x101 - x152) + sqr(
     x201 - x252)) + 1/sqrt(sqr(x1 - x53) + sqr(x101 - x153) + sqr(x201 - x253)
     ) + 1/sqrt(sqr(x1 - x54) + sqr(x101 - x154) + sqr(x201 - x254)) + 1/sqrt(
     sqr(x1 - x55) + sqr(x101 - x155) + sqr(x201 - x255)) + 1/sqrt(sqr(x1 - x56
     ) + sqr(x101 - x156) + sqr(x201 - x256)) + 1/sqrt(sqr(x1 - x57) + sqr(x101
      - x157) + sqr(x201 - x257)) + 1/sqrt(sqr(x1 - x58) + sqr(x101 - x158) + 
     sqr(x201 - x258)) + 1/sqrt(sqr(x1 - x59) + sqr(x101 - x159) + sqr(x201 - 
     x259)) + 1/sqrt(sqr(x1 - x60) + sqr(x101 - x160) + sqr(x201 - x260)) + 1/
     sqrt(sqr(x1 - x61) + sqr(x101 - x161) + sqr(x201 - x261)) + 1/sqrt(sqr(x1
      - x62) + sqr(x101 - x162) + sqr(x201 - x262)) + 1/sqrt(sqr(x1 - x63) + 
     sqr(x101 - x163) + sqr(x201 - x263)) + 1/sqrt(sqr(x1 - x64) + sqr(x101 - 
     x164) + sqr(x201 - x264)) + 1/sqrt(sqr(x1 - x65) + sqr(x101 - x165) + sqr(
     x201 - x265)) + 1/sqrt(sqr(x1 - x66) + sqr(x101 - x166) + sqr(x201 - x266)
     ) + 1/sqrt(sqr(x1 - x67) + sqr(x101 - x167) + sqr(x201 - x267)) + 1/sqrt(
     sqr(x1 - x68) + sqr(x101 - x168) + sqr(x201 - x268)) + 1/sqrt(sqr(x1 - x69
     ) + sqr(x101 - x169) + sqr(x201 - x269)) + 1/sqrt(sqr(x1 - x70) + sqr(x101
      - x170) + sqr(x201 - x270)) + 1/sqrt(sqr(x1 - x71) + sqr(x101 - x171) + 
     sqr(x201 - x271)) + 1/sqrt(sqr(x1 - x72) + sqr(x101 - x172) + sqr(x201 - 
     x272)) + 1/sqrt(sqr(x1 - x73) + sqr(x101 - x173) + sqr(x201 - x273)) + 1/
     sqrt(sqr(x1 - x74) + sqr(x101 - x174) + sqr(x201 - x274)) + 1/sqrt(sqr(x1
      - x75) + sqr(x101 - x175) + sqr(x201 - x275)) + 1/sqrt(sqr(x1 - x76) + 
     sqr(x101 - x176) + sqr(x201 - x276)) + 1/sqrt(sqr(x1 - x77) + sqr(x101 - 
     x177) + sqr(x201 - x277)) + 1/sqrt(sqr(x1 - x78) + sqr(x101 - x178) + sqr(
     x201 - x278)) + 1/sqrt(sqr(x1 - x79) + sqr(x101 - x179) + sqr(x201 - x279)
     ) + 1/sqrt(sqr(x1 - x80) + sqr(x101 - x180) + sqr(x201 - x280)) + 1/sqrt(
     sqr(x1 - x81) + sqr(x101 - x181) + sqr(x201 - x281)) + 1/sqrt(sqr(x1 - x82
     ) + sqr(x101 - x182) + sqr(x201 - x282)) + 1/sqrt(sqr(x1 - x83) + sqr(x101
      - x183) + sqr(x201 - x283)) + 1/sqrt(sqr(x1 - x84) + sqr(x101 - x184) + 
     sqr(x201 - x284)) + 1/sqrt(sqr(x1 - x85) + sqr(x101 - x185) + sqr(x201 - 
     x285)) + 1/sqrt(sqr(x1 - x86) + sqr(x101 - x186) + sqr(x201 - x286)) + 1/
     sqrt(sqr(x1 - x87) + sqr(x101 - x187) + sqr(x201 - x287)) + 1/sqrt(sqr(x1
      - x88) + sqr(x101 - x188) + sqr(x201 - x288)) + 1/sqrt(sqr(x1 - x89) + 
     sqr(x101 - x189) + sqr(x201 - x289)) + 1/sqrt(sqr(x1 - x90) + sqr(x101 - 
     x190) + sqr(x201 - x290)) + 1/sqrt(sqr(x1 - x91) + sqr(x101 - x191) + sqr(
     x201 - x291)) + 1/sqrt(sqr(x1 - x92) + sqr(x101 - x192) + sqr(x201 - x292)
     ) + 1/sqrt(sqr(x1 - x93) + sqr(x101 - x193) + sqr(x201 - x293)) + 1/sqrt(
     sqr(x1 - x94) + sqr(x101 - x194) + sqr(x201 - x294)) + 1/sqrt(sqr(x1 - x95
     ) + sqr(x101 - x195) + sqr(x201 - x295)) + 1/sqrt(sqr(x1 - x96) + sqr(x101
      - x196) + sqr(x201 - x296)) + 1/sqrt(sqr(x1 - x97) + sqr(x101 - x197) + 
     sqr(x201 - x297)) + 1/sqrt(sqr(x1 - x98) + sqr(x101 - x198) + sqr(x201 - 
     x298)) + 1/sqrt(sqr(x1 - x99) + sqr(x101 - x199) + sqr(x201 - x299)) + 1/
     sqrt(sqr(x1 - x100) + sqr(x101 - x200) + sqr(x201 - x300)) + 1/sqrt(sqr(x2
      - x3) + sqr(x102 - x103) + sqr(x202 - x203)) + 1/sqrt(sqr(x2 - x4) + sqr(
     x102 - x104) + sqr(x202 - x204)) + 1/sqrt(sqr(x2 - x5) + sqr(x102 - x105)
      + sqr(x202 - x205)) + 1/sqrt(sqr(x2 - x6) + sqr(x102 - x106) + sqr(x202
      - x206)) + 1/sqrt(sqr(x2 - x7) + sqr(x102 - x107) + sqr(x202 - x207)) + 1
     /sqrt(sqr(x2 - x8) + sqr(x102 - x108) + sqr(x202 - x208)) + 1/sqrt(sqr(x2
      - x9) + sqr(x102 - x109) + sqr(x202 - x209)) + 1/sqrt(sqr(x2 - x10) + 
     sqr(x102 - x110) + sqr(x202 - x210)) + 1/sqrt(sqr(x2 - x11) + sqr(x102 - 
     x111) + sqr(x202 - x211)) + 1/sqrt(sqr(x2 - x12) + sqr(x102 - x112) + sqr(
     x202 - x212)) + 1/sqrt(sqr(x2 - x13) + sqr(x102 - x113) + sqr(x202 - x213)
     ) + 1/sqrt(sqr(x2 - x14) + sqr(x102 - x114) + sqr(x202 - x214)) + 1/sqrt(
     sqr(x2 - x15) + sqr(x102 - x115) + sqr(x202 - x215)) + 1/sqrt(sqr(x2 - x16
     ) + sqr(x102 - x116) + sqr(x202 - x216)) + 1/sqrt(sqr(x2 - x17) + sqr(x102
      - x117) + sqr(x202 - x217)) + 1/sqrt(sqr(x2 - x18) + sqr(x102 - x118) + 
     sqr(x202 - x218)) + 1/sqrt(sqr(x2 - x19) + sqr(x102 - x119) + sqr(x202 - 
     x219)) + 1/sqrt(sqr(x2 - x20) + sqr(x102 - x120) + sqr(x202 - x220)) + 1/
     sqrt(sqr(x2 - x21) + sqr(x102 - x121) + sqr(x202 - x221)) + 1/sqrt(sqr(x2
      - x22) + sqr(x102 - x122) + sqr(x202 - x222)) + 1/sqrt(sqr(x2 - x23) + 
     sqr(x102 - x123) + sqr(x202 - x223)) + 1/sqrt(sqr(x2 - x24) + sqr(x102 - 
     x124) + sqr(x202 - x224)) + 1/sqrt(sqr(x2 - x25) + sqr(x102 - x125) + sqr(
     x202 - x225)) + 1/sqrt(sqr(x2 - x26) + sqr(x102 - x126) + sqr(x202 - x226)
     ) + 1/sqrt(sqr(x2 - x27) + sqr(x102 - x127) + sqr(x202 - x227)) + 1/sqrt(
     sqr(x2 - x28) + sqr(x102 - x128) + sqr(x202 - x228)) + 1/sqrt(sqr(x2 - x29
     ) + sqr(x102 - x129) + sqr(x202 - x229)) + 1/sqrt(sqr(x2 - x30) + sqr(x102
      - x130) + sqr(x202 - x230)) + 1/sqrt(sqr(x2 - x31) + sqr(x102 - x131) + 
     sqr(x202 - x231)) + 1/sqrt(sqr(x2 - x32) + sqr(x102 - x132) + sqr(x202 - 
     x232)) + 1/sqrt(sqr(x2 - x33) + sqr(x102 - x133) + sqr(x202 - x233)) + 1/
     sqrt(sqr(x2 - x34) + sqr(x102 - x134) + sqr(x202 - x234)) + 1/sqrt(sqr(x2
      - x35) + sqr(x102 - x135) + sqr(x202 - x235)) + 1/sqrt(sqr(x2 - x36) + 
     sqr(x102 - x136) + sqr(x202 - x236)) + 1/sqrt(sqr(x2 - x37) + sqr(x102 - 
     x137) + sqr(x202 - x237)) + 1/sqrt(sqr(x2 - x38) + sqr(x102 - x138) + sqr(
     x202 - x238)) + 1/sqrt(sqr(x2 - x39) + sqr(x102 - x139) + sqr(x202 - x239)
     ) + 1/sqrt(sqr(x2 - x40) + sqr(x102 - x140) + sqr(x202 - x240)) + 1/sqrt(
     sqr(x2 - x41) + sqr(x102 - x141) + sqr(x202 - x241)) + 1/sqrt(sqr(x2 - x42
     ) + sqr(x102 - x142) + sqr(x202 - x242)) + 1/sqrt(sqr(x2 - x43) + sqr(x102
      - x143) + sqr(x202 - x243)) + 1/sqrt(sqr(x2 - x44) + sqr(x102 - x144) + 
     sqr(x202 - x244)) + 1/sqrt(sqr(x2 - x45) + sqr(x102 - x145) + sqr(x202 - 
     x245)) + 1/sqrt(sqr(x2 - x46) + sqr(x102 - x146) + sqr(x202 - x246)) + 1/
     sqrt(sqr(x2 - x47) + sqr(x102 - x147) + sqr(x202 - x247)) + 1/sqrt(sqr(x2
      - x48) + sqr(x102 - x148) + sqr(x202 - x248)) + 1/sqrt(sqr(x2 - x49) + 
     sqr(x102 - x149) + sqr(x202 - x249)) + 1/sqrt(sqr(x2 - x50) + sqr(x102 - 
     x150) + sqr(x202 - x250)) + 1/sqrt(sqr(x2 - x51) + sqr(x102 - x151) + sqr(
     x202 - x251)) + 1/sqrt(sqr(x2 - x52) + sqr(x102 - x152) + sqr(x202 - x252)
     ) + 1/sqrt(sqr(x2 - x53) + sqr(x102 - x153) + sqr(x202 - x253)) + 1/sqrt(
     sqr(x2 - x54) + sqr(x102 - x154) + sqr(x202 - x254)) + 1/sqrt(sqr(x2 - x55
     ) + sqr(x102 - x155) + sqr(x202 - x255)) + 1/sqrt(sqr(x2 - x56) + sqr(x102
      - x156) + sqr(x202 - x256)) + 1/sqrt(sqr(x2 - x57) + sqr(x102 - x157) + 
     sqr(x202 - x257)) + 1/sqrt(sqr(x2 - x58) + sqr(x102 - x158) + sqr(x202 - 
     x258)) + 1/sqrt(sqr(x2 - x59) + sqr(x102 - x159) + sqr(x202 - x259)) + 1/
     sqrt(sqr(x2 - x60) + sqr(x102 - x160) + sqr(x202 - x260)) + 1/sqrt(sqr(x2
      - x61) + sqr(x102 - x161) + sqr(x202 - x261)) + 1/sqrt(sqr(x2 - x62) + 
     sqr(x102 - x162) + sqr(x202 - x262)) + 1/sqrt(sqr(x2 - x63) + sqr(x102 - 
     x163) + sqr(x202 - x263)) + 1/sqrt(sqr(x2 - x64) + sqr(x102 - x164) + sqr(
     x202 - x264)) + 1/sqrt(sqr(x2 - x65) + sqr(x102 - x165) + sqr(x202 - x265)
     ) + 1/sqrt(sqr(x2 - x66) + sqr(x102 - x166) + sqr(x202 - x266)) + 1/sqrt(
     sqr(x2 - x67) + sqr(x102 - x167) + sqr(x202 - x267)) + 1/sqrt(sqr(x2 - x68
     ) + sqr(x102 - x168) + sqr(x202 - x268)) + 1/sqrt(sqr(x2 - x69) + sqr(x102
      - x169) + sqr(x202 - x269)) + 1/sqrt(sqr(x2 - x70) + sqr(x102 - x170) + 
     sqr(x202 - x270)) + 1/sqrt(sqr(x2 - x71) + sqr(x102 - x171) + sqr(x202 - 
     x271)) + 1/sqrt(sqr(x2 - x72) + sqr(x102 - x172) + sqr(x202 - x272)) + 1/
     sqrt(sqr(x2 - x73) + sqr(x102 - x173) + sqr(x202 - x273)) + 1/sqrt(sqr(x2
      - x74) + sqr(x102 - x174) + sqr(x202 - x274)) + 1/sqrt(sqr(x2 - x75) + 
     sqr(x102 - x175) + sqr(x202 - x275)) + 1/sqrt(sqr(x2 - x76) + sqr(x102 - 
     x176) + sqr(x202 - x276)) + 1/sqrt(sqr(x2 - x77) + sqr(x102 - x177) + sqr(
     x202 - x277)) + 1/sqrt(sqr(x2 - x78) + sqr(x102 - x178) + sqr(x202 - x278)
     ) + 1/sqrt(sqr(x2 - x79) + sqr(x102 - x179) + sqr(x202 - x279)) + 1/sqrt(
     sqr(x2 - x80) + sqr(x102 - x180) + sqr(x202 - x280)) + 1/sqrt(sqr(x2 - x81
     ) + sqr(x102 - x181) + sqr(x202 - x281)) + 1/sqrt(sqr(x2 - x82) + sqr(x102
      - x182) + sqr(x202 - x282)) + 1/sqrt(sqr(x2 - x83) + sqr(x102 - x183) + 
     sqr(x202 - x283)) + 1/sqrt(sqr(x2 - x84) + sqr(x102 - x184) + sqr(x202 - 
     x284)) + 1/sqrt(sqr(x2 - x85) + sqr(x102 - x185) + sqr(x202 - x285)) + 1/
     sqrt(sqr(x2 - x86) + sqr(x102 - x186) + sqr(x202 - x286)) + 1/sqrt(sqr(x2
      - x87) + sqr(x102 - x187) + sqr(x202 - x287)) + 1/sqrt(sqr(x2 - x88) + 
     sqr(x102 - x188) + sqr(x202 - x288)) + 1/sqrt(sqr(x2 - x89) + sqr(x102 - 
     x189) + sqr(x202 - x289)) + 1/sqrt(sqr(x2 - x90) + sqr(x102 - x190) + sqr(
     x202 - x290)) + 1/sqrt(sqr(x2 - x91) + sqr(x102 - x191) + sqr(x202 - x291)
     ) + 1/sqrt(sqr(x2 - x92) + sqr(x102 - x192) + sqr(x202 - x292)) + 1/sqrt(
     sqr(x2 - x93) + sqr(x102 - x193) + sqr(x202 - x293)) + 1/sqrt(sqr(x2 - x94
     ) + sqr(x102 - x194) + sqr(x202 - x294)) + 1/sqrt(sqr(x2 - x95) + sqr(x102
      - x195) + sqr(x202 - x295)) + 1/sqrt(sqr(x2 - x96) + sqr(x102 - x196) + 
     sqr(x202 - x296)) + 1/sqrt(sqr(x2 - x97) + sqr(x102 - x197) + sqr(x202 - 
     x297)) + 1/sqrt(sqr(x2 - x98) + sqr(x102 - x198) + sqr(x202 - x298)) + 1/
     sqrt(sqr(x2 - x99) + sqr(x102 - x199) + sqr(x202 - x299)) + 1/sqrt(sqr(x2
      - x100) + sqr(x102 - x200) + sqr(x202 - x300)) + 1/sqrt(sqr(x3 - x4) + 
     sqr(x103 - x104) + sqr(x203 - x204)) + 1/sqrt(sqr(x3 - x5) + sqr(x103 - 
     x105) + sqr(x203 - x205)) + 1/sqrt(sqr(x3 - x6) + sqr(x103 - x106) + sqr(
     x203 - x206)) + 1/sqrt(sqr(x3 - x7) + sqr(x103 - x107) + sqr(x203 - x207))
      + 1/sqrt(sqr(x3 - x8) + sqr(x103 - x108) + sqr(x203 - x208)) + 1/sqrt(
     sqr(x3 - x9) + sqr(x103 - x109) + sqr(x203 - x209)) + 1/sqrt(sqr(x3 - x10)
      + sqr(x103 - x110) + sqr(x203 - x210)) + 1/sqrt(sqr(x3 - x11) + sqr(x103
      - x111) + sqr(x203 - x211)) + 1/sqrt(sqr(x3 - x12) + sqr(x103 - x112) + 
     sqr(x203 - x212)) + 1/sqrt(sqr(x3 - x13) + sqr(x103 - x113) + sqr(x203 - 
     x213)) + 1/sqrt(sqr(x3 - x14) + sqr(x103 - x114) + sqr(x203 - x214)) + 1/
     sqrt(sqr(x3 - x15) + sqr(x103 - x115) + sqr(x203 - x215)) + 1/sqrt(sqr(x3
      - x16) + sqr(x103 - x116) + sqr(x203 - x216)) + 1/sqrt(sqr(x3 - x17) + 
     sqr(x103 - x117) + sqr(x203 - x217)) + 1/sqrt(sqr(x3 - x18) + sqr(x103 - 
     x118) + sqr(x203 - x218)) + 1/sqrt(sqr(x3 - x19) + sqr(x103 - x119) + sqr(
     x203 - x219)) + 1/sqrt(sqr(x3 - x20) + sqr(x103 - x120) + sqr(x203 - x220)
     ) + 1/sqrt(sqr(x3 - x21) + sqr(x103 - x121) + sqr(x203 - x221)) + 1/sqrt(
     sqr(x3 - x22) + sqr(x103 - x122) + sqr(x203 - x222)) + 1/sqrt(sqr(x3 - x23
     ) + sqr(x103 - x123) + sqr(x203 - x223)) + 1/sqrt(sqr(x3 - x24) + sqr(x103
      - x124) + sqr(x203 - x224)) + 1/sqrt(sqr(x3 - x25) + sqr(x103 - x125) + 
     sqr(x203 - x225)) + 1/sqrt(sqr(x3 - x26) + sqr(x103 - x126) + sqr(x203 - 
     x226)) + 1/sqrt(sqr(x3 - x27) + sqr(x103 - x127) + sqr(x203 - x227)) + 1/
     sqrt(sqr(x3 - x28) + sqr(x103 - x128) + sqr(x203 - x228)) + 1/sqrt(sqr(x3
      - x29) + sqr(x103 - x129) + sqr(x203 - x229)) + 1/sqrt(sqr(x3 - x30) + 
     sqr(x103 - x130) + sqr(x203 - x230)) + 1/sqrt(sqr(x3 - x31) + sqr(x103 - 
     x131) + sqr(x203 - x231)) + 1/sqrt(sqr(x3 - x32) + sqr(x103 - x132) + sqr(
     x203 - x232)) + 1/sqrt(sqr(x3 - x33) + sqr(x103 - x133) + sqr(x203 - x233)
     ) + 1/sqrt(sqr(x3 - x34) + sqr(x103 - x134) + sqr(x203 - x234)) + 1/sqrt(
     sqr(x3 - x35) + sqr(x103 - x135) + sqr(x203 - x235)) + 1/sqrt(sqr(x3 - x36
     ) + sqr(x103 - x136) + sqr(x203 - x236)) + 1/sqrt(sqr(x3 - x37) + sqr(x103
      - x137) + sqr(x203 - x237)) + 1/sqrt(sqr(x3 - x38) + sqr(x103 - x138) + 
     sqr(x203 - x238)) + 1/sqrt(sqr(x3 - x39) + sqr(x103 - x139) + sqr(x203 - 
     x239)) + 1/sqrt(sqr(x3 - x40) + sqr(x103 - x140) + sqr(x203 - x240)) + 1/
     sqrt(sqr(x3 - x41) + sqr(x103 - x141) + sqr(x203 - x241)) + 1/sqrt(sqr(x3
      - x42) + sqr(x103 - x142) + sqr(x203 - x242)) + 1/sqrt(sqr(x3 - x43) + 
     sqr(x103 - x143) + sqr(x203 - x243)) + 1/sqrt(sqr(x3 - x44) + sqr(x103 - 
     x144) + sqr(x203 - x244)) + 1/sqrt(sqr(x3 - x45) + sqr(x103 - x145) + sqr(
     x203 - x245)) + 1/sqrt(sqr(x3 - x46) + sqr(x103 - x146) + sqr(x203 - x246)
     ) + 1/sqrt(sqr(x3 - x47) + sqr(x103 - x147) + sqr(x203 - x247)) + 1/sqrt(
     sqr(x3 - x48) + sqr(x103 - x148) + sqr(x203 - x248)) + 1/sqrt(sqr(x3 - x49
     ) + sqr(x103 - x149) + sqr(x203 - x249)) + 1/sqrt(sqr(x3 - x50) + sqr(x103
      - x150) + sqr(x203 - x250)) + 1/sqrt(sqr(x3 - x51) + sqr(x103 - x151) + 
     sqr(x203 - x251)) + 1/sqrt(sqr(x3 - x52) + sqr(x103 - x152) + sqr(x203 - 
     x252)) + 1/sqrt(sqr(x3 - x53) + sqr(x103 - x153) + sqr(x203 - x253)) + 1/
     sqrt(sqr(x3 - x54) + sqr(x103 - x154) + sqr(x203 - x254)) + 1/sqrt(sqr(x3
      - x55) + sqr(x103 - x155) + sqr(x203 - x255)) + 1/sqrt(sqr(x3 - x56) + 
     sqr(x103 - x156) + sqr(x203 - x256)) + 1/sqrt(sqr(x3 - x57) + sqr(x103 - 
     x157) + sqr(x203 - x257)) + 1/sqrt(sqr(x3 - x58) + sqr(x103 - x158) + sqr(
     x203 - x258)) + 1/sqrt(sqr(x3 - x59) + sqr(x103 - x159) + sqr(x203 - x259)
     ) + 1/sqrt(sqr(x3 - x60) + sqr(x103 - x160) + sqr(x203 - x260)) + 1/sqrt(
     sqr(x3 - x61) + sqr(x103 - x161) + sqr(x203 - x261)) + 1/sqrt(sqr(x3 - x62
     ) + sqr(x103 - x162) + sqr(x203 - x262)) + 1/sqrt(sqr(x3 - x63) + sqr(x103
      - x163) + sqr(x203 - x263)) + 1/sqrt(sqr(x3 - x64) + sqr(x103 - x164) + 
     sqr(x203 - x264)) + 1/sqrt(sqr(x3 - x65) + sqr(x103 - x165) + sqr(x203 - 
     x265)) + 1/sqrt(sqr(x3 - x66) + sqr(x103 - x166) + sqr(x203 - x266)) + 1/
     sqrt(sqr(x3 - x67) + sqr(x103 - x167) + sqr(x203 - x267)) + 1/sqrt(sqr(x3
      - x68) + sqr(x103 - x168) + sqr(x203 - x268)) + 1/sqrt(sqr(x3 - x69) + 
     sqr(x103 - x169) + sqr(x203 - x269)) + 1/sqrt(sqr(x3 - x70) + sqr(x103 - 
     x170) + sqr(x203 - x270)) + 1/sqrt(sqr(x3 - x71) + sqr(x103 - x171) + sqr(
     x203 - x271)) + 1/sqrt(sqr(x3 - x72) + sqr(x103 - x172) + sqr(x203 - x272)
     ) + 1/sqrt(sqr(x3 - x73) + sqr(x103 - x173) + sqr(x203 - x273)) + 1/sqrt(
     sqr(x3 - x74) + sqr(x103 - x174) + sqr(x203 - x274)) + 1/sqrt(sqr(x3 - x75
     ) + sqr(x103 - x175) + sqr(x203 - x275)) + 1/sqrt(sqr(x3 - x76) + sqr(x103
      - x176) + sqr(x203 - x276)) + 1/sqrt(sqr(x3 - x77) + sqr(x103 - x177) + 
     sqr(x203 - x277)) + 1/sqrt(sqr(x3 - x78) + sqr(x103 - x178) + sqr(x203 - 
     x278)) + 1/sqrt(sqr(x3 - x79) + sqr(x103 - x179) + sqr(x203 - x279)) + 1/
     sqrt(sqr(x3 - x80) + sqr(x103 - x180) + sqr(x203 - x280)) + 1/sqrt(sqr(x3
      - x81) + sqr(x103 - x181) + sqr(x203 - x281)) + 1/sqrt(sqr(x3 - x82) + 
     sqr(x103 - x182) + sqr(x203 - x282)) + 1/sqrt(sqr(x3 - x83) + sqr(x103 - 
     x183) + sqr(x203 - x283)) + 1/sqrt(sqr(x3 - x84) + sqr(x103 - x184) + sqr(
     x203 - x284)) + 1/sqrt(sqr(x3 - x85) + sqr(x103 - x185) + sqr(x203 - x285)
     ) + 1/sqrt(sqr(x3 - x86) + sqr(x103 - x186) + sqr(x203 - x286)) + 1/sqrt(
     sqr(x3 - x87) + sqr(x103 - x187) + sqr(x203 - x287)) + 1/sqrt(sqr(x3 - x88
     ) + sqr(x103 - x188) + sqr(x203 - x288)) + 1/sqrt(sqr(x3 - x89) + sqr(x103
      - x189) + sqr(x203 - x289)) + 1/sqrt(sqr(x3 - x90) + sqr(x103 - x190) + 
     sqr(x203 - x290)) + 1/sqrt(sqr(x3 - x91) + sqr(x103 - x191) + sqr(x203 - 
     x291)) + 1/sqrt(sqr(x3 - x92) + sqr(x103 - x192) + sqr(x203 - x292)) + 1/
     sqrt(sqr(x3 - x93) + sqr(x103 - x193) + sqr(x203 - x293)) + 1/sqrt(sqr(x3
      - x94) + sqr(x103 - x194) + sqr(x203 - x294)) + 1/sqrt(sqr(x3 - x95) + 
     sqr(x103 - x195) + sqr(x203 - x295)) + 1/sqrt(sqr(x3 - x96) + sqr(x103 - 
     x196) + sqr(x203 - x296)) + 1/sqrt(sqr(x3 - x97) + sqr(x103 - x197) + sqr(
     x203 - x297)) + 1/sqrt(sqr(x3 - x98) + sqr(x103 - x198) + sqr(x203 - x298)
     ) + 1/sqrt(sqr(x3 - x99) + sqr(x103 - x199) + sqr(x203 - x299)) + 1/sqrt(
     sqr(x3 - x100) + sqr(x103 - x200) + sqr(x203 - x300)) + 1/sqrt(sqr(x4 - x5
     ) + sqr(x104 - x105) + sqr(x204 - x205)) + 1/sqrt(sqr(x4 - x6) + sqr(x104
      - x106) + sqr(x204 - x206)) + 1/sqrt(sqr(x4 - x7) + sqr(x104 - x107) + 
     sqr(x204 - x207)) + 1/sqrt(sqr(x4 - x8) + sqr(x104 - x108) + sqr(x204 - 
     x208)) + 1/sqrt(sqr(x4 - x9) + sqr(x104 - x109) + sqr(x204 - x209)) + 1/
     sqrt(sqr(x4 - x10) + sqr(x104 - x110) + sqr(x204 - x210)) + 1/sqrt(sqr(x4
      - x11) + sqr(x104 - x111) + sqr(x204 - x211)) + 1/sqrt(sqr(x4 - x12) + 
     sqr(x104 - x112) + sqr(x204 - x212)) + 1/sqrt(sqr(x4 - x13) + sqr(x104 - 
     x113) + sqr(x204 - x213)) + 1/sqrt(sqr(x4 - x14) + sqr(x104 - x114) + sqr(
     x204 - x214)) + 1/sqrt(sqr(x4 - x15) + sqr(x104 - x115) + sqr(x204 - x215)
     ) + 1/sqrt(sqr(x4 - x16) + sqr(x104 - x116) + sqr(x204 - x216)) + 1/sqrt(
     sqr(x4 - x17) + sqr(x104 - x117) + sqr(x204 - x217)) + 1/sqrt(sqr(x4 - x18
     ) + sqr(x104 - x118) + sqr(x204 - x218)) + 1/sqrt(sqr(x4 - x19) + sqr(x104
      - x119) + sqr(x204 - x219)) + 1/sqrt(sqr(x4 - x20) + sqr(x104 - x120) + 
     sqr(x204 - x220)) + 1/sqrt(sqr(x4 - x21) + sqr(x104 - x121) + sqr(x204 - 
     x221)) + 1/sqrt(sqr(x4 - x22) + sqr(x104 - x122) + sqr(x204 - x222)) + 1/
     sqrt(sqr(x4 - x23) + sqr(x104 - x123) + sqr(x204 - x223)) + 1/sqrt(sqr(x4
      - x24) + sqr(x104 - x124) + sqr(x204 - x224)) + 1/sqrt(sqr(x4 - x25) + 
     sqr(x104 - x125) + sqr(x204 - x225)) + 1/sqrt(sqr(x4 - x26) + sqr(x104 - 
     x126) + sqr(x204 - x226)) + 1/sqrt(sqr(x4 - x27) + sqr(x104 - x127) + sqr(
     x204 - x227)) + 1/sqrt(sqr(x4 - x28) + sqr(x104 - x128) + sqr(x204 - x228)
     ) + 1/sqrt(sqr(x4 - x29) + sqr(x104 - x129) + sqr(x204 - x229)) + 1/sqrt(
     sqr(x4 - x30) + sqr(x104 - x130) + sqr(x204 - x230)) + 1/sqrt(sqr(x4 - x31
     ) + sqr(x104 - x131) + sqr(x204 - x231)) + 1/sqrt(sqr(x4 - x32) + sqr(x104
      - x132) + sqr(x204 - x232)) + 1/sqrt(sqr(x4 - x33) + sqr(x104 - x133) + 
     sqr(x204 - x233)) + 1/sqrt(sqr(x4 - x34) + sqr(x104 - x134) + sqr(x204 - 
     x234)) + 1/sqrt(sqr(x4 - x35) + sqr(x104 - x135) + sqr(x204 - x235)) + 1/
     sqrt(sqr(x4 - x36) + sqr(x104 - x136) + sqr(x204 - x236)) + 1/sqrt(sqr(x4
      - x37) + sqr(x104 - x137) + sqr(x204 - x237)) + 1/sqrt(sqr(x4 - x38) + 
     sqr(x104 - x138) + sqr(x204 - x238)) + 1/sqrt(sqr(x4 - x39) + sqr(x104 - 
     x139) + sqr(x204 - x239)) + 1/sqrt(sqr(x4 - x40) + sqr(x104 - x140) + sqr(
     x204 - x240)) + 1/sqrt(sqr(x4 - x41) + sqr(x104 - x141) + sqr(x204 - x241)
     ) + 1/sqrt(sqr(x4 - x42) + sqr(x104 - x142) + sqr(x204 - x242)) + 1/sqrt(
     sqr(x4 - x43) + sqr(x104 - x143) + sqr(x204 - x243)) + 1/sqrt(sqr(x4 - x44
     ) + sqr(x104 - x144) + sqr(x204 - x244)) + 1/sqrt(sqr(x4 - x45) + sqr(x104
      - x145) + sqr(x204 - x245)) + 1/sqrt(sqr(x4 - x46) + sqr(x104 - x146) + 
     sqr(x204 - x246)) + 1/sqrt(sqr(x4 - x47) + sqr(x104 - x147) + sqr(x204 - 
     x247)) + 1/sqrt(sqr(x4 - x48) + sqr(x104 - x148) + sqr(x204 - x248)) + 1/
     sqrt(sqr(x4 - x49) + sqr(x104 - x149) + sqr(x204 - x249)) + 1/sqrt(sqr(x4
      - x50) + sqr(x104 - x150) + sqr(x204 - x250)) + 1/sqrt(sqr(x4 - x51) + 
     sqr(x104 - x151) + sqr(x204 - x251)) + 1/sqrt(sqr(x4 - x52) + sqr(x104 - 
     x152) + sqr(x204 - x252)) + 1/sqrt(sqr(x4 - x53) + sqr(x104 - x153) + sqr(
     x204 - x253)) + 1/sqrt(sqr(x4 - x54) + sqr(x104 - x154) + sqr(x204 - x254)
     ) + 1/sqrt(sqr(x4 - x55) + sqr(x104 - x155) + sqr(x204 - x255)) + 1/sqrt(
     sqr(x4 - x56) + sqr(x104 - x156) + sqr(x204 - x256)) + 1/sqrt(sqr(x4 - x57
     ) + sqr(x104 - x157) + sqr(x204 - x257)) + 1/sqrt(sqr(x4 - x58) + sqr(x104
      - x158) + sqr(x204 - x258)) + 1/sqrt(sqr(x4 - x59) + sqr(x104 - x159) + 
     sqr(x204 - x259)) + 1/sqrt(sqr(x4 - x60) + sqr(x104 - x160) + sqr(x204 - 
     x260)) + 1/sqrt(sqr(x4 - x61) + sqr(x104 - x161) + sqr(x204 - x261)) + 1/
     sqrt(sqr(x4 - x62) + sqr(x104 - x162) + sqr(x204 - x262)) + 1/sqrt(sqr(x4
      - x63) + sqr(x104 - x163) + sqr(x204 - x263)) + 1/sqrt(sqr(x4 - x64) + 
     sqr(x104 - x164) + sqr(x204 - x264)) + 1/sqrt(sqr(x4 - x65) + sqr(x104 - 
     x165) + sqr(x204 - x265)) + 1/sqrt(sqr(x4 - x66) + sqr(x104 - x166) + sqr(
     x204 - x266)) + 1/sqrt(sqr(x4 - x67) + sqr(x104 - x167) + sqr(x204 - x267)
     ) + 1/sqrt(sqr(x4 - x68) + sqr(x104 - x168) + sqr(x204 - x268)) + 1/sqrt(
     sqr(x4 - x69) + sqr(x104 - x169) + sqr(x204 - x269)) + 1/sqrt(sqr(x4 - x70
     ) + sqr(x104 - x170) + sqr(x204 - x270)) + 1/sqrt(sqr(x4 - x71) + sqr(x104
      - x171) + sqr(x204 - x271)) + 1/sqrt(sqr(x4 - x72) + sqr(x104 - x172) + 
     sqr(x204 - x272)) + 1/sqrt(sqr(x4 - x73) + sqr(x104 - x173) + sqr(x204 - 
     x273)) + 1/sqrt(sqr(x4 - x74) + sqr(x104 - x174) + sqr(x204 - x274)) + 1/
     sqrt(sqr(x4 - x75) + sqr(x104 - x175) + sqr(x204 - x275)) + 1/sqrt(sqr(x4
      - x76) + sqr(x104 - x176) + sqr(x204 - x276)) + 1/sqrt(sqr(x4 - x77) + 
     sqr(x104 - x177) + sqr(x204 - x277)) + 1/sqrt(sqr(x4 - x78) + sqr(x104 - 
     x178) + sqr(x204 - x278)) + 1/sqrt(sqr(x4 - x79) + sqr(x104 - x179) + sqr(
     x204 - x279)) + 1/sqrt(sqr(x4 - x80) + sqr(x104 - x180) + sqr(x204 - x280)
     ) + 1/sqrt(sqr(x4 - x81) + sqr(x104 - x181) + sqr(x204 - x281)) + 1/sqrt(
     sqr(x4 - x82) + sqr(x104 - x182) + sqr(x204 - x282)) + 1/sqrt(sqr(x4 - x83
     ) + sqr(x104 - x183) + sqr(x204 - x283)) + 1/sqrt(sqr(x4 - x84) + sqr(x104
      - x184) + sqr(x204 - x284)) + 1/sqrt(sqr(x4 - x85) + sqr(x104 - x185) + 
     sqr(x204 - x285)) + 1/sqrt(sqr(x4 - x86) + sqr(x104 - x186) + sqr(x204 - 
     x286)) + 1/sqrt(sqr(x4 - x87) + sqr(x104 - x187) + sqr(x204 - x287)) + 1/
     sqrt(sqr(x4 - x88) + sqr(x104 - x188) + sqr(x204 - x288)) + 1/sqrt(sqr(x4
      - x89) + sqr(x104 - x189) + sqr(x204 - x289)) + 1/sqrt(sqr(x4 - x90) + 
     sqr(x104 - x190) + sqr(x204 - x290)) + 1/sqrt(sqr(x4 - x91) + sqr(x104 - 
     x191) + sqr(x204 - x291)) + 1/sqrt(sqr(x4 - x92) + sqr(x104 - x192) + sqr(
     x204 - x292)) + 1/sqrt(sqr(x4 - x93) + sqr(x104 - x193) + sqr(x204 - x293)
     ) + 1/sqrt(sqr(x4 - x94) + sqr(x104 - x194) + sqr(x204 - x294)) + 1/sqrt(
     sqr(x4 - x95) + sqr(x104 - x195) + sqr(x204 - x295)) + 1/sqrt(sqr(x4 - x96
     ) + sqr(x104 - x196) + sqr(x204 - x296)) + 1/sqrt(sqr(x4 - x97) + sqr(x104
      - x197) + sqr(x204 - x297)) + 1/sqrt(sqr(x4 - x98) + sqr(x104 - x198) + 
     sqr(x204 - x298)) + 1/sqrt(sqr(x4 - x99) + sqr(x104 - x199) + sqr(x204 - 
     x299)) + 1/sqrt(sqr(x4 - x100) + sqr(x104 - x200) + sqr(x204 - x300)) + 1/
     sqrt(sqr(x5 - x6) + sqr(x105 - x106) + sqr(x205 - x206)) + 1/sqrt(sqr(x5
      - x7) + sqr(x105 - x107) + sqr(x205 - x207)) + 1/sqrt(sqr(x5 - x8) + sqr(
     x105 - x108) + sqr(x205 - x208)) + 1/sqrt(sqr(x5 - x9) + sqr(x105 - x109)
      + sqr(x205 - x209)) + 1/sqrt(sqr(x5 - x10) + sqr(x105 - x110) + sqr(x205
      - x210)) + 1/sqrt(sqr(x5 - x11) + sqr(x105 - x111) + sqr(x205 - x211)) + 
     1/sqrt(sqr(x5 - x12) + sqr(x105 - x112) + sqr(x205 - x212)) + 1/sqrt(sqr(
     x5 - x13) + sqr(x105 - x113) + sqr(x205 - x213)) + 1/sqrt(sqr(x5 - x14) + 
     sqr(x105 - x114) + sqr(x205 - x214)) + 1/sqrt(sqr(x5 - x15) + sqr(x105 - 
     x115) + sqr(x205 - x215)) + 1/sqrt(sqr(x5 - x16) + sqr(x105 - x116) + sqr(
     x205 - x216)) + 1/sqrt(sqr(x5 - x17) + sqr(x105 - x117) + sqr(x205 - x217)
     ) + 1/sqrt(sqr(x5 - x18) + sqr(x105 - x118) + sqr(x205 - x218)) + 1/sqrt(
     sqr(x5 - x19) + sqr(x105 - x119) + sqr(x205 - x219)) + 1/sqrt(sqr(x5 - x20
     ) + sqr(x105 - x120) + sqr(x205 - x220)) + 1/sqrt(sqr(x5 - x21) + sqr(x105
      - x121) + sqr(x205 - x221)) + 1/sqrt(sqr(x5 - x22) + sqr(x105 - x122) + 
     sqr(x205 - x222)) + 1/sqrt(sqr(x5 - x23) + sqr(x105 - x123) + sqr(x205 - 
     x223)) + 1/sqrt(sqr(x5 - x24) + sqr(x105 - x124) + sqr(x205 - x224)) + 1/
     sqrt(sqr(x5 - x25) + sqr(x105 - x125) + sqr(x205 - x225)) + 1/sqrt(sqr(x5
      - x26) + sqr(x105 - x126) + sqr(x205 - x226)) + 1/sqrt(sqr(x5 - x27) + 
     sqr(x105 - x127) + sqr(x205 - x227)) + 1/sqrt(sqr(x5 - x28) + sqr(x105 - 
     x128) + sqr(x205 - x228)) + 1/sqrt(sqr(x5 - x29) + sqr(x105 - x129) + sqr(
     x205 - x229)) + 1/sqrt(sqr(x5 - x30) + sqr(x105 - x130) + sqr(x205 - x230)
     ) + 1/sqrt(sqr(x5 - x31) + sqr(x105 - x131) + sqr(x205 - x231)) + 1/sqrt(
     sqr(x5 - x32) + sqr(x105 - x132) + sqr(x205 - x232)) + 1/sqrt(sqr(x5 - x33
     ) + sqr(x105 - x133) + sqr(x205 - x233)) + 1/sqrt(sqr(x5 - x34) + sqr(x105
      - x134) + sqr(x205 - x234)) + 1/sqrt(sqr(x5 - x35) + sqr(x105 - x135) + 
     sqr(x205 - x235)) + 1/sqrt(sqr(x5 - x36) + sqr(x105 - x136) + sqr(x205 - 
     x236)) + 1/sqrt(sqr(x5 - x37) + sqr(x105 - x137) + sqr(x205 - x237)) + 1/
     sqrt(sqr(x5 - x38) + sqr(x105 - x138) + sqr(x205 - x238)) + 1/sqrt(sqr(x5
      - x39) + sqr(x105 - x139) + sqr(x205 - x239)) + 1/sqrt(sqr(x5 - x40) + 
     sqr(x105 - x140) + sqr(x205 - x240)) + 1/sqrt(sqr(x5 - x41) + sqr(x105 - 
     x141) + sqr(x205 - x241)) + 1/sqrt(sqr(x5 - x42) + sqr(x105 - x142) + sqr(
     x205 - x242)) + 1/sqrt(sqr(x5 - x43) + sqr(x105 - x143) + sqr(x205 - x243)
     ) + 1/sqrt(sqr(x5 - x44) + sqr(x105 - x144) + sqr(x205 - x244)) + 1/sqrt(
     sqr(x5 - x45) + sqr(x105 - x145) + sqr(x205 - x245)) + 1/sqrt(sqr(x5 - x46
     ) + sqr(x105 - x146) + sqr(x205 - x246)) + 1/sqrt(sqr(x5 - x47) + sqr(x105
      - x147) + sqr(x205 - x247)) + 1/sqrt(sqr(x5 - x48) + sqr(x105 - x148) + 
     sqr(x205 - x248)) + 1/sqrt(sqr(x5 - x49) + sqr(x105 - x149) + sqr(x205 - 
     x249)) + 1/sqrt(sqr(x5 - x50) + sqr(x105 - x150) + sqr(x205 - x250)) + 1/
     sqrt(sqr(x5 - x51) + sqr(x105 - x151) + sqr(x205 - x251)) + 1/sqrt(sqr(x5
      - x52) + sqr(x105 - x152) + sqr(x205 - x252)) + 1/sqrt(sqr(x5 - x53) + 
     sqr(x105 - x153) + sqr(x205 - x253)) + 1/sqrt(sqr(x5 - x54) + sqr(x105 - 
     x154) + sqr(x205 - x254)) + 1/sqrt(sqr(x5 - x55) + sqr(x105 - x155) + sqr(
     x205 - x255)) + 1/sqrt(sqr(x5 - x56) + sqr(x105 - x156) + sqr(x205 - x256)
     ) + 1/sqrt(sqr(x5 - x57) + sqr(x105 - x157) + sqr(x205 - x257)) + 1/sqrt(
     sqr(x5 - x58) + sqr(x105 - x158) + sqr(x205 - x258)) + 1/sqrt(sqr(x5 - x59
     ) + sqr(x105 - x159) + sqr(x205 - x259)) + 1/sqrt(sqr(x5 - x60) + sqr(x105
      - x160) + sqr(x205 - x260)) + 1/sqrt(sqr(x5 - x61) + sqr(x105 - x161) + 
     sqr(x205 - x261)) + 1/sqrt(sqr(x5 - x62) + sqr(x105 - x162) + sqr(x205 - 
     x262)) + 1/sqrt(sqr(x5 - x63) + sqr(x105 - x163) + sqr(x205 - x263)) + 1/
     sqrt(sqr(x5 - x64) + sqr(x105 - x164) + sqr(x205 - x264)) + 1/sqrt(sqr(x5
      - x65) + sqr(x105 - x165) + sqr(x205 - x265)) + 1/sqrt(sqr(x5 - x66) + 
     sqr(x105 - x166) + sqr(x205 - x266)) + 1/sqrt(sqr(x5 - x67) + sqr(x105 - 
     x167) + sqr(x205 - x267)) + 1/sqrt(sqr(x5 - x68) + sqr(x105 - x168) + sqr(
     x205 - x268)) + 1/sqrt(sqr(x5 - x69) + sqr(x105 - x169) + sqr(x205 - x269)
     ) + 1/sqrt(sqr(x5 - x70) + sqr(x105 - x170) + sqr(x205 - x270)) + 1/sqrt(
     sqr(x5 - x71) + sqr(x105 - x171) + sqr(x205 - x271)) + 1/sqrt(sqr(x5 - x72
     ) + sqr(x105 - x172) + sqr(x205 - x272)) + 1/sqrt(sqr(x5 - x73) + sqr(x105
      - x173) + sqr(x205 - x273)) + 1/sqrt(sqr(x5 - x74) + sqr(x105 - x174) + 
     sqr(x205 - x274)) + 1/sqrt(sqr(x5 - x75) + sqr(x105 - x175) + sqr(x205 - 
     x275)) + 1/sqrt(sqr(x5 - x76) + sqr(x105 - x176) + sqr(x205 - x276)) + 1/
     sqrt(sqr(x5 - x77) + sqr(x105 - x177) + sqr(x205 - x277)) + 1/sqrt(sqr(x5
      - x78) + sqr(x105 - x178) + sqr(x205 - x278)) + 1/sqrt(sqr(x5 - x79) + 
     sqr(x105 - x179) + sqr(x205 - x279)) + 1/sqrt(sqr(x5 - x80) + sqr(x105 - 
     x180) + sqr(x205 - x280)) + 1/sqrt(sqr(x5 - x81) + sqr(x105 - x181) + sqr(
     x205 - x281)) + 1/sqrt(sqr(x5 - x82) + sqr(x105 - x182) + sqr(x205 - x282)
     ) + 1/sqrt(sqr(x5 - x83) + sqr(x105 - x183) + sqr(x205 - x283)) + 1/sqrt(
     sqr(x5 - x84) + sqr(x105 - x184) + sqr(x205 - x284)) + 1/sqrt(sqr(x5 - x85
     ) + sqr(x105 - x185) + sqr(x205 - x285)) + 1/sqrt(sqr(x5 - x86) + sqr(x105
      - x186) + sqr(x205 - x286)) + 1/sqrt(sqr(x5 - x87) + sqr(x105 - x187) + 
     sqr(x205 - x287)) + 1/sqrt(sqr(x5 - x88) + sqr(x105 - x188) + sqr(x205 - 
     x288)) + 1/sqrt(sqr(x5 - x89) + sqr(x105 - x189) + sqr(x205 - x289)) + 1/
     sqrt(sqr(x5 - x90) + sqr(x105 - x190) + sqr(x205 - x290)) + 1/sqrt(sqr(x5
      - x91) + sqr(x105 - x191) + sqr(x205 - x291)) + 1/sqrt(sqr(x5 - x92) + 
     sqr(x105 - x192) + sqr(x205 - x292)) + 1/sqrt(sqr(x5 - x93) + sqr(x105 - 
     x193) + sqr(x205 - x293)) + 1/sqrt(sqr(x5 - x94) + sqr(x105 - x194) + sqr(
     x205 - x294)) + 1/sqrt(sqr(x5 - x95) + sqr(x105 - x195) + sqr(x205 - x295)
     ) + 1/sqrt(sqr(x5 - x96) + sqr(x105 - x196) + sqr(x205 - x296)) + 1/sqrt(
     sqr(x5 - x97) + sqr(x105 - x197) + sqr(x205 - x297)) + 1/sqrt(sqr(x5 - x98
     ) + sqr(x105 - x198) + sqr(x205 - x298)) + 1/sqrt(sqr(x5 - x99) + sqr(x105
      - x199) + sqr(x205 - x299)) + 1/sqrt(sqr(x5 - x100) + sqr(x105 - x200) + 
     sqr(x205 - x300)) + 1/sqrt(sqr(x6 - x7) + sqr(x106 - x107) + sqr(x206 - 
     x207)) + 1/sqrt(sqr(x6 - x8) + sqr(x106 - x108) + sqr(x206 - x208)) + 1/
     sqrt(sqr(x6 - x9) + sqr(x106 - x109) + sqr(x206 - x209)) + 1/sqrt(sqr(x6
      - x10) + sqr(x106 - x110) + sqr(x206 - x210)) + 1/sqrt(sqr(x6 - x11) + 
     sqr(x106 - x111) + sqr(x206 - x211)) + 1/sqrt(sqr(x6 - x12) + sqr(x106 - 
     x112) + sqr(x206 - x212)) + 1/sqrt(sqr(x6 - x13) + sqr(x106 - x113) + sqr(
     x206 - x213)) + 1/sqrt(sqr(x6 - x14) + sqr(x106 - x114) + sqr(x206 - x214)
     ) + 1/sqrt(sqr(x6 - x15) + sqr(x106 - x115) + sqr(x206 - x215)) + 1/sqrt(
     sqr(x6 - x16) + sqr(x106 - x116) + sqr(x206 - x216)) + 1/sqrt(sqr(x6 - x17
     ) + sqr(x106 - x117) + sqr(x206 - x217)) + 1/sqrt(sqr(x6 - x18) + sqr(x106
      - x118) + sqr(x206 - x218)) + 1/sqrt(sqr(x6 - x19) + sqr(x106 - x119) + 
     sqr(x206 - x219)) + 1/sqrt(sqr(x6 - x20) + sqr(x106 - x120) + sqr(x206 - 
     x220)) + 1/sqrt(sqr(x6 - x21) + sqr(x106 - x121) + sqr(x206 - x221)) + 1/
     sqrt(sqr(x6 - x22) + sqr(x106 - x122) + sqr(x206 - x222)) + 1/sqrt(sqr(x6
      - x23) + sqr(x106 - x123) + sqr(x206 - x223)) + 1/sqrt(sqr(x6 - x24) + 
     sqr(x106 - x124) + sqr(x206 - x224)) + 1/sqrt(sqr(x6 - x25) + sqr(x106 - 
     x125) + sqr(x206 - x225)) + 1/sqrt(sqr(x6 - x26) + sqr(x106 - x126) + sqr(
     x206 - x226)) + 1/sqrt(sqr(x6 - x27) + sqr(x106 - x127) + sqr(x206 - x227)
     ) + 1/sqrt(sqr(x6 - x28) + sqr(x106 - x128) + sqr(x206 - x228)) + 1/sqrt(
     sqr(x6 - x29) + sqr(x106 - x129) + sqr(x206 - x229)) + 1/sqrt(sqr(x6 - x30
     ) + sqr(x106 - x130) + sqr(x206 - x230)) + 1/sqrt(sqr(x6 - x31) + sqr(x106
      - x131) + sqr(x206 - x231)) + 1/sqrt(sqr(x6 - x32) + sqr(x106 - x132) + 
     sqr(x206 - x232)) + 1/sqrt(sqr(x6 - x33) + sqr(x106 - x133) + sqr(x206 - 
     x233)) + 1/sqrt(sqr(x6 - x34) + sqr(x106 - x134) + sqr(x206 - x234)) + 1/
     sqrt(sqr(x6 - x35) + sqr(x106 - x135) + sqr(x206 - x235)) + 1/sqrt(sqr(x6
      - x36) + sqr(x106 - x136) + sqr(x206 - x236)) + 1/sqrt(sqr(x6 - x37) + 
     sqr(x106 - x137) + sqr(x206 - x237)) + 1/sqrt(sqr(x6 - x38) + sqr(x106 - 
     x138) + sqr(x206 - x238)) + 1/sqrt(sqr(x6 - x39) + sqr(x106 - x139) + sqr(
     x206 - x239)) + 1/sqrt(sqr(x6 - x40) + sqr(x106 - x140) + sqr(x206 - x240)
     ) + 1/sqrt(sqr(x6 - x41) + sqr(x106 - x141) + sqr(x206 - x241)) + 1/sqrt(
     sqr(x6 - x42) + sqr(x106 - x142) + sqr(x206 - x242)) + 1/sqrt(sqr(x6 - x43
     ) + sqr(x106 - x143) + sqr(x206 - x243)) + 1/sqrt(sqr(x6 - x44) + sqr(x106
      - x144) + sqr(x206 - x244)) + 1/sqrt(sqr(x6 - x45) + sqr(x106 - x145) + 
     sqr(x206 - x245)) + 1/sqrt(sqr(x6 - x46) + sqr(x106 - x146) + sqr(x206 - 
     x246)) + 1/sqrt(sqr(x6 - x47) + sqr(x106 - x147) + sqr(x206 - x247)) + 1/
     sqrt(sqr(x6 - x48) + sqr(x106 - x148) + sqr(x206 - x248)) + 1/sqrt(sqr(x6
      - x49) + sqr(x106 - x149) + sqr(x206 - x249)) + 1/sqrt(sqr(x6 - x50) + 
     sqr(x106 - x150) + sqr(x206 - x250)) + 1/sqrt(sqr(x6 - x51) + sqr(x106 - 
     x151) + sqr(x206 - x251)) + 1/sqrt(sqr(x6 - x52) + sqr(x106 - x152) + sqr(
     x206 - x252)) + 1/sqrt(sqr(x6 - x53) + sqr(x106 - x153) + sqr(x206 - x253)
     ) + 1/sqrt(sqr(x6 - x54) + sqr(x106 - x154) + sqr(x206 - x254)) + 1/sqrt(
     sqr(x6 - x55) + sqr(x106 - x155) + sqr(x206 - x255)) + 1/sqrt(sqr(x6 - x56
     ) + sqr(x106 - x156) + sqr(x206 - x256)) + 1/sqrt(sqr(x6 - x57) + sqr(x106
      - x157) + sqr(x206 - x257)) + 1/sqrt(sqr(x6 - x58) + sqr(x106 - x158) + 
     sqr(x206 - x258)) + 1/sqrt(sqr(x6 - x59) + sqr(x106 - x159) + sqr(x206 - 
     x259)) + 1/sqrt(sqr(x6 - x60) + sqr(x106 - x160) + sqr(x206 - x260)) + 1/
     sqrt(sqr(x6 - x61) + sqr(x106 - x161) + sqr(x206 - x261)) + 1/sqrt(sqr(x6
      - x62) + sqr(x106 - x162) + sqr(x206 - x262)) + 1/sqrt(sqr(x6 - x63) + 
     sqr(x106 - x163) + sqr(x206 - x263)) + 1/sqrt(sqr(x6 - x64) + sqr(x106 - 
     x164) + sqr(x206 - x264)) + 1/sqrt(sqr(x6 - x65) + sqr(x106 - x165) + sqr(
     x206 - x265)) + 1/sqrt(sqr(x6 - x66) + sqr(x106 - x166) + sqr(x206 - x266)
     ) + 1/sqrt(sqr(x6 - x67) + sqr(x106 - x167) + sqr(x206 - x267)) + 1/sqrt(
     sqr(x6 - x68) + sqr(x106 - x168) + sqr(x206 - x268)) + 1/sqrt(sqr(x6 - x69
     ) + sqr(x106 - x169) + sqr(x206 - x269)) + 1/sqrt(sqr(x6 - x70) + sqr(x106
      - x170) + sqr(x206 - x270)) + 1/sqrt(sqr(x6 - x71) + sqr(x106 - x171) + 
     sqr(x206 - x271)) + 1/sqrt(sqr(x6 - x72) + sqr(x106 - x172) + sqr(x206 - 
     x272)) + 1/sqrt(sqr(x6 - x73) + sqr(x106 - x173) + sqr(x206 - x273)) + 1/
     sqrt(sqr(x6 - x74) + sqr(x106 - x174) + sqr(x206 - x274)) + 1/sqrt(sqr(x6
      - x75) + sqr(x106 - x175) + sqr(x206 - x275)) + 1/sqrt(sqr(x6 - x76) + 
     sqr(x106 - x176) + sqr(x206 - x276)) + 1/sqrt(sqr(x6 - x77) + sqr(x106 - 
     x177) + sqr(x206 - x277)) + 1/sqrt(sqr(x6 - x78) + sqr(x106 - x178) + sqr(
     x206 - x278)) + 1/sqrt(sqr(x6 - x79) + sqr(x106 - x179) + sqr(x206 - x279)
     ) + 1/sqrt(sqr(x6 - x80) + sqr(x106 - x180) + sqr(x206 - x280)) + 1/sqrt(
     sqr(x6 - x81) + sqr(x106 - x181) + sqr(x206 - x281)) + 1/sqrt(sqr(x6 - x82
     ) + sqr(x106 - x182) + sqr(x206 - x282)) + 1/sqrt(sqr(x6 - x83) + sqr(x106
      - x183) + sqr(x206 - x283)) + 1/sqrt(sqr(x6 - x84) + sqr(x106 - x184) + 
     sqr(x206 - x284)) + 1/sqrt(sqr(x6 - x85) + sqr(x106 - x185) + sqr(x206 - 
     x285)) + 1/sqrt(sqr(x6 - x86) + sqr(x106 - x186) + sqr(x206 - x286)) + 1/
     sqrt(sqr(x6 - x87) + sqr(x106 - x187) + sqr(x206 - x287)) + 1/sqrt(sqr(x6
      - x88) + sqr(x106 - x188) + sqr(x206 - x288)) + 1/sqrt(sqr(x6 - x89) + 
     sqr(x106 - x189) + sqr(x206 - x289)) + 1/sqrt(sqr(x6 - x90) + sqr(x106 - 
     x190) + sqr(x206 - x290)) + 1/sqrt(sqr(x6 - x91) + sqr(x106 - x191) + sqr(
     x206 - x291)) + 1/sqrt(sqr(x6 - x92) + sqr(x106 - x192) + sqr(x206 - x292)
     ) + 1/sqrt(sqr(x6 - x93) + sqr(x106 - x193) + sqr(x206 - x293)) + 1/sqrt(
     sqr(x6 - x94) + sqr(x106 - x194) + sqr(x206 - x294)) + 1/sqrt(sqr(x6 - x95
     ) + sqr(x106 - x195) + sqr(x206 - x295)) + 1/sqrt(sqr(x6 - x96) + sqr(x106
      - x196) + sqr(x206 - x296)) + 1/sqrt(sqr(x6 - x97) + sqr(x106 - x197) + 
     sqr(x206 - x297)) + 1/sqrt(sqr(x6 - x98) + sqr(x106 - x198) + sqr(x206 - 
     x298)) + 1/sqrt(sqr(x6 - x99) + sqr(x106 - x199) + sqr(x206 - x299)) + 1/
     sqrt(sqr(x6 - x100) + sqr(x106 - x200) + sqr(x206 - x300)) + 1/sqrt(sqr(x7
      - x8) + sqr(x107 - x108) + sqr(x207 - x208)) + 1/sqrt(sqr(x7 - x9) + sqr(
     x107 - x109) + sqr(x207 - x209)) + 1/sqrt(sqr(x7 - x10) + sqr(x107 - x110)
      + sqr(x207 - x210)) + 1/sqrt(sqr(x7 - x11) + sqr(x107 - x111) + sqr(x207
      - x211)) + 1/sqrt(sqr(x7 - x12) + sqr(x107 - x112) + sqr(x207 - x212)) + 
     1/sqrt(sqr(x7 - x13) + sqr(x107 - x113) + sqr(x207 - x213)) + 1/sqrt(sqr(
     x7 - x14) + sqr(x107 - x114) + sqr(x207 - x214)) + 1/sqrt(sqr(x7 - x15) + 
     sqr(x107 - x115) + sqr(x207 - x215)) + 1/sqrt(sqr(x7 - x16) + sqr(x107 - 
     x116) + sqr(x207 - x216)) + 1/sqrt(sqr(x7 - x17) + sqr(x107 - x117) + sqr(
     x207 - x217)) + 1/sqrt(sqr(x7 - x18) + sqr(x107 - x118) + sqr(x207 - x218)
     ) + 1/sqrt(sqr(x7 - x19) + sqr(x107 - x119) + sqr(x207 - x219)) + 1/sqrt(
     sqr(x7 - x20) + sqr(x107 - x120) + sqr(x207 - x220)) + 1/sqrt(sqr(x7 - x21
     ) + sqr(x107 - x121) + sqr(x207 - x221)) + 1/sqrt(sqr(x7 - x22) + sqr(x107
      - x122) + sqr(x207 - x222)) + 1/sqrt(sqr(x7 - x23) + sqr(x107 - x123) + 
     sqr(x207 - x223)) + 1/sqrt(sqr(x7 - x24) + sqr(x107 - x124) + sqr(x207 - 
     x224)) + 1/sqrt(sqr(x7 - x25) + sqr(x107 - x125) + sqr(x207 - x225)) + 1/
     sqrt(sqr(x7 - x26) + sqr(x107 - x126) + sqr(x207 - x226)) + 1/sqrt(sqr(x7
      - x27) + sqr(x107 - x127) + sqr(x207 - x227)) + 1/sqrt(sqr(x7 - x28) + 
     sqr(x107 - x128) + sqr(x207 - x228)) + 1/sqrt(sqr(x7 - x29) + sqr(x107 - 
     x129) + sqr(x207 - x229)) + 1/sqrt(sqr(x7 - x30) + sqr(x107 - x130) + sqr(
     x207 - x230)) + 1/sqrt(sqr(x7 - x31) + sqr(x107 - x131) + sqr(x207 - x231)
     ) + 1/sqrt(sqr(x7 - x32) + sqr(x107 - x132) + sqr(x207 - x232)) + 1/sqrt(
     sqr(x7 - x33) + sqr(x107 - x133) + sqr(x207 - x233)) + 1/sqrt(sqr(x7 - x34
     ) + sqr(x107 - x134) + sqr(x207 - x234)) + 1/sqrt(sqr(x7 - x35) + sqr(x107
      - x135) + sqr(x207 - x235)) + 1/sqrt(sqr(x7 - x36) + sqr(x107 - x136) + 
     sqr(x207 - x236)) + 1/sqrt(sqr(x7 - x37) + sqr(x107 - x137) + sqr(x207 - 
     x237)) + 1/sqrt(sqr(x7 - x38) + sqr(x107 - x138) + sqr(x207 - x238)) + 1/
     sqrt(sqr(x7 - x39) + sqr(x107 - x139) + sqr(x207 - x239)) + 1/sqrt(sqr(x7
      - x40) + sqr(x107 - x140) + sqr(x207 - x240)) + 1/sqrt(sqr(x7 - x41) + 
     sqr(x107 - x141) + sqr(x207 - x241)) + 1/sqrt(sqr(x7 - x42) + sqr(x107 - 
     x142) + sqr(x207 - x242)) + 1/sqrt(sqr(x7 - x43) + sqr(x107 - x143) + sqr(
     x207 - x243)) + 1/sqrt(sqr(x7 - x44) + sqr(x107 - x144) + sqr(x207 - x244)
     ) + 1/sqrt(sqr(x7 - x45) + sqr(x107 - x145) + sqr(x207 - x245)) + 1/sqrt(
     sqr(x7 - x46) + sqr(x107 - x146) + sqr(x207 - x246)) + 1/sqrt(sqr(x7 - x47
     ) + sqr(x107 - x147) + sqr(x207 - x247)) + 1/sqrt(sqr(x7 - x48) + sqr(x107
      - x148) + sqr(x207 - x248)) + 1/sqrt(sqr(x7 - x49) + sqr(x107 - x149) + 
     sqr(x207 - x249)) + 1/sqrt(sqr(x7 - x50) + sqr(x107 - x150) + sqr(x207 - 
     x250)) + 1/sqrt(sqr(x7 - x51) + sqr(x107 - x151) + sqr(x207 - x251)) + 1/
     sqrt(sqr(x7 - x52) + sqr(x107 - x152) + sqr(x207 - x252)) + 1/sqrt(sqr(x7
      - x53) + sqr(x107 - x153) + sqr(x207 - x253)) + 1/sqrt(sqr(x7 - x54) + 
     sqr(x107 - x154) + sqr(x207 - x254)) + 1/sqrt(sqr(x7 - x55) + sqr(x107 - 
     x155) + sqr(x207 - x255)) + 1/sqrt(sqr(x7 - x56) + sqr(x107 - x156) + sqr(
     x207 - x256)) + 1/sqrt(sqr(x7 - x57) + sqr(x107 - x157) + sqr(x207 - x257)
     ) + 1/sqrt(sqr(x7 - x58) + sqr(x107 - x158) + sqr(x207 - x258)) + 1/sqrt(
     sqr(x7 - x59) + sqr(x107 - x159) + sqr(x207 - x259)) + 1/sqrt(sqr(x7 - x60
     ) + sqr(x107 - x160) + sqr(x207 - x260)) + 1/sqrt(sqr(x7 - x61) + sqr(x107
      - x161) + sqr(x207 - x261)) + 1/sqrt(sqr(x7 - x62) + sqr(x107 - x162) + 
     sqr(x207 - x262)) + 1/sqrt(sqr(x7 - x63) + sqr(x107 - x163) + sqr(x207 - 
     x263)) + 1/sqrt(sqr(x7 - x64) + sqr(x107 - x164) + sqr(x207 - x264)) + 1/
     sqrt(sqr(x7 - x65) + sqr(x107 - x165) + sqr(x207 - x265)) + 1/sqrt(sqr(x7
      - x66) + sqr(x107 - x166) + sqr(x207 - x266)) + 1/sqrt(sqr(x7 - x67) + 
     sqr(x107 - x167) + sqr(x207 - x267)) + 1/sqrt(sqr(x7 - x68) + sqr(x107 - 
     x168) + sqr(x207 - x268)) + 1/sqrt(sqr(x7 - x69) + sqr(x107 - x169) + sqr(
     x207 - x269)) + 1/sqrt(sqr(x7 - x70) + sqr(x107 - x170) + sqr(x207 - x270)
     ) + 1/sqrt(sqr(x7 - x71) + sqr(x107 - x171) + sqr(x207 - x271)) + 1/sqrt(
     sqr(x7 - x72) + sqr(x107 - x172) + sqr(x207 - x272)) + 1/sqrt(sqr(x7 - x73
     ) + sqr(x107 - x173) + sqr(x207 - x273)) + 1/sqrt(sqr(x7 - x74) + sqr(x107
      - x174) + sqr(x207 - x274)) + 1/sqrt(sqr(x7 - x75) + sqr(x107 - x175) + 
     sqr(x207 - x275)) + 1/sqrt(sqr(x7 - x76) + sqr(x107 - x176) + sqr(x207 - 
     x276)) + 1/sqrt(sqr(x7 - x77) + sqr(x107 - x177) + sqr(x207 - x277)) + 1/
     sqrt(sqr(x7 - x78) + sqr(x107 - x178) + sqr(x207 - x278)) + 1/sqrt(sqr(x7
      - x79) + sqr(x107 - x179) + sqr(x207 - x279)) + 1/sqrt(sqr(x7 - x80) + 
     sqr(x107 - x180) + sqr(x207 - x280)) + 1/sqrt(sqr(x7 - x81) + sqr(x107 - 
     x181) + sqr(x207 - x281)) + 1/sqrt(sqr(x7 - x82) + sqr(x107 - x182) + sqr(
     x207 - x282)) + 1/sqrt(sqr(x7 - x83) + sqr(x107 - x183) + sqr(x207 - x283)
     ) + 1/sqrt(sqr(x7 - x84) + sqr(x107 - x184) + sqr(x207 - x284)) + 1/sqrt(
     sqr(x7 - x85) + sqr(x107 - x185) + sqr(x207 - x285)) + 1/sqrt(sqr(x7 - x86
     ) + sqr(x107 - x186) + sqr(x207 - x286)) + 1/sqrt(sqr(x7 - x87) + sqr(x107
      - x187) + sqr(x207 - x287)) + 1/sqrt(sqr(x7 - x88) + sqr(x107 - x188) + 
     sqr(x207 - x288)) + 1/sqrt(sqr(x7 - x89) + sqr(x107 - x189) + sqr(x207 - 
     x289)) + 1/sqrt(sqr(x7 - x90) + sqr(x107 - x190) + sqr(x207 - x290)) + 1/
     sqrt(sqr(x7 - x91) + sqr(x107 - x191) + sqr(x207 - x291)) + 1/sqrt(sqr(x7
      - x92) + sqr(x107 - x192) + sqr(x207 - x292)) + 1/sqrt(sqr(x7 - x93) + 
     sqr(x107 - x193) + sqr(x207 - x293)) + 1/sqrt(sqr(x7 - x94) + sqr(x107 - 
     x194) + sqr(x207 - x294)) + 1/sqrt(sqr(x7 - x95) + sqr(x107 - x195) + sqr(
     x207 - x295)) + 1/sqrt(sqr(x7 - x96) + sqr(x107 - x196) + sqr(x207 - x296)
     ) + 1/sqrt(sqr(x7 - x97) + sqr(x107 - x197) + sqr(x207 - x297)) + 1/sqrt(
     sqr(x7 - x98) + sqr(x107 - x198) + sqr(x207 - x298)) + 1/sqrt(sqr(x7 - x99
     ) + sqr(x107 - x199) + sqr(x207 - x299)) + 1/sqrt(sqr(x7 - x100) + sqr(
     x107 - x200) + sqr(x207 - x300)) + 1/sqrt(sqr(x8 - x9) + sqr(x108 - x109)
      + sqr(x208 - x209)) + 1/sqrt(sqr(x8 - x10) + sqr(x108 - x110) + sqr(x208
      - x210)) + 1/sqrt(sqr(x8 - x11) + sqr(x108 - x111) + sqr(x208 - x211)) + 
     1/sqrt(sqr(x8 - x12) + sqr(x108 - x112) + sqr(x208 - x212)) + 1/sqrt(sqr(
     x8 - x13) + sqr(x108 - x113) + sqr(x208 - x213)) + 1/sqrt(sqr(x8 - x14) + 
     sqr(x108 - x114) + sqr(x208 - x214)) + 1/sqrt(sqr(x8 - x15) + sqr(x108 - 
     x115) + sqr(x208 - x215)) + 1/sqrt(sqr(x8 - x16) + sqr(x108 - x116) + sqr(
     x208 - x216)) + 1/sqrt(sqr(x8 - x17) + sqr(x108 - x117) + sqr(x208 - x217)
     ) + 1/sqrt(sqr(x8 - x18) + sqr(x108 - x118) + sqr(x208 - x218)) + 1/sqrt(
     sqr(x8 - x19) + sqr(x108 - x119) + sqr(x208 - x219)) + 1/sqrt(sqr(x8 - x20
     ) + sqr(x108 - x120) + sqr(x208 - x220)) + 1/sqrt(sqr(x8 - x21) + sqr(x108
      - x121) + sqr(x208 - x221)) + 1/sqrt(sqr(x8 - x22) + sqr(x108 - x122) + 
     sqr(x208 - x222)) + 1/sqrt(sqr(x8 - x23) + sqr(x108 - x123) + sqr(x208 - 
     x223)) + 1/sqrt(sqr(x8 - x24) + sqr(x108 - x124) + sqr(x208 - x224)) + 1/
     sqrt(sqr(x8 - x25) + sqr(x108 - x125) + sqr(x208 - x225)) + 1/sqrt(sqr(x8
      - x26) + sqr(x108 - x126) + sqr(x208 - x226)) + 1/sqrt(sqr(x8 - x27) + 
     sqr(x108 - x127) + sqr(x208 - x227)) + 1/sqrt(sqr(x8 - x28) + sqr(x108 - 
     x128) + sqr(x208 - x228)) + 1/sqrt(sqr(x8 - x29) + sqr(x108 - x129) + sqr(
     x208 - x229)) + 1/sqrt(sqr(x8 - x30) + sqr(x108 - x130) + sqr(x208 - x230)
     ) + 1/sqrt(sqr(x8 - x31) + sqr(x108 - x131) + sqr(x208 - x231)) + 1/sqrt(
     sqr(x8 - x32) + sqr(x108 - x132) + sqr(x208 - x232)) + 1/sqrt(sqr(x8 - x33
     ) + sqr(x108 - x133) + sqr(x208 - x233)) + 1/sqrt(sqr(x8 - x34) + sqr(x108
      - x134) + sqr(x208 - x234)) + 1/sqrt(sqr(x8 - x35) + sqr(x108 - x135) + 
     sqr(x208 - x235)) + 1/sqrt(sqr(x8 - x36) + sqr(x108 - x136) + sqr(x208 - 
     x236)) + 1/sqrt(sqr(x8 - x37) + sqr(x108 - x137) + sqr(x208 - x237)) + 1/
     sqrt(sqr(x8 - x38) + sqr(x108 - x138) + sqr(x208 - x238)) + 1/sqrt(sqr(x8
      - x39) + sqr(x108 - x139) + sqr(x208 - x239)) + 1/sqrt(sqr(x8 - x40) + 
     sqr(x108 - x140) + sqr(x208 - x240)) + 1/sqrt(sqr(x8 - x41) + sqr(x108 - 
     x141) + sqr(x208 - x241)) + 1/sqrt(sqr(x8 - x42) + sqr(x108 - x142) + sqr(
     x208 - x242)) + 1/sqrt(sqr(x8 - x43) + sqr(x108 - x143) + sqr(x208 - x243)
     ) + 1/sqrt(sqr(x8 - x44) + sqr(x108 - x144) + sqr(x208 - x244)) + 1/sqrt(
     sqr(x8 - x45) + sqr(x108 - x145) + sqr(x208 - x245)) + 1/sqrt(sqr(x8 - x46
     ) + sqr(x108 - x146) + sqr(x208 - x246)) + 1/sqrt(sqr(x8 - x47) + sqr(x108
      - x147) + sqr(x208 - x247)) + 1/sqrt(sqr(x8 - x48) + sqr(x108 - x148) + 
     sqr(x208 - x248)) + 1/sqrt(sqr(x8 - x49) + sqr(x108 - x149) + sqr(x208 - 
     x249)) + 1/sqrt(sqr(x8 - x50) + sqr(x108 - x150) + sqr(x208 - x250)) + 1/
     sqrt(sqr(x8 - x51) + sqr(x108 - x151) + sqr(x208 - x251)) + 1/sqrt(sqr(x8
      - x52) + sqr(x108 - x152) + sqr(x208 - x252)) + 1/sqrt(sqr(x8 - x53) + 
     sqr(x108 - x153) + sqr(x208 - x253)) + 1/sqrt(sqr(x8 - x54) + sqr(x108 - 
     x154) + sqr(x208 - x254)) + 1/sqrt(sqr(x8 - x55) + sqr(x108 - x155) + sqr(
     x208 - x255)) + 1/sqrt(sqr(x8 - x56) + sqr(x108 - x156) + sqr(x208 - x256)
     ) + 1/sqrt(sqr(x8 - x57) + sqr(x108 - x157) + sqr(x208 - x257)) + 1/sqrt(
     sqr(x8 - x58) + sqr(x108 - x158) + sqr(x208 - x258)) + 1/sqrt(sqr(x8 - x59
     ) + sqr(x108 - x159) + sqr(x208 - x259)) + 1/sqrt(sqr(x8 - x60) + sqr(x108
      - x160) + sqr(x208 - x260)) + 1/sqrt(sqr(x8 - x61) + sqr(x108 - x161) + 
     sqr(x208 - x261)) + 1/sqrt(sqr(x8 - x62) + sqr(x108 - x162) + sqr(x208 - 
     x262)) + 1/sqrt(sqr(x8 - x63) + sqr(x108 - x163) + sqr(x208 - x263)) + 1/
     sqrt(sqr(x8 - x64) + sqr(x108 - x164) + sqr(x208 - x264)) + 1/sqrt(sqr(x8
      - x65) + sqr(x108 - x165) + sqr(x208 - x265)) + 1/sqrt(sqr(x8 - x66) + 
     sqr(x108 - x166) + sqr(x208 - x266)) + 1/sqrt(sqr(x8 - x67) + sqr(x108 - 
     x167) + sqr(x208 - x267)) + 1/sqrt(sqr(x8 - x68) + sqr(x108 - x168) + sqr(
     x208 - x268)) + 1/sqrt(sqr(x8 - x69) + sqr(x108 - x169) + sqr(x208 - x269)
     ) + 1/sqrt(sqr(x8 - x70) + sqr(x108 - x170) + sqr(x208 - x270)) + 1/sqrt(
     sqr(x8 - x71) + sqr(x108 - x171) + sqr(x208 - x271)) + 1/sqrt(sqr(x8 - x72
     ) + sqr(x108 - x172) + sqr(x208 - x272)) + 1/sqrt(sqr(x8 - x73) + sqr(x108
      - x173) + sqr(x208 - x273)) + 1/sqrt(sqr(x8 - x74) + sqr(x108 - x174) + 
     sqr(x208 - x274)) + 1/sqrt(sqr(x8 - x75) + sqr(x108 - x175) + sqr(x208 - 
     x275)) + 1/sqrt(sqr(x8 - x76) + sqr(x108 - x176) + sqr(x208 - x276)) + 1/
     sqrt(sqr(x8 - x77) + sqr(x108 - x177) + sqr(x208 - x277)) + 1/sqrt(sqr(x8
      - x78) + sqr(x108 - x178) + sqr(x208 - x278)) + 1/sqrt(sqr(x8 - x79) + 
     sqr(x108 - x179) + sqr(x208 - x279)) + 1/sqrt(sqr(x8 - x80) + sqr(x108 - 
     x180) + sqr(x208 - x280)) + 1/sqrt(sqr(x8 - x81) + sqr(x108 - x181) + sqr(
     x208 - x281)) + 1/sqrt(sqr(x8 - x82) + sqr(x108 - x182) + sqr(x208 - x282)
     ) + 1/sqrt(sqr(x8 - x83) + sqr(x108 - x183) + sqr(x208 - x283)) + 1/sqrt(
     sqr(x8 - x84) + sqr(x108 - x184) + sqr(x208 - x284)) + 1/sqrt(sqr(x8 - x85
     ) + sqr(x108 - x185) + sqr(x208 - x285)) + 1/sqrt(sqr(x8 - x86) + sqr(x108
      - x186) + sqr(x208 - x286)) + 1/sqrt(sqr(x8 - x87) + sqr(x108 - x187) + 
     sqr(x208 - x287)) + 1/sqrt(sqr(x8 - x88) + sqr(x108 - x188) + sqr(x208 - 
     x288)) + 1/sqrt(sqr(x8 - x89) + sqr(x108 - x189) + sqr(x208 - x289)) + 1/
     sqrt(sqr(x8 - x90) + sqr(x108 - x190) + sqr(x208 - x290)) + 1/sqrt(sqr(x8
      - x91) + sqr(x108 - x191) + sqr(x208 - x291)) + 1/sqrt(sqr(x8 - x92) + 
     sqr(x108 - x192) + sqr(x208 - x292)) + 1/sqrt(sqr(x8 - x93) + sqr(x108 - 
     x193) + sqr(x208 - x293)) + 1/sqrt(sqr(x8 - x94) + sqr(x108 - x194) + sqr(
     x208 - x294)) + 1/sqrt(sqr(x8 - x95) + sqr(x108 - x195) + sqr(x208 - x295)
     ) + 1/sqrt(sqr(x8 - x96) + sqr(x108 - x196) + sqr(x208 - x296)) + 1/sqrt(
     sqr(x8 - x97) + sqr(x108 - x197) + sqr(x208 - x297)) + 1/sqrt(sqr(x8 - x98
     ) + sqr(x108 - x198) + sqr(x208 - x298)) + 1/sqrt(sqr(x8 - x99) + sqr(x108
      - x199) + sqr(x208 - x299)) + 1/sqrt(sqr(x8 - x100) + sqr(x108 - x200) + 
     sqr(x208 - x300)) + 1/sqrt(sqr(x9 - x10) + sqr(x109 - x110) + sqr(x209 - 
     x210)) + 1/sqrt(sqr(x9 - x11) + sqr(x109 - x111) + sqr(x209 - x211)) + 1/
     sqrt(sqr(x9 - x12) + sqr(x109 - x112) + sqr(x209 - x212)) + 1/sqrt(sqr(x9
      - x13) + sqr(x109 - x113) + sqr(x209 - x213)) + 1/sqrt(sqr(x9 - x14) + 
     sqr(x109 - x114) + sqr(x209 - x214)) + 1/sqrt(sqr(x9 - x15) + sqr(x109 - 
     x115) + sqr(x209 - x215)) + 1/sqrt(sqr(x9 - x16) + sqr(x109 - x116) + sqr(
     x209 - x216)) + 1/sqrt(sqr(x9 - x17) + sqr(x109 - x117) + sqr(x209 - x217)
     ) + 1/sqrt(sqr(x9 - x18) + sqr(x109 - x118) + sqr(x209 - x218)) + 1/sqrt(
     sqr(x9 - x19) + sqr(x109 - x119) + sqr(x209 - x219)) + 1/sqrt(sqr(x9 - x20
     ) + sqr(x109 - x120) + sqr(x209 - x220)) + 1/sqrt(sqr(x9 - x21) + sqr(x109
      - x121) + sqr(x209 - x221)) + 1/sqrt(sqr(x9 - x22) + sqr(x109 - x122) + 
     sqr(x209 - x222)) + 1/sqrt(sqr(x9 - x23) + sqr(x109 - x123) + sqr(x209 - 
     x223)) + 1/sqrt(sqr(x9 - x24) + sqr(x109 - x124) + sqr(x209 - x224)) + 1/
     sqrt(sqr(x9 - x25) + sqr(x109 - x125) + sqr(x209 - x225)) + 1/sqrt(sqr(x9
      - x26) + sqr(x109 - x126) + sqr(x209 - x226)) + 1/sqrt(sqr(x9 - x27) + 
     sqr(x109 - x127) + sqr(x209 - x227)) + 1/sqrt(sqr(x9 - x28) + sqr(x109 - 
     x128) + sqr(x209 - x228)) + 1/sqrt(sqr(x9 - x29) + sqr(x109 - x129) + sqr(
     x209 - x229)) + 1/sqrt(sqr(x9 - x30) + sqr(x109 - x130) + sqr(x209 - x230)
     ) + 1/sqrt(sqr(x9 - x31) + sqr(x109 - x131) + sqr(x209 - x231)) + 1/sqrt(
     sqr(x9 - x32) + sqr(x109 - x132) + sqr(x209 - x232)) + 1/sqrt(sqr(x9 - x33
     ) + sqr(x109 - x133) + sqr(x209 - x233)) + 1/sqrt(sqr(x9 - x34) + sqr(x109
      - x134) + sqr(x209 - x234)) + 1/sqrt(sqr(x9 - x35) + sqr(x109 - x135) + 
     sqr(x209 - x235)) + 1/sqrt(sqr(x9 - x36) + sqr(x109 - x136) + sqr(x209 - 
     x236)) + 1/sqrt(sqr(x9 - x37) + sqr(x109 - x137) + sqr(x209 - x237)) + 1/
     sqrt(sqr(x9 - x38) + sqr(x109 - x138) + sqr(x209 - x238)) + 1/sqrt(sqr(x9
      - x39) + sqr(x109 - x139) + sqr(x209 - x239)) + 1/sqrt(sqr(x9 - x40) + 
     sqr(x109 - x140) + sqr(x209 - x240)) + 1/sqrt(sqr(x9 - x41) + sqr(x109 - 
     x141) + sqr(x209 - x241)) + 1/sqrt(sqr(x9 - x42) + sqr(x109 - x142) + sqr(
     x209 - x242)) + 1/sqrt(sqr(x9 - x43) + sqr(x109 - x143) + sqr(x209 - x243)
     ) + 1/sqrt(sqr(x9 - x44) + sqr(x109 - x144) + sqr(x209 - x244)) + 1/sqrt(
     sqr(x9 - x45) + sqr(x109 - x145) + sqr(x209 - x245)) + 1/sqrt(sqr(x9 - x46
     ) + sqr(x109 - x146) + sqr(x209 - x246)) + 1/sqrt(sqr(x9 - x47) + sqr(x109
      - x147) + sqr(x209 - x247)) + 1/sqrt(sqr(x9 - x48) + sqr(x109 - x148) + 
     sqr(x209 - x248)) + 1/sqrt(sqr(x9 - x49) + sqr(x109 - x149) + sqr(x209 - 
     x249)) + 1/sqrt(sqr(x9 - x50) + sqr(x109 - x150) + sqr(x209 - x250)) + 1/
     sqrt(sqr(x9 - x51) + sqr(x109 - x151) + sqr(x209 - x251)) + 1/sqrt(sqr(x9
      - x52) + sqr(x109 - x152) + sqr(x209 - x252)) + 1/sqrt(sqr(x9 - x53) + 
     sqr(x109 - x153) + sqr(x209 - x253)) + 1/sqrt(sqr(x9 - x54) + sqr(x109 - 
     x154) + sqr(x209 - x254)) + 1/sqrt(sqr(x9 - x55) + sqr(x109 - x155) + sqr(
     x209 - x255)) + 1/sqrt(sqr(x9 - x56) + sqr(x109 - x156) + sqr(x209 - x256)
     ) + 1/sqrt(sqr(x9 - x57) + sqr(x109 - x157) + sqr(x209 - x257)) + 1/sqrt(
     sqr(x9 - x58) + sqr(x109 - x158) + sqr(x209 - x258)) + 1/sqrt(sqr(x9 - x59
     ) + sqr(x109 - x159) + sqr(x209 - x259)) + 1/sqrt(sqr(x9 - x60) + sqr(x109
      - x160) + sqr(x209 - x260)) + 1/sqrt(sqr(x9 - x61) + sqr(x109 - x161) + 
     sqr(x209 - x261)) + 1/sqrt(sqr(x9 - x62) + sqr(x109 - x162) + sqr(x209 - 
     x262)) + 1/sqrt(sqr(x9 - x63) + sqr(x109 - x163) + sqr(x209 - x263)) + 1/
     sqrt(sqr(x9 - x64) + sqr(x109 - x164) + sqr(x209 - x264)) + 1/sqrt(sqr(x9
      - x65) + sqr(x109 - x165) + sqr(x209 - x265)) + 1/sqrt(sqr(x9 - x66) + 
     sqr(x109 - x166) + sqr(x209 - x266)) + 1/sqrt(sqr(x9 - x67) + sqr(x109 - 
     x167) + sqr(x209 - x267)) + 1/sqrt(sqr(x9 - x68) + sqr(x109 - x168) + sqr(
     x209 - x268)) + 1/sqrt(sqr(x9 - x69) + sqr(x109 - x169) + sqr(x209 - x269)
     ) + 1/sqrt(sqr(x9 - x70) + sqr(x109 - x170) + sqr(x209 - x270)) + 1/sqrt(
     sqr(x9 - x71) + sqr(x109 - x171) + sqr(x209 - x271)) + 1/sqrt(sqr(x9 - x72
     ) + sqr(x109 - x172) + sqr(x209 - x272)) + 1/sqrt(sqr(x9 - x73) + sqr(x109
      - x173) + sqr(x209 - x273)) + 1/sqrt(sqr(x9 - x74) + sqr(x109 - x174) + 
     sqr(x209 - x274)) + 1/sqrt(sqr(x9 - x75) + sqr(x109 - x175) + sqr(x209 - 
     x275)) + 1/sqrt(sqr(x9 - x76) + sqr(x109 - x176) + sqr(x209 - x276)) + 1/
     sqrt(sqr(x9 - x77) + sqr(x109 - x177) + sqr(x209 - x277)) + 1/sqrt(sqr(x9
      - x78) + sqr(x109 - x178) + sqr(x209 - x278)) + 1/sqrt(sqr(x9 - x79) + 
     sqr(x109 - x179) + sqr(x209 - x279)) + 1/sqrt(sqr(x9 - x80) + sqr(x109 - 
     x180) + sqr(x209 - x280)) + 1/sqrt(sqr(x9 - x81) + sqr(x109 - x181) + sqr(
     x209 - x281)) + 1/sqrt(sqr(x9 - x82) + sqr(x109 - x182) + sqr(x209 - x282)
     ) + 1/sqrt(sqr(x9 - x83) + sqr(x109 - x183) + sqr(x209 - x283)) + 1/sqrt(
     sqr(x9 - x84) + sqr(x109 - x184) + sqr(x209 - x284)) + 1/sqrt(sqr(x9 - x85
     ) + sqr(x109 - x185) + sqr(x209 - x285)) + 1/sqrt(sqr(x9 - x86) + sqr(x109
      - x186) + sqr(x209 - x286)) + 1/sqrt(sqr(x9 - x87) + sqr(x109 - x187) + 
     sqr(x209 - x287)) + 1/sqrt(sqr(x9 - x88) + sqr(x109 - x188) + sqr(x209 - 
     x288)) + 1/sqrt(sqr(x9 - x89) + sqr(x109 - x189) + sqr(x209 - x289)) + 1/
     sqrt(sqr(x9 - x90) + sqr(x109 - x190) + sqr(x209 - x290)) + 1/sqrt(sqr(x9
      - x91) + sqr(x109 - x191) + sqr(x209 - x291)) + 1/sqrt(sqr(x9 - x92) + 
     sqr(x109 - x192) + sqr(x209 - x292)) + 1/sqrt(sqr(x9 - x93) + sqr(x109 - 
     x193) + sqr(x209 - x293)) + 1/sqrt(sqr(x9 - x94) + sqr(x109 - x194) + sqr(
     x209 - x294)) + 1/sqrt(sqr(x9 - x95) + sqr(x109 - x195) + sqr(x209 - x295)
     ) + 1/sqrt(sqr(x9 - x96) + sqr(x109 - x196) + sqr(x209 - x296)) + 1/sqrt(
     sqr(x9 - x97) + sqr(x109 - x197) + sqr(x209 - x297)) + 1/sqrt(sqr(x9 - x98
     ) + sqr(x109 - x198) + sqr(x209 - x298)) + 1/sqrt(sqr(x9 - x99) + sqr(x109
      - x199) + sqr(x209 - x299)) + 1/sqrt(sqr(x9 - x100) + sqr(x109 - x200) + 
     sqr(x209 - x300)) + 1/sqrt(sqr(x10 - x11) + sqr(x110 - x111) + sqr(x210 - 
     x211)) + 1/sqrt(sqr(x10 - x12) + sqr(x110 - x112) + sqr(x210 - x212)) + 1/
     sqrt(sqr(x10 - x13) + sqr(x110 - x113) + sqr(x210 - x213)) + 1/sqrt(sqr(
     x10 - x14) + sqr(x110 - x114) + sqr(x210 - x214)) + 1/sqrt(sqr(x10 - x15)
      + sqr(x110 - x115) + sqr(x210 - x215)) + 1/sqrt(sqr(x10 - x16) + sqr(x110
      - x116) + sqr(x210 - x216)) + 1/sqrt(sqr(x10 - x17) + sqr(x110 - x117) + 
     sqr(x210 - x217)) + 1/sqrt(sqr(x10 - x18) + sqr(x110 - x118) + sqr(x210 - 
     x218)) + 1/sqrt(sqr(x10 - x19) + sqr(x110 - x119) + sqr(x210 - x219)) + 1/
     sqrt(sqr(x10 - x20) + sqr(x110 - x120) + sqr(x210 - x220)) + 1/sqrt(sqr(
     x10 - x21) + sqr(x110 - x121) + sqr(x210 - x221)) + 1/sqrt(sqr(x10 - x22)
      + sqr(x110 - x122) + sqr(x210 - x222)) + 1/sqrt(sqr(x10 - x23) + sqr(x110
      - x123) + sqr(x210 - x223)) + 1/sqrt(sqr(x10 - x24) + sqr(x110 - x124) + 
     sqr(x210 - x224)) + 1/sqrt(sqr(x10 - x25) + sqr(x110 - x125) + sqr(x210 - 
     x225)) + 1/sqrt(sqr(x10 - x26) + sqr(x110 - x126) + sqr(x210 - x226)) + 1/
     sqrt(sqr(x10 - x27) + sqr(x110 - x127) + sqr(x210 - x227)) + 1/sqrt(sqr(
     x10 - x28) + sqr(x110 - x128) + sqr(x210 - x228)) + 1/sqrt(sqr(x10 - x29)
      + sqr(x110 - x129) + sqr(x210 - x229)) + 1/sqrt(sqr(x10 - x30) + sqr(x110
      - x130) + sqr(x210 - x230)) + 1/sqrt(sqr(x10 - x31) + sqr(x110 - x131) + 
     sqr(x210 - x231)) + 1/sqrt(sqr(x10 - x32) + sqr(x110 - x132) + sqr(x210 - 
     x232)) + 1/sqrt(sqr(x10 - x33) + sqr(x110 - x133) + sqr(x210 - x233)) + 1/
     sqrt(sqr(x10 - x34) + sqr(x110 - x134) + sqr(x210 - x234)) + 1/sqrt(sqr(
     x10 - x35) + sqr(x110 - x135) + sqr(x210 - x235)) + 1/sqrt(sqr(x10 - x36)
      + sqr(x110 - x136) + sqr(x210 - x236)) + 1/sqrt(sqr(x10 - x37) + sqr(x110
      - x137) + sqr(x210 - x237)) + 1/sqrt(sqr(x10 - x38) + sqr(x110 - x138) + 
     sqr(x210 - x238)) + 1/sqrt(sqr(x10 - x39) + sqr(x110 - x139) + sqr(x210 - 
     x239)) + 1/sqrt(sqr(x10 - x40) + sqr(x110 - x140) + sqr(x210 - x240)) + 1/
     sqrt(sqr(x10 - x41) + sqr(x110 - x141) + sqr(x210 - x241)) + 1/sqrt(sqr(
     x10 - x42) + sqr(x110 - x142) + sqr(x210 - x242)) + 1/sqrt(sqr(x10 - x43)
      + sqr(x110 - x143) + sqr(x210 - x243)) + 1/sqrt(sqr(x10 - x44) + sqr(x110
      - x144) + sqr(x210 - x244)) + 1/sqrt(sqr(x10 - x45) + sqr(x110 - x145) + 
     sqr(x210 - x245)) + 1/sqrt(sqr(x10 - x46) + sqr(x110 - x146) + sqr(x210 - 
     x246)) + 1/sqrt(sqr(x10 - x47) + sqr(x110 - x147) + sqr(x210 - x247)) + 1/
     sqrt(sqr(x10 - x48) + sqr(x110 - x148) + sqr(x210 - x248)) + 1/sqrt(sqr(
     x10 - x49) + sqr(x110 - x149) + sqr(x210 - x249)) + 1/sqrt(sqr(x10 - x50)
      + sqr(x110 - x150) + sqr(x210 - x250)) + 1/sqrt(sqr(x10 - x51) + sqr(x110
      - x151) + sqr(x210 - x251)) + 1/sqrt(sqr(x10 - x52) + sqr(x110 - x152) + 
     sqr(x210 - x252)) + 1/sqrt(sqr(x10 - x53) + sqr(x110 - x153) + sqr(x210 - 
     x253)) + 1/sqrt(sqr(x10 - x54) + sqr(x110 - x154) + sqr(x210 - x254)) + 1/
     sqrt(sqr(x10 - x55) + sqr(x110 - x155) + sqr(x210 - x255)) + 1/sqrt(sqr(
     x10 - x56) + sqr(x110 - x156) + sqr(x210 - x256)) + 1/sqrt(sqr(x10 - x57)
      + sqr(x110 - x157) + sqr(x210 - x257)) + 1/sqrt(sqr(x10 - x58) + sqr(x110
      - x158) + sqr(x210 - x258)) + 1/sqrt(sqr(x10 - x59) + sqr(x110 - x159) + 
     sqr(x210 - x259)) + 1/sqrt(sqr(x10 - x60) + sqr(x110 - x160) + sqr(x210 - 
     x260)) + 1/sqrt(sqr(x10 - x61) + sqr(x110 - x161) + sqr(x210 - x261)) + 1/
     sqrt(sqr(x10 - x62) + sqr(x110 - x162) + sqr(x210 - x262)) + 1/sqrt(sqr(
     x10 - x63) + sqr(x110 - x163) + sqr(x210 - x263)) + 1/sqrt(sqr(x10 - x64)
      + sqr(x110 - x164) + sqr(x210 - x264)) + 1/sqrt(sqr(x10 - x65) + sqr(x110
      - x165) + sqr(x210 - x265)) + 1/sqrt(sqr(x10 - x66) + sqr(x110 - x166) + 
     sqr(x210 - x266)) + 1/sqrt(sqr(x10 - x67) + sqr(x110 - x167) + sqr(x210 - 
     x267)) + 1/sqrt(sqr(x10 - x68) + sqr(x110 - x168) + sqr(x210 - x268)) + 1/
     sqrt(sqr(x10 - x69) + sqr(x110 - x169) + sqr(x210 - x269)) + 1/sqrt(sqr(
     x10 - x70) + sqr(x110 - x170) + sqr(x210 - x270)) + 1/sqrt(sqr(x10 - x71)
      + sqr(x110 - x171) + sqr(x210 - x271)) + 1/sqrt(sqr(x10 - x72) + sqr(x110
      - x172) + sqr(x210 - x272)) + 1/sqrt(sqr(x10 - x73) + sqr(x110 - x173) + 
     sqr(x210 - x273)) + 1/sqrt(sqr(x10 - x74) + sqr(x110 - x174) + sqr(x210 - 
     x274)) + 1/sqrt(sqr(x10 - x75) + sqr(x110 - x175) + sqr(x210 - x275)) + 1/
     sqrt(sqr(x10 - x76) + sqr(x110 - x176) + sqr(x210 - x276)) + 1/sqrt(sqr(
     x10 - x77) + sqr(x110 - x177) + sqr(x210 - x277)) + 1/sqrt(sqr(x10 - x78)
      + sqr(x110 - x178) + sqr(x210 - x278)) + 1/sqrt(sqr(x10 - x79) + sqr(x110
      - x179) + sqr(x210 - x279)) + 1/sqrt(sqr(x10 - x80) + sqr(x110 - x180) + 
     sqr(x210 - x280)) + 1/sqrt(sqr(x10 - x81) + sqr(x110 - x181) + sqr(x210 - 
     x281)) + 1/sqrt(sqr(x10 - x82) + sqr(x110 - x182) + sqr(x210 - x282)) + 1/
     sqrt(sqr(x10 - x83) + sqr(x110 - x183) + sqr(x210 - x283)) + 1/sqrt(sqr(
     x10 - x84) + sqr(x110 - x184) + sqr(x210 - x284)) + 1/sqrt(sqr(x10 - x85)
      + sqr(x110 - x185) + sqr(x210 - x285)) + 1/sqrt(sqr(x10 - x86) + sqr(x110
      - x186) + sqr(x210 - x286)) + 1/sqrt(sqr(x10 - x87) + sqr(x110 - x187) + 
     sqr(x210 - x287)) + 1/sqrt(sqr(x10 - x88) + sqr(x110 - x188) + sqr(x210 - 
     x288)) + 1/sqrt(sqr(x10 - x89) + sqr(x110 - x189) + sqr(x210 - x289)) + 1/
     sqrt(sqr(x10 - x90) + sqr(x110 - x190) + sqr(x210 - x290)) + 1/sqrt(sqr(
     x10 - x91) + sqr(x110 - x191) + sqr(x210 - x291)) + 1/sqrt(sqr(x10 - x92)
      + sqr(x110 - x192) + sqr(x210 - x292)) + 1/sqrt(sqr(x10 - x93) + sqr(x110
      - x193) + sqr(x210 - x293)) + 1/sqrt(sqr(x10 - x94) + sqr(x110 - x194) + 
     sqr(x210 - x294)) + 1/sqrt(sqr(x10 - x95) + sqr(x110 - x195) + sqr(x210 - 
     x295)) + 1/sqrt(sqr(x10 - x96) + sqr(x110 - x196) + sqr(x210 - x296)) + 1/
     sqrt(sqr(x10 - x97) + sqr(x110 - x197) + sqr(x210 - x297)) + 1/sqrt(sqr(
     x10 - x98) + sqr(x110 - x198) + sqr(x210 - x298)) + 1/sqrt(sqr(x10 - x99)
      + sqr(x110 - x199) + sqr(x210 - x299)) + 1/sqrt(sqr(x10 - x100) + sqr(
     x110 - x200) + sqr(x210 - x300)) + 1/sqrt(sqr(x11 - x12) + sqr(x111 - x112
     ) + sqr(x211 - x212)) + 1/sqrt(sqr(x11 - x13) + sqr(x111 - x113) + sqr(
     x211 - x213)) + 1/sqrt(sqr(x11 - x14) + sqr(x111 - x114) + sqr(x211 - x214
     )) + 1/sqrt(sqr(x11 - x15) + sqr(x111 - x115) + sqr(x211 - x215)) + 1/
     sqrt(sqr(x11 - x16) + sqr(x111 - x116) + sqr(x211 - x216)) + 1/sqrt(sqr(
     x11 - x17) + sqr(x111 - x117) + sqr(x211 - x217)) + 1/sqrt(sqr(x11 - x18)
      + sqr(x111 - x118) + sqr(x211 - x218)) + 1/sqrt(sqr(x11 - x19) + sqr(x111
      - x119) + sqr(x211 - x219)) + 1/sqrt(sqr(x11 - x20) + sqr(x111 - x120) + 
     sqr(x211 - x220)) + 1/sqrt(sqr(x11 - x21) + sqr(x111 - x121) + sqr(x211 - 
     x221)) + 1/sqrt(sqr(x11 - x22) + sqr(x111 - x122) + sqr(x211 - x222)) + 1/
     sqrt(sqr(x11 - x23) + sqr(x111 - x123) + sqr(x211 - x223)) + 1/sqrt(sqr(
     x11 - x24) + sqr(x111 - x124) + sqr(x211 - x224)) + 1/sqrt(sqr(x11 - x25)
      + sqr(x111 - x125) + sqr(x211 - x225)) + 1/sqrt(sqr(x11 - x26) + sqr(x111
      - x126) + sqr(x211 - x226)) + 1/sqrt(sqr(x11 - x27) + sqr(x111 - x127) + 
     sqr(x211 - x227)) + 1/sqrt(sqr(x11 - x28) + sqr(x111 - x128) + sqr(x211 - 
     x228)) + 1/sqrt(sqr(x11 - x29) + sqr(x111 - x129) + sqr(x211 - x229)) + 1/
     sqrt(sqr(x11 - x30) + sqr(x111 - x130) + sqr(x211 - x230)) + 1/sqrt(sqr(
     x11 - x31) + sqr(x111 - x131) + sqr(x211 - x231)) + 1/sqrt(sqr(x11 - x32)
      + sqr(x111 - x132) + sqr(x211 - x232)) + 1/sqrt(sqr(x11 - x33) + sqr(x111
      - x133) + sqr(x211 - x233)) + 1/sqrt(sqr(x11 - x34) + sqr(x111 - x134) + 
     sqr(x211 - x234)) + 1/sqrt(sqr(x11 - x35) + sqr(x111 - x135) + sqr(x211 - 
     x235)) + 1/sqrt(sqr(x11 - x36) + sqr(x111 - x136) + sqr(x211 - x236)) + 1/
     sqrt(sqr(x11 - x37) + sqr(x111 - x137) + sqr(x211 - x237)) + 1/sqrt(sqr(
     x11 - x38) + sqr(x111 - x138) + sqr(x211 - x238)) + 1/sqrt(sqr(x11 - x39)
      + sqr(x111 - x139) + sqr(x211 - x239)) + 1/sqrt(sqr(x11 - x40) + sqr(x111
      - x140) + sqr(x211 - x240)) + 1/sqrt(sqr(x11 - x41) + sqr(x111 - x141) + 
     sqr(x211 - x241)) + 1/sqrt(sqr(x11 - x42) + sqr(x111 - x142) + sqr(x211 - 
     x242)) + 1/sqrt(sqr(x11 - x43) + sqr(x111 - x143) + sqr(x211 - x243)) + 1/
     sqrt(sqr(x11 - x44) + sqr(x111 - x144) + sqr(x211 - x244)) + 1/sqrt(sqr(
     x11 - x45) + sqr(x111 - x145) + sqr(x211 - x245)) + 1/sqrt(sqr(x11 - x46)
      + sqr(x111 - x146) + sqr(x211 - x246)) + 1/sqrt(sqr(x11 - x47) + sqr(x111
      - x147) + sqr(x211 - x247)) + 1/sqrt(sqr(x11 - x48) + sqr(x111 - x148) + 
     sqr(x211 - x248)) + 1/sqrt(sqr(x11 - x49) + sqr(x111 - x149) + sqr(x211 - 
     x249)) + 1/sqrt(sqr(x11 - x50) + sqr(x111 - x150) + sqr(x211 - x250)) + 1/
     sqrt(sqr(x11 - x51) + sqr(x111 - x151) + sqr(x211 - x251)) + 1/sqrt(sqr(
     x11 - x52) + sqr(x111 - x152) + sqr(x211 - x252)) + 1/sqrt(sqr(x11 - x53)
      + sqr(x111 - x153) + sqr(x211 - x253)) + 1/sqrt(sqr(x11 - x54) + sqr(x111
      - x154) + sqr(x211 - x254)) + 1/sqrt(sqr(x11 - x55) + sqr(x111 - x155) + 
     sqr(x211 - x255)) + 1/sqrt(sqr(x11 - x56) + sqr(x111 - x156) + sqr(x211 - 
     x256)) + 1/sqrt(sqr(x11 - x57) + sqr(x111 - x157) + sqr(x211 - x257)) + 1/
     sqrt(sqr(x11 - x58) + sqr(x111 - x158) + sqr(x211 - x258)) + 1/sqrt(sqr(
     x11 - x59) + sqr(x111 - x159) + sqr(x211 - x259)) + 1/sqrt(sqr(x11 - x60)
      + sqr(x111 - x160) + sqr(x211 - x260)) + 1/sqrt(sqr(x11 - x61) + sqr(x111
      - x161) + sqr(x211 - x261)) + 1/sqrt(sqr(x11 - x62) + sqr(x111 - x162) + 
     sqr(x211 - x262)) + 1/sqrt(sqr(x11 - x63) + sqr(x111 - x163) + sqr(x211 - 
     x263)) + 1/sqrt(sqr(x11 - x64) + sqr(x111 - x164) + sqr(x211 - x264)) + 1/
     sqrt(sqr(x11 - x65) + sqr(x111 - x165) + sqr(x211 - x265)) + 1/sqrt(sqr(
     x11 - x66) + sqr(x111 - x166) + sqr(x211 - x266)) + 1/sqrt(sqr(x11 - x67)
      + sqr(x111 - x167) + sqr(x211 - x267)) + 1/sqrt(sqr(x11 - x68) + sqr(x111
      - x168) + sqr(x211 - x268)) + 1/sqrt(sqr(x11 - x69) + sqr(x111 - x169) + 
     sqr(x211 - x269)) + 1/sqrt(sqr(x11 - x70) + sqr(x111 - x170) + sqr(x211 - 
     x270)) + 1/sqrt(sqr(x11 - x71) + sqr(x111 - x171) + sqr(x211 - x271)) + 1/
     sqrt(sqr(x11 - x72) + sqr(x111 - x172) + sqr(x211 - x272)) + 1/sqrt(sqr(
     x11 - x73) + sqr(x111 - x173) + sqr(x211 - x273)) + 1/sqrt(sqr(x11 - x74)
      + sqr(x111 - x174) + sqr(x211 - x274)) + 1/sqrt(sqr(x11 - x75) + sqr(x111
      - x175) + sqr(x211 - x275)) + 1/sqrt(sqr(x11 - x76) + sqr(x111 - x176) + 
     sqr(x211 - x276)) + 1/sqrt(sqr(x11 - x77) + sqr(x111 - x177) + sqr(x211 - 
     x277)) + 1/sqrt(sqr(x11 - x78) + sqr(x111 - x178) + sqr(x211 - x278)) + 1/
     sqrt(sqr(x11 - x79) + sqr(x111 - x179) + sqr(x211 - x279)) + 1/sqrt(sqr(
     x11 - x80) + sqr(x111 - x180) + sqr(x211 - x280)) + 1/sqrt(sqr(x11 - x81)
      + sqr(x111 - x181) + sqr(x211 - x281)) + 1/sqrt(sqr(x11 - x82) + sqr(x111
      - x182) + sqr(x211 - x282)) + 1/sqrt(sqr(x11 - x83) + sqr(x111 - x183) + 
     sqr(x211 - x283)) + 1/sqrt(sqr(x11 - x84) + sqr(x111 - x184) + sqr(x211 - 
     x284)) + 1/sqrt(sqr(x11 - x85) + sqr(x111 - x185) + sqr(x211 - x285)) + 1/
     sqrt(sqr(x11 - x86) + sqr(x111 - x186) + sqr(x211 - x286)) + 1/sqrt(sqr(
     x11 - x87) + sqr(x111 - x187) + sqr(x211 - x287)) + 1/sqrt(sqr(x11 - x88)
      + sqr(x111 - x188) + sqr(x211 - x288)) + 1/sqrt(sqr(x11 - x89) + sqr(x111
      - x189) + sqr(x211 - x289)) + 1/sqrt(sqr(x11 - x90) + sqr(x111 - x190) + 
     sqr(x211 - x290)) + 1/sqrt(sqr(x11 - x91) + sqr(x111 - x191) + sqr(x211 - 
     x291)) + 1/sqrt(sqr(x11 - x92) + sqr(x111 - x192) + sqr(x211 - x292)) + 1/
     sqrt(sqr(x11 - x93) + sqr(x111 - x193) + sqr(x211 - x293)) + 1/sqrt(sqr(
     x11 - x94) + sqr(x111 - x194) + sqr(x211 - x294)) + 1/sqrt(sqr(x11 - x95)
      + sqr(x111 - x195) + sqr(x211 - x295)) + 1/sqrt(sqr(x11 - x96) + sqr(x111
      - x196) + sqr(x211 - x296)) + 1/sqrt(sqr(x11 - x97) + sqr(x111 - x197) + 
     sqr(x211 - x297)) + 1/sqrt(sqr(x11 - x98) + sqr(x111 - x198) + sqr(x211 - 
     x298)) + 1/sqrt(sqr(x11 - x99) + sqr(x111 - x199) + sqr(x211 - x299)) + 1/
     sqrt(sqr(x11 - x100) + sqr(x111 - x200) + sqr(x211 - x300)) + 1/sqrt(sqr(
     x12 - x13) + sqr(x112 - x113) + sqr(x212 - x213)) + 1/sqrt(sqr(x12 - x14)
      + sqr(x112 - x114) + sqr(x212 - x214)) + 1/sqrt(sqr(x12 - x15) + sqr(x112
      - x115) + sqr(x212 - x215)) + 1/sqrt(sqr(x12 - x16) + sqr(x112 - x116) + 
     sqr(x212 - x216)) + 1/sqrt(sqr(x12 - x17) + sqr(x112 - x117) + sqr(x212 - 
     x217)) + 1/sqrt(sqr(x12 - x18) + sqr(x112 - x118) + sqr(x212 - x218)) + 1/
     sqrt(sqr(x12 - x19) + sqr(x112 - x119) + sqr(x212 - x219)) + 1/sqrt(sqr(
     x12 - x20) + sqr(x112 - x120) + sqr(x212 - x220)) + 1/sqrt(sqr(x12 - x21)
      + sqr(x112 - x121) + sqr(x212 - x221)) + 1/sqrt(sqr(x12 - x22) + sqr(x112
      - x122) + sqr(x212 - x222)) + 1/sqrt(sqr(x12 - x23) + sqr(x112 - x123) + 
     sqr(x212 - x223)) + 1/sqrt(sqr(x12 - x24) + sqr(x112 - x124) + sqr(x212 - 
     x224)) + 1/sqrt(sqr(x12 - x25) + sqr(x112 - x125) + sqr(x212 - x225)) + 1/
     sqrt(sqr(x12 - x26) + sqr(x112 - x126) + sqr(x212 - x226)) + 1/sqrt(sqr(
     x12 - x27) + sqr(x112 - x127) + sqr(x212 - x227)) + 1/sqrt(sqr(x12 - x28)
      + sqr(x112 - x128) + sqr(x212 - x228)) + 1/sqrt(sqr(x12 - x29) + sqr(x112
      - x129) + sqr(x212 - x229)) + 1/sqrt(sqr(x12 - x30) + sqr(x112 - x130) + 
     sqr(x212 - x230)) + 1/sqrt(sqr(x12 - x31) + sqr(x112 - x131) + sqr(x212 - 
     x231)) + 1/sqrt(sqr(x12 - x32) + sqr(x112 - x132) + sqr(x212 - x232)) + 1/
     sqrt(sqr(x12 - x33) + sqr(x112 - x133) + sqr(x212 - x233)) + 1/sqrt(sqr(
     x12 - x34) + sqr(x112 - x134) + sqr(x212 - x234)) + 1/sqrt(sqr(x12 - x35)
      + sqr(x112 - x135) + sqr(x212 - x235)) + 1/sqrt(sqr(x12 - x36) + sqr(x112
      - x136) + sqr(x212 - x236)) + 1/sqrt(sqr(x12 - x37) + sqr(x112 - x137) + 
     sqr(x212 - x237)) + 1/sqrt(sqr(x12 - x38) + sqr(x112 - x138) + sqr(x212 - 
     x238)) + 1/sqrt(sqr(x12 - x39) + sqr(x112 - x139) + sqr(x212 - x239)) + 1/
     sqrt(sqr(x12 - x40) + sqr(x112 - x140) + sqr(x212 - x240)) + 1/sqrt(sqr(
     x12 - x41) + sqr(x112 - x141) + sqr(x212 - x241)) + 1/sqrt(sqr(x12 - x42)
      + sqr(x112 - x142) + sqr(x212 - x242)) + 1/sqrt(sqr(x12 - x43) + sqr(x112
      - x143) + sqr(x212 - x243)) + 1/sqrt(sqr(x12 - x44) + sqr(x112 - x144) + 
     sqr(x212 - x244)) + 1/sqrt(sqr(x12 - x45) + sqr(x112 - x145) + sqr(x212 - 
     x245)) + 1/sqrt(sqr(x12 - x46) + sqr(x112 - x146) + sqr(x212 - x246)) + 1/
     sqrt(sqr(x12 - x47) + sqr(x112 - x147) + sqr(x212 - x247)) + 1/sqrt(sqr(
     x12 - x48) + sqr(x112 - x148) + sqr(x212 - x248)) + 1/sqrt(sqr(x12 - x49)
      + sqr(x112 - x149) + sqr(x212 - x249)) + 1/sqrt(sqr(x12 - x50) + sqr(x112
      - x150) + sqr(x212 - x250)) + 1/sqrt(sqr(x12 - x51) + sqr(x112 - x151) + 
     sqr(x212 - x251)) + 1/sqrt(sqr(x12 - x52) + sqr(x112 - x152) + sqr(x212 - 
     x252)) + 1/sqrt(sqr(x12 - x53) + sqr(x112 - x153) + sqr(x212 - x253)) + 1/
     sqrt(sqr(x12 - x54) + sqr(x112 - x154) + sqr(x212 - x254)) + 1/sqrt(sqr(
     x12 - x55) + sqr(x112 - x155) + sqr(x212 - x255)) + 1/sqrt(sqr(x12 - x56)
      + sqr(x112 - x156) + sqr(x212 - x256)) + 1/sqrt(sqr(x12 - x57) + sqr(x112
      - x157) + sqr(x212 - x257)) + 1/sqrt(sqr(x12 - x58) + sqr(x112 - x158) + 
     sqr(x212 - x258)) + 1/sqrt(sqr(x12 - x59) + sqr(x112 - x159) + sqr(x212 - 
     x259)) + 1/sqrt(sqr(x12 - x60) + sqr(x112 - x160) + sqr(x212 - x260)) + 1/
     sqrt(sqr(x12 - x61) + sqr(x112 - x161) + sqr(x212 - x261)) + 1/sqrt(sqr(
     x12 - x62) + sqr(x112 - x162) + sqr(x212 - x262)) + 1/sqrt(sqr(x12 - x63)
      + sqr(x112 - x163) + sqr(x212 - x263)) + 1/sqrt(sqr(x12 - x64) + sqr(x112
      - x164) + sqr(x212 - x264)) + 1/sqrt(sqr(x12 - x65) + sqr(x112 - x165) + 
     sqr(x212 - x265)) + 1/sqrt(sqr(x12 - x66) + sqr(x112 - x166) + sqr(x212 - 
     x266)) + 1/sqrt(sqr(x12 - x67) + sqr(x112 - x167) + sqr(x212 - x267)) + 1/
     sqrt(sqr(x12 - x68) + sqr(x112 - x168) + sqr(x212 - x268)) + 1/sqrt(sqr(
     x12 - x69) + sqr(x112 - x169) + sqr(x212 - x269)) + 1/sqrt(sqr(x12 - x70)
      + sqr(x112 - x170) + sqr(x212 - x270)) + 1/sqrt(sqr(x12 - x71) + sqr(x112
      - x171) + sqr(x212 - x271)) + 1/sqrt(sqr(x12 - x72) + sqr(x112 - x172) + 
     sqr(x212 - x272)) + 1/sqrt(sqr(x12 - x73) + sqr(x112 - x173) + sqr(x212 - 
     x273)) + 1/sqrt(sqr(x12 - x74) + sqr(x112 - x174) + sqr(x212 - x274)) + 1/
     sqrt(sqr(x12 - x75) + sqr(x112 - x175) + sqr(x212 - x275)) + 1/sqrt(sqr(
     x12 - x76) + sqr(x112 - x176) + sqr(x212 - x276)) + 1/sqrt(sqr(x12 - x77)
      + sqr(x112 - x177) + sqr(x212 - x277)) + 1/sqrt(sqr(x12 - x78) + sqr(x112
      - x178) + sqr(x212 - x278)) + 1/sqrt(sqr(x12 - x79) + sqr(x112 - x179) + 
     sqr(x212 - x279)) + 1/sqrt(sqr(x12 - x80) + sqr(x112 - x180) + sqr(x212 - 
     x280)) + 1/sqrt(sqr(x12 - x81) + sqr(x112 - x181) + sqr(x212 - x281)) + 1/
     sqrt(sqr(x12 - x82) + sqr(x112 - x182) + sqr(x212 - x282)) + 1/sqrt(sqr(
     x12 - x83) + sqr(x112 - x183) + sqr(x212 - x283)) + 1/sqrt(sqr(x12 - x84)
      + sqr(x112 - x184) + sqr(x212 - x284)) + 1/sqrt(sqr(x12 - x85) + sqr(x112
      - x185) + sqr(x212 - x285)) + 1/sqrt(sqr(x12 - x86) + sqr(x112 - x186) + 
     sqr(x212 - x286)) + 1/sqrt(sqr(x12 - x87) + sqr(x112 - x187) + sqr(x212 - 
     x287)) + 1/sqrt(sqr(x12 - x88) + sqr(x112 - x188) + sqr(x212 - x288)) + 1/
     sqrt(sqr(x12 - x89) + sqr(x112 - x189) + sqr(x212 - x289)) + 1/sqrt(sqr(
     x12 - x90) + sqr(x112 - x190) + sqr(x212 - x290)) + 1/sqrt(sqr(x12 - x91)
      + sqr(x112 - x191) + sqr(x212 - x291)) + 1/sqrt(sqr(x12 - x92) + sqr(x112
      - x192) + sqr(x212 - x292)) + 1/sqrt(sqr(x12 - x93) + sqr(x112 - x193) + 
     sqr(x212 - x293)) + 1/sqrt(sqr(x12 - x94) + sqr(x112 - x194) + sqr(x212 - 
     x294)) + 1/sqrt(sqr(x12 - x95) + sqr(x112 - x195) + sqr(x212 - x295)) + 1/
     sqrt(sqr(x12 - x96) + sqr(x112 - x196) + sqr(x212 - x296)) + 1/sqrt(sqr(
     x12 - x97) + sqr(x112 - x197) + sqr(x212 - x297)) + 1/sqrt(sqr(x12 - x98)
      + sqr(x112 - x198) + sqr(x212 - x298)) + 1/sqrt(sqr(x12 - x99) + sqr(x112
      - x199) + sqr(x212 - x299)) + 1/sqrt(sqr(x12 - x100) + sqr(x112 - x200)
      + sqr(x212 - x300)) + 1/sqrt(sqr(x13 - x14) + sqr(x113 - x114) + sqr(x213
      - x214)) + 1/sqrt(sqr(x13 - x15) + sqr(x113 - x115) + sqr(x213 - x215))
      + 1/sqrt(sqr(x13 - x16) + sqr(x113 - x116) + sqr(x213 - x216)) + 1/sqrt(
     sqr(x13 - x17) + sqr(x113 - x117) + sqr(x213 - x217)) + 1/sqrt(sqr(x13 - 
     x18) + sqr(x113 - x118) + sqr(x213 - x218)) + 1/sqrt(sqr(x13 - x19) + sqr(
     x113 - x119) + sqr(x213 - x219)) + 1/sqrt(sqr(x13 - x20) + sqr(x113 - x120
     ) + sqr(x213 - x220)) + 1/sqrt(sqr(x13 - x21) + sqr(x113 - x121) + sqr(
     x213 - x221)) + 1/sqrt(sqr(x13 - x22) + sqr(x113 - x122) + sqr(x213 - x222
     )) + 1/sqrt(sqr(x13 - x23) + sqr(x113 - x123) + sqr(x213 - x223)) + 1/
     sqrt(sqr(x13 - x24) + sqr(x113 - x124) + sqr(x213 - x224)) + 1/sqrt(sqr(
     x13 - x25) + sqr(x113 - x125) + sqr(x213 - x225)) + 1/sqrt(sqr(x13 - x26)
      + sqr(x113 - x126) + sqr(x213 - x226)) + 1/sqrt(sqr(x13 - x27) + sqr(x113
      - x127) + sqr(x213 - x227)) + 1/sqrt(sqr(x13 - x28) + sqr(x113 - x128) + 
     sqr(x213 - x228)) + 1/sqrt(sqr(x13 - x29) + sqr(x113 - x129) + sqr(x213 - 
     x229)) + 1/sqrt(sqr(x13 - x30) + sqr(x113 - x130) + sqr(x213 - x230)) + 1/
     sqrt(sqr(x13 - x31) + sqr(x113 - x131) + sqr(x213 - x231)) + 1/sqrt(sqr(
     x13 - x32) + sqr(x113 - x132) + sqr(x213 - x232)) + 1/sqrt(sqr(x13 - x33)
      + sqr(x113 - x133) + sqr(x213 - x233)) + 1/sqrt(sqr(x13 - x34) + sqr(x113
      - x134) + sqr(x213 - x234)) + 1/sqrt(sqr(x13 - x35) + sqr(x113 - x135) + 
     sqr(x213 - x235)) + 1/sqrt(sqr(x13 - x36) + sqr(x113 - x136) + sqr(x213 - 
     x236)) + 1/sqrt(sqr(x13 - x37) + sqr(x113 - x137) + sqr(x213 - x237)) + 1/
     sqrt(sqr(x13 - x38) + sqr(x113 - x138) + sqr(x213 - x238)) + 1/sqrt(sqr(
     x13 - x39) + sqr(x113 - x139) + sqr(x213 - x239)) + 1/sqrt(sqr(x13 - x40)
      + sqr(x113 - x140) + sqr(x213 - x240)) + 1/sqrt(sqr(x13 - x41) + sqr(x113
      - x141) + sqr(x213 - x241)) + 1/sqrt(sqr(x13 - x42) + sqr(x113 - x142) + 
     sqr(x213 - x242)) + 1/sqrt(sqr(x13 - x43) + sqr(x113 - x143) + sqr(x213 - 
     x243)) + 1/sqrt(sqr(x13 - x44) + sqr(x113 - x144) + sqr(x213 - x244)) + 1/
     sqrt(sqr(x13 - x45) + sqr(x113 - x145) + sqr(x213 - x245)) + 1/sqrt(sqr(
     x13 - x46) + sqr(x113 - x146) + sqr(x213 - x246)) + 1/sqrt(sqr(x13 - x47)
      + sqr(x113 - x147) + sqr(x213 - x247)) + 1/sqrt(sqr(x13 - x48) + sqr(x113
      - x148) + sqr(x213 - x248)) + 1/sqrt(sqr(x13 - x49) + sqr(x113 - x149) + 
     sqr(x213 - x249)) + 1/sqrt(sqr(x13 - x50) + sqr(x113 - x150) + sqr(x213 - 
     x250)) + 1/sqrt(sqr(x13 - x51) + sqr(x113 - x151) + sqr(x213 - x251)) + 1/
     sqrt(sqr(x13 - x52) + sqr(x113 - x152) + sqr(x213 - x252)) + 1/sqrt(sqr(
     x13 - x53) + sqr(x113 - x153) + sqr(x213 - x253)) + 1/sqrt(sqr(x13 - x54)
      + sqr(x113 - x154) + sqr(x213 - x254)) + 1/sqrt(sqr(x13 - x55) + sqr(x113
      - x155) + sqr(x213 - x255)) + 1/sqrt(sqr(x13 - x56) + sqr(x113 - x156) + 
     sqr(x213 - x256)) + 1/sqrt(sqr(x13 - x57) + sqr(x113 - x157) + sqr(x213 - 
     x257)) + 1/sqrt(sqr(x13 - x58) + sqr(x113 - x158) + sqr(x213 - x258)) + 1/
     sqrt(sqr(x13 - x59) + sqr(x113 - x159) + sqr(x213 - x259)) + 1/sqrt(sqr(
     x13 - x60) + sqr(x113 - x160) + sqr(x213 - x260)) + 1/sqrt(sqr(x13 - x61)
      + sqr(x113 - x161) + sqr(x213 - x261)) + 1/sqrt(sqr(x13 - x62) + sqr(x113
      - x162) + sqr(x213 - x262)) + 1/sqrt(sqr(x13 - x63) + sqr(x113 - x163) + 
     sqr(x213 - x263)) + 1/sqrt(sqr(x13 - x64) + sqr(x113 - x164) + sqr(x213 - 
     x264)) + 1/sqrt(sqr(x13 - x65) + sqr(x113 - x165) + sqr(x213 - x265)) + 1/
     sqrt(sqr(x13 - x66) + sqr(x113 - x166) + sqr(x213 - x266)) + 1/sqrt(sqr(
     x13 - x67) + sqr(x113 - x167) + sqr(x213 - x267)) + 1/sqrt(sqr(x13 - x68)
      + sqr(x113 - x168) + sqr(x213 - x268)) + 1/sqrt(sqr(x13 - x69) + sqr(x113
      - x169) + sqr(x213 - x269)) + 1/sqrt(sqr(x13 - x70) + sqr(x113 - x170) + 
     sqr(x213 - x270)) + 1/sqrt(sqr(x13 - x71) + sqr(x113 - x171) + sqr(x213 - 
     x271)) + 1/sqrt(sqr(x13 - x72) + sqr(x113 - x172) + sqr(x213 - x272)) + 1/
     sqrt(sqr(x13 - x73) + sqr(x113 - x173) + sqr(x213 - x273)) + 1/sqrt(sqr(
     x13 - x74) + sqr(x113 - x174) + sqr(x213 - x274)) + 1/sqrt(sqr(x13 - x75)
      + sqr(x113 - x175) + sqr(x213 - x275)) + 1/sqrt(sqr(x13 - x76) + sqr(x113
      - x176) + sqr(x213 - x276)) + 1/sqrt(sqr(x13 - x77) + sqr(x113 - x177) + 
     sqr(x213 - x277)) + 1/sqrt(sqr(x13 - x78) + sqr(x113 - x178) + sqr(x213 - 
     x278)) + 1/sqrt(sqr(x13 - x79) + sqr(x113 - x179) + sqr(x213 - x279)) + 1/
     sqrt(sqr(x13 - x80) + sqr(x113 - x180) + sqr(x213 - x280)) + 1/sqrt(sqr(
     x13 - x81) + sqr(x113 - x181) + sqr(x213 - x281)) + 1/sqrt(sqr(x13 - x82)
      + sqr(x113 - x182) + sqr(x213 - x282)) + 1/sqrt(sqr(x13 - x83) + sqr(x113
      - x183) + sqr(x213 - x283)) + 1/sqrt(sqr(x13 - x84) + sqr(x113 - x184) + 
     sqr(x213 - x284)) + 1/sqrt(sqr(x13 - x85) + sqr(x113 - x185) + sqr(x213 - 
     x285)) + 1/sqrt(sqr(x13 - x86) + sqr(x113 - x186) + sqr(x213 - x286)) + 1/
     sqrt(sqr(x13 - x87) + sqr(x113 - x187) + sqr(x213 - x287)) + 1/sqrt(sqr(
     x13 - x88) + sqr(x113 - x188) + sqr(x213 - x288)) + 1/sqrt(sqr(x13 - x89)
      + sqr(x113 - x189) + sqr(x213 - x289)) + 1/sqrt(sqr(x13 - x90) + sqr(x113
      - x190) + sqr(x213 - x290)) + 1/sqrt(sqr(x13 - x91) + sqr(x113 - x191) + 
     sqr(x213 - x291)) + 1/sqrt(sqr(x13 - x92) + sqr(x113 - x192) + sqr(x213 - 
     x292)) + 1/sqrt(sqr(x13 - x93) + sqr(x113 - x193) + sqr(x213 - x293)) + 1/
     sqrt(sqr(x13 - x94) + sqr(x113 - x194) + sqr(x213 - x294)) + 1/sqrt(sqr(
     x13 - x95) + sqr(x113 - x195) + sqr(x213 - x295)) + 1/sqrt(sqr(x13 - x96)
      + sqr(x113 - x196) + sqr(x213 - x296)) + 1/sqrt(sqr(x13 - x97) + sqr(x113
      - x197) + sqr(x213 - x297)) + 1/sqrt(sqr(x13 - x98) + sqr(x113 - x198) + 
     sqr(x213 - x298)) + 1/sqrt(sqr(x13 - x99) + sqr(x113 - x199) + sqr(x213 - 
     x299)) + 1/sqrt(sqr(x13 - x100) + sqr(x113 - x200) + sqr(x213 - x300)) + 1
     /sqrt(sqr(x14 - x15) + sqr(x114 - x115) + sqr(x214 - x215)) + 1/sqrt(sqr(
     x14 - x16) + sqr(x114 - x116) + sqr(x214 - x216)) + 1/sqrt(sqr(x14 - x17)
      + sqr(x114 - x117) + sqr(x214 - x217)) + 1/sqrt(sqr(x14 - x18) + sqr(x114
      - x118) + sqr(x214 - x218)) + 1/sqrt(sqr(x14 - x19) + sqr(x114 - x119) + 
     sqr(x214 - x219)) + 1/sqrt(sqr(x14 - x20) + sqr(x114 - x120) + sqr(x214 - 
     x220)) + 1/sqrt(sqr(x14 - x21) + sqr(x114 - x121) + sqr(x214 - x221)) + 1/
     sqrt(sqr(x14 - x22) + sqr(x114 - x122) + sqr(x214 - x222)) + 1/sqrt(sqr(
     x14 - x23) + sqr(x114 - x123) + sqr(x214 - x223)) + 1/sqrt(sqr(x14 - x24)
      + sqr(x114 - x124) + sqr(x214 - x224)) + 1/sqrt(sqr(x14 - x25) + sqr(x114
      - x125) + sqr(x214 - x225)) + 1/sqrt(sqr(x14 - x26) + sqr(x114 - x126) + 
     sqr(x214 - x226)) + 1/sqrt(sqr(x14 - x27) + sqr(x114 - x127) + sqr(x214 - 
     x227)) + 1/sqrt(sqr(x14 - x28) + sqr(x114 - x128) + sqr(x214 - x228)) + 1/
     sqrt(sqr(x14 - x29) + sqr(x114 - x129) + sqr(x214 - x229)) + 1/sqrt(sqr(
     x14 - x30) + sqr(x114 - x130) + sqr(x214 - x230)) + 1/sqrt(sqr(x14 - x31)
      + sqr(x114 - x131) + sqr(x214 - x231)) + 1/sqrt(sqr(x14 - x32) + sqr(x114
      - x132) + sqr(x214 - x232)) + 1/sqrt(sqr(x14 - x33) + sqr(x114 - x133) + 
     sqr(x214 - x233)) + 1/sqrt(sqr(x14 - x34) + sqr(x114 - x134) + sqr(x214 - 
     x234)) + 1/sqrt(sqr(x14 - x35) + sqr(x114 - x135) + sqr(x214 - x235)) + 1/
     sqrt(sqr(x14 - x36) + sqr(x114 - x136) + sqr(x214 - x236)) + 1/sqrt(sqr(
     x14 - x37) + sqr(x114 - x137) + sqr(x214 - x237)) + 1/sqrt(sqr(x14 - x38)
      + sqr(x114 - x138) + sqr(x214 - x238)) + 1/sqrt(sqr(x14 - x39) + sqr(x114
      - x139) + sqr(x214 - x239)) + 1/sqrt(sqr(x14 - x40) + sqr(x114 - x140) + 
     sqr(x214 - x240)) + 1/sqrt(sqr(x14 - x41) + sqr(x114 - x141) + sqr(x214 - 
     x241)) + 1/sqrt(sqr(x14 - x42) + sqr(x114 - x142) + sqr(x214 - x242)) + 1/
     sqrt(sqr(x14 - x43) + sqr(x114 - x143) + sqr(x214 - x243)) + 1/sqrt(sqr(
     x14 - x44) + sqr(x114 - x144) + sqr(x214 - x244)) + 1/sqrt(sqr(x14 - x45)
      + sqr(x114 - x145) + sqr(x214 - x245)) + 1/sqrt(sqr(x14 - x46) + sqr(x114
      - x146) + sqr(x214 - x246)) + 1/sqrt(sqr(x14 - x47) + sqr(x114 - x147) + 
     sqr(x214 - x247)) + 1/sqrt(sqr(x14 - x48) + sqr(x114 - x148) + sqr(x214 - 
     x248)) + 1/sqrt(sqr(x14 - x49) + sqr(x114 - x149) + sqr(x214 - x249)) + 1/
     sqrt(sqr(x14 - x50) + sqr(x114 - x150) + sqr(x214 - x250)) + 1/sqrt(sqr(
     x14 - x51) + sqr(x114 - x151) + sqr(x214 - x251)) + 1/sqrt(sqr(x14 - x52)
      + sqr(x114 - x152) + sqr(x214 - x252)) + 1/sqrt(sqr(x14 - x53) + sqr(x114
      - x153) + sqr(x214 - x253)) + 1/sqrt(sqr(x14 - x54) + sqr(x114 - x154) + 
     sqr(x214 - x254)) + 1/sqrt(sqr(x14 - x55) + sqr(x114 - x155) + sqr(x214 - 
     x255)) + 1/sqrt(sqr(x14 - x56) + sqr(x114 - x156) + sqr(x214 - x256)) + 1/
     sqrt(sqr(x14 - x57) + sqr(x114 - x157) + sqr(x214 - x257)) + 1/sqrt(sqr(
     x14 - x58) + sqr(x114 - x158) + sqr(x214 - x258)) + 1/sqrt(sqr(x14 - x59)
      + sqr(x114 - x159) + sqr(x214 - x259)) + 1/sqrt(sqr(x14 - x60) + sqr(x114
      - x160) + sqr(x214 - x260)) + 1/sqrt(sqr(x14 - x61) + sqr(x114 - x161) + 
     sqr(x214 - x261)) + 1/sqrt(sqr(x14 - x62) + sqr(x114 - x162) + sqr(x214 - 
     x262)) + 1/sqrt(sqr(x14 - x63) + sqr(x114 - x163) + sqr(x214 - x263)) + 1/
     sqrt(sqr(x14 - x64) + sqr(x114 - x164) + sqr(x214 - x264)) + 1/sqrt(sqr(
     x14 - x65) + sqr(x114 - x165) + sqr(x214 - x265)) + 1/sqrt(sqr(x14 - x66)
      + sqr(x114 - x166) + sqr(x214 - x266)) + 1/sqrt(sqr(x14 - x67) + sqr(x114
      - x167) + sqr(x214 - x267)) + 1/sqrt(sqr(x14 - x68) + sqr(x114 - x168) + 
     sqr(x214 - x268)) + 1/sqrt(sqr(x14 - x69) + sqr(x114 - x169) + sqr(x214 - 
     x269)) + 1/sqrt(sqr(x14 - x70) + sqr(x114 - x170) + sqr(x214 - x270)) + 1/
     sqrt(sqr(x14 - x71) + sqr(x114 - x171) + sqr(x214 - x271)) + 1/sqrt(sqr(
     x14 - x72) + sqr(x114 - x172) + sqr(x214 - x272)) + 1/sqrt(sqr(x14 - x73)
      + sqr(x114 - x173) + sqr(x214 - x273)) + 1/sqrt(sqr(x14 - x74) + sqr(x114
      - x174) + sqr(x214 - x274)) + 1/sqrt(sqr(x14 - x75) + sqr(x114 - x175) + 
     sqr(x214 - x275)) + 1/sqrt(sqr(x14 - x76) + sqr(x114 - x176) + sqr(x214 - 
     x276)) + 1/sqrt(sqr(x14 - x77) + sqr(x114 - x177) + sqr(x214 - x277)) + 1/
     sqrt(sqr(x14 - x78) + sqr(x114 - x178) + sqr(x214 - x278)) + 1/sqrt(sqr(
     x14 - x79) + sqr(x114 - x179) + sqr(x214 - x279)) + 1/sqrt(sqr(x14 - x80)
      + sqr(x114 - x180) + sqr(x214 - x280)) + 1/sqrt(sqr(x14 - x81) + sqr(x114
      - x181) + sqr(x214 - x281)) + 1/sqrt(sqr(x14 - x82) + sqr(x114 - x182) + 
     sqr(x214 - x282)) + 1/sqrt(sqr(x14 - x83) + sqr(x114 - x183) + sqr(x214 - 
     x283)) + 1/sqrt(sqr(x14 - x84) + sqr(x114 - x184) + sqr(x214 - x284)) + 1/
     sqrt(sqr(x14 - x85) + sqr(x114 - x185) + sqr(x214 - x285)) + 1/sqrt(sqr(
     x14 - x86) + sqr(x114 - x186) + sqr(x214 - x286)) + 1/sqrt(sqr(x14 - x87)
      + sqr(x114 - x187) + sqr(x214 - x287)) + 1/sqrt(sqr(x14 - x88) + sqr(x114
      - x188) + sqr(x214 - x288)) + 1/sqrt(sqr(x14 - x89) + sqr(x114 - x189) + 
     sqr(x214 - x289)) + 1/sqrt(sqr(x14 - x90) + sqr(x114 - x190) + sqr(x214 - 
     x290)) + 1/sqrt(sqr(x14 - x91) + sqr(x114 - x191) + sqr(x214 - x291)) + 1/
     sqrt(sqr(x14 - x92) + sqr(x114 - x192) + sqr(x214 - x292)) + 1/sqrt(sqr(
     x14 - x93) + sqr(x114 - x193) + sqr(x214 - x293)) + 1/sqrt(sqr(x14 - x94)
      + sqr(x114 - x194) + sqr(x214 - x294)) + 1/sqrt(sqr(x14 - x95) + sqr(x114
      - x195) + sqr(x214 - x295)) + 1/sqrt(sqr(x14 - x96) + sqr(x114 - x196) + 
     sqr(x214 - x296)) + 1/sqrt(sqr(x14 - x97) + sqr(x114 - x197) + sqr(x214 - 
     x297)) + 1/sqrt(sqr(x14 - x98) + sqr(x114 - x198) + sqr(x214 - x298)) + 1/
     sqrt(sqr(x14 - x99) + sqr(x114 - x199) + sqr(x214 - x299)) + 1/sqrt(sqr(
     x14 - x100) + sqr(x114 - x200) + sqr(x214 - x300)) + 1/sqrt(sqr(x15 - x16)
      + sqr(x115 - x116) + sqr(x215 - x216)) + 1/sqrt(sqr(x15 - x17) + sqr(x115
      - x117) + sqr(x215 - x217)) + 1/sqrt(sqr(x15 - x18) + sqr(x115 - x118) + 
     sqr(x215 - x218)) + 1/sqrt(sqr(x15 - x19) + sqr(x115 - x119) + sqr(x215 - 
     x219)) + 1/sqrt(sqr(x15 - x20) + sqr(x115 - x120) + sqr(x215 - x220)) + 1/
     sqrt(sqr(x15 - x21) + sqr(x115 - x121) + sqr(x215 - x221)) + 1/sqrt(sqr(
     x15 - x22) + sqr(x115 - x122) + sqr(x215 - x222)) + 1/sqrt(sqr(x15 - x23)
      + sqr(x115 - x123) + sqr(x215 - x223)) + 1/sqrt(sqr(x15 - x24) + sqr(x115
      - x124) + sqr(x215 - x224)) + 1/sqrt(sqr(x15 - x25) + sqr(x115 - x125) + 
     sqr(x215 - x225)) + 1/sqrt(sqr(x15 - x26) + sqr(x115 - x126) + sqr(x215 - 
     x226)) + 1/sqrt(sqr(x15 - x27) + sqr(x115 - x127) + sqr(x215 - x227)) + 1/
     sqrt(sqr(x15 - x28) + sqr(x115 - x128) + sqr(x215 - x228)) + 1/sqrt(sqr(
     x15 - x29) + sqr(x115 - x129) + sqr(x215 - x229)) + 1/sqrt(sqr(x15 - x30)
      + sqr(x115 - x130) + sqr(x215 - x230)) + 1/sqrt(sqr(x15 - x31) + sqr(x115
      - x131) + sqr(x215 - x231)) + 1/sqrt(sqr(x15 - x32) + sqr(x115 - x132) + 
     sqr(x215 - x232)) + 1/sqrt(sqr(x15 - x33) + sqr(x115 - x133) + sqr(x215 - 
     x233)) + 1/sqrt(sqr(x15 - x34) + sqr(x115 - x134) + sqr(x215 - x234)) + 1/
     sqrt(sqr(x15 - x35) + sqr(x115 - x135) + sqr(x215 - x235)) + 1/sqrt(sqr(
     x15 - x36) + sqr(x115 - x136) + sqr(x215 - x236)) + 1/sqrt(sqr(x15 - x37)
      + sqr(x115 - x137) + sqr(x215 - x237)) + 1/sqrt(sqr(x15 - x38) + sqr(x115
      - x138) + sqr(x215 - x238)) + 1/sqrt(sqr(x15 - x39) + sqr(x115 - x139) + 
     sqr(x215 - x239)) + 1/sqrt(sqr(x15 - x40) + sqr(x115 - x140) + sqr(x215 - 
     x240)) + 1/sqrt(sqr(x15 - x41) + sqr(x115 - x141) + sqr(x215 - x241)) + 1/
     sqrt(sqr(x15 - x42) + sqr(x115 - x142) + sqr(x215 - x242)) + 1/sqrt(sqr(
     x15 - x43) + sqr(x115 - x143) + sqr(x215 - x243)) + 1/sqrt(sqr(x15 - x44)
      + sqr(x115 - x144) + sqr(x215 - x244)) + 1/sqrt(sqr(x15 - x45) + sqr(x115
      - x145) + sqr(x215 - x245)) + 1/sqrt(sqr(x15 - x46) + sqr(x115 - x146) + 
     sqr(x215 - x246)) + 1/sqrt(sqr(x15 - x47) + sqr(x115 - x147) + sqr(x215 - 
     x247)) + 1/sqrt(sqr(x15 - x48) + sqr(x115 - x148) + sqr(x215 - x248)) + 1/
     sqrt(sqr(x15 - x49) + sqr(x115 - x149) + sqr(x215 - x249)) + 1/sqrt(sqr(
     x15 - x50) + sqr(x115 - x150) + sqr(x215 - x250)) + 1/sqrt(sqr(x15 - x51)
      + sqr(x115 - x151) + sqr(x215 - x251)) + 1/sqrt(sqr(x15 - x52) + sqr(x115
      - x152) + sqr(x215 - x252)) + 1/sqrt(sqr(x15 - x53) + sqr(x115 - x153) + 
     sqr(x215 - x253)) + 1/sqrt(sqr(x15 - x54) + sqr(x115 - x154) + sqr(x215 - 
     x254)) + 1/sqrt(sqr(x15 - x55) + sqr(x115 - x155) + sqr(x215 - x255)) + 1/
     sqrt(sqr(x15 - x56) + sqr(x115 - x156) + sqr(x215 - x256)) + 1/sqrt(sqr(
     x15 - x57) + sqr(x115 - x157) + sqr(x215 - x257)) + 1/sqrt(sqr(x15 - x58)
      + sqr(x115 - x158) + sqr(x215 - x258)) + 1/sqrt(sqr(x15 - x59) + sqr(x115
      - x159) + sqr(x215 - x259)) + 1/sqrt(sqr(x15 - x60) + sqr(x115 - x160) + 
     sqr(x215 - x260)) + 1/sqrt(sqr(x15 - x61) + sqr(x115 - x161) + sqr(x215 - 
     x261)) + 1/sqrt(sqr(x15 - x62) + sqr(x115 - x162) + sqr(x215 - x262)) + 1/
     sqrt(sqr(x15 - x63) + sqr(x115 - x163) + sqr(x215 - x263)) + 1/sqrt(sqr(
     x15 - x64) + sqr(x115 - x164) + sqr(x215 - x264)) + 1/sqrt(sqr(x15 - x65)
      + sqr(x115 - x165) + sqr(x215 - x265)) + 1/sqrt(sqr(x15 - x66) + sqr(x115
      - x166) + sqr(x215 - x266)) + 1/sqrt(sqr(x15 - x67) + sqr(x115 - x167) + 
     sqr(x215 - x267)) + 1/sqrt(sqr(x15 - x68) + sqr(x115 - x168) + sqr(x215 - 
     x268)) + 1/sqrt(sqr(x15 - x69) + sqr(x115 - x169) + sqr(x215 - x269)) + 1/
     sqrt(sqr(x15 - x70) + sqr(x115 - x170) + sqr(x215 - x270)) + 1/sqrt(sqr(
     x15 - x71) + sqr(x115 - x171) + sqr(x215 - x271)) + 1/sqrt(sqr(x15 - x72)
      + sqr(x115 - x172) + sqr(x215 - x272)) + 1/sqrt(sqr(x15 - x73) + sqr(x115
      - x173) + sqr(x215 - x273)) + 1/sqrt(sqr(x15 - x74) + sqr(x115 - x174) + 
     sqr(x215 - x274)) + 1/sqrt(sqr(x15 - x75) + sqr(x115 - x175) + sqr(x215 - 
     x275)) + 1/sqrt(sqr(x15 - x76) + sqr(x115 - x176) + sqr(x215 - x276)) + 1/
     sqrt(sqr(x15 - x77) + sqr(x115 - x177) + sqr(x215 - x277)) + 1/sqrt(sqr(
     x15 - x78) + sqr(x115 - x178) + sqr(x215 - x278)) + 1/sqrt(sqr(x15 - x79)
      + sqr(x115 - x179) + sqr(x215 - x279)) + 1/sqrt(sqr(x15 - x80) + sqr(x115
      - x180) + sqr(x215 - x280)) + 1/sqrt(sqr(x15 - x81) + sqr(x115 - x181) + 
     sqr(x215 - x281)) + 1/sqrt(sqr(x15 - x82) + sqr(x115 - x182) + sqr(x215 - 
     x282)) + 1/sqrt(sqr(x15 - x83) + sqr(x115 - x183) + sqr(x215 - x283)) + 1/
     sqrt(sqr(x15 - x84) + sqr(x115 - x184) + sqr(x215 - x284)) + 1/sqrt(sqr(
     x15 - x85) + sqr(x115 - x185) + sqr(x215 - x285)) + 1/sqrt(sqr(x15 - x86)
      + sqr(x115 - x186) + sqr(x215 - x286)) + 1/sqrt(sqr(x15 - x87) + sqr(x115
      - x187) + sqr(x215 - x287)) + 1/sqrt(sqr(x15 - x88) + sqr(x115 - x188) + 
     sqr(x215 - x288)) + 1/sqrt(sqr(x15 - x89) + sqr(x115 - x189) + sqr(x215 - 
     x289)) + 1/sqrt(sqr(x15 - x90) + sqr(x115 - x190) + sqr(x215 - x290)) + 1/
     sqrt(sqr(x15 - x91) + sqr(x115 - x191) + sqr(x215 - x291)) + 1/sqrt(sqr(
     x15 - x92) + sqr(x115 - x192) + sqr(x215 - x292)) + 1/sqrt(sqr(x15 - x93)
      + sqr(x115 - x193) + sqr(x215 - x293)) + 1/sqrt(sqr(x15 - x94) + sqr(x115
      - x194) + sqr(x215 - x294)) + 1/sqrt(sqr(x15 - x95) + sqr(x115 - x195) + 
     sqr(x215 - x295)) + 1/sqrt(sqr(x15 - x96) + sqr(x115 - x196) + sqr(x215 - 
     x296)) + 1/sqrt(sqr(x15 - x97) + sqr(x115 - x197) + sqr(x215 - x297)) + 1/
     sqrt(sqr(x15 - x98) + sqr(x115 - x198) + sqr(x215 - x298)) + 1/sqrt(sqr(
     x15 - x99) + sqr(x115 - x199) + sqr(x215 - x299)) + 1/sqrt(sqr(x15 - x100)
      + sqr(x115 - x200) + sqr(x215 - x300)) + 1/sqrt(sqr(x16 - x17) + sqr(x116
      - x117) + sqr(x216 - x217)) + 1/sqrt(sqr(x16 - x18) + sqr(x116 - x118) + 
     sqr(x216 - x218)) + 1/sqrt(sqr(x16 - x19) + sqr(x116 - x119) + sqr(x216 - 
     x219)) + 1/sqrt(sqr(x16 - x20) + sqr(x116 - x120) + sqr(x216 - x220)) + 1/
     sqrt(sqr(x16 - x21) + sqr(x116 - x121) + sqr(x216 - x221)) + 1/sqrt(sqr(
     x16 - x22) + sqr(x116 - x122) + sqr(x216 - x222)) + 1/sqrt(sqr(x16 - x23)
      + sqr(x116 - x123) + sqr(x216 - x223)) + 1/sqrt(sqr(x16 - x24) + sqr(x116
      - x124) + sqr(x216 - x224)) + 1/sqrt(sqr(x16 - x25) + sqr(x116 - x125) + 
     sqr(x216 - x225)) + 1/sqrt(sqr(x16 - x26) + sqr(x116 - x126) + sqr(x216 - 
     x226)) + 1/sqrt(sqr(x16 - x27) + sqr(x116 - x127) + sqr(x216 - x227)) + 1/
     sqrt(sqr(x16 - x28) + sqr(x116 - x128) + sqr(x216 - x228)) + 1/sqrt(sqr(
     x16 - x29) + sqr(x116 - x129) + sqr(x216 - x229)) + 1/sqrt(sqr(x16 - x30)
      + sqr(x116 - x130) + sqr(x216 - x230)) + 1/sqrt(sqr(x16 - x31) + sqr(x116
      - x131) + sqr(x216 - x231)) + 1/sqrt(sqr(x16 - x32) + sqr(x116 - x132) + 
     sqr(x216 - x232)) + 1/sqrt(sqr(x16 - x33) + sqr(x116 - x133) + sqr(x216 - 
     x233)) + 1/sqrt(sqr(x16 - x34) + sqr(x116 - x134) + sqr(x216 - x234)) + 1/
     sqrt(sqr(x16 - x35) + sqr(x116 - x135) + sqr(x216 - x235)) + 1/sqrt(sqr(
     x16 - x36) + sqr(x116 - x136) + sqr(x216 - x236)) + 1/sqrt(sqr(x16 - x37)
      + sqr(x116 - x137) + sqr(x216 - x237)) + 1/sqrt(sqr(x16 - x38) + sqr(x116
      - x138) + sqr(x216 - x238)) + 1/sqrt(sqr(x16 - x39) + sqr(x116 - x139) + 
     sqr(x216 - x239)) + 1/sqrt(sqr(x16 - x40) + sqr(x116 - x140) + sqr(x216 - 
     x240)) + 1/sqrt(sqr(x16 - x41) + sqr(x116 - x141) + sqr(x216 - x241)) + 1/
     sqrt(sqr(x16 - x42) + sqr(x116 - x142) + sqr(x216 - x242)) + 1/sqrt(sqr(
     x16 - x43) + sqr(x116 - x143) + sqr(x216 - x243)) + 1/sqrt(sqr(x16 - x44)
      + sqr(x116 - x144) + sqr(x216 - x244)) + 1/sqrt(sqr(x16 - x45) + sqr(x116
      - x145) + sqr(x216 - x245)) + 1/sqrt(sqr(x16 - x46) + sqr(x116 - x146) + 
     sqr(x216 - x246)) + 1/sqrt(sqr(x16 - x47) + sqr(x116 - x147) + sqr(x216 - 
     x247)) + 1/sqrt(sqr(x16 - x48) + sqr(x116 - x148) + sqr(x216 - x248)) + 1/
     sqrt(sqr(x16 - x49) + sqr(x116 - x149) + sqr(x216 - x249)) + 1/sqrt(sqr(
     x16 - x50) + sqr(x116 - x150) + sqr(x216 - x250)) + 1/sqrt(sqr(x16 - x51)
      + sqr(x116 - x151) + sqr(x216 - x251)) + 1/sqrt(sqr(x16 - x52) + sqr(x116
      - x152) + sqr(x216 - x252)) + 1/sqrt(sqr(x16 - x53) + sqr(x116 - x153) + 
     sqr(x216 - x253)) + 1/sqrt(sqr(x16 - x54) + sqr(x116 - x154) + sqr(x216 - 
     x254)) + 1/sqrt(sqr(x16 - x55) + sqr(x116 - x155) + sqr(x216 - x255)) + 1/
     sqrt(sqr(x16 - x56) + sqr(x116 - x156) + sqr(x216 - x256)) + 1/sqrt(sqr(
     x16 - x57) + sqr(x116 - x157) + sqr(x216 - x257)) + 1/sqrt(sqr(x16 - x58)
      + sqr(x116 - x158) + sqr(x216 - x258)) + 1/sqrt(sqr(x16 - x59) + sqr(x116
      - x159) + sqr(x216 - x259)) + 1/sqrt(sqr(x16 - x60) + sqr(x116 - x160) + 
     sqr(x216 - x260)) + 1/sqrt(sqr(x16 - x61) + sqr(x116 - x161) + sqr(x216 - 
     x261)) + 1/sqrt(sqr(x16 - x62) + sqr(x116 - x162) + sqr(x216 - x262)) + 1/
     sqrt(sqr(x16 - x63) + sqr(x116 - x163) + sqr(x216 - x263)) + 1/sqrt(sqr(
     x16 - x64) + sqr(x116 - x164) + sqr(x216 - x264)) + 1/sqrt(sqr(x16 - x65)
      + sqr(x116 - x165) + sqr(x216 - x265)) + 1/sqrt(sqr(x16 - x66) + sqr(x116
      - x166) + sqr(x216 - x266)) + 1/sqrt(sqr(x16 - x67) + sqr(x116 - x167) + 
     sqr(x216 - x267)) + 1/sqrt(sqr(x16 - x68) + sqr(x116 - x168) + sqr(x216 - 
     x268)) + 1/sqrt(sqr(x16 - x69) + sqr(x116 - x169) + sqr(x216 - x269)) + 1/
     sqrt(sqr(x16 - x70) + sqr(x116 - x170) + sqr(x216 - x270)) + 1/sqrt(sqr(
     x16 - x71) + sqr(x116 - x171) + sqr(x216 - x271)) + 1/sqrt(sqr(x16 - x72)
      + sqr(x116 - x172) + sqr(x216 - x272)) + 1/sqrt(sqr(x16 - x73) + sqr(x116
      - x173) + sqr(x216 - x273)) + 1/sqrt(sqr(x16 - x74) + sqr(x116 - x174) + 
     sqr(x216 - x274)) + 1/sqrt(sqr(x16 - x75) + sqr(x116 - x175) + sqr(x216 - 
     x275)) + 1/sqrt(sqr(x16 - x76) + sqr(x116 - x176) + sqr(x216 - x276)) + 1/
     sqrt(sqr(x16 - x77) + sqr(x116 - x177) + sqr(x216 - x277)) + 1/sqrt(sqr(
     x16 - x78) + sqr(x116 - x178) + sqr(x216 - x278)) + 1/sqrt(sqr(x16 - x79)
      + sqr(x116 - x179) + sqr(x216 - x279)) + 1/sqrt(sqr(x16 - x80) + sqr(x116
      - x180) + sqr(x216 - x280)) + 1/sqrt(sqr(x16 - x81) + sqr(x116 - x181) + 
     sqr(x216 - x281)) + 1/sqrt(sqr(x16 - x82) + sqr(x116 - x182) + sqr(x216 - 
     x282)) + 1/sqrt(sqr(x16 - x83) + sqr(x116 - x183) + sqr(x216 - x283)) + 1/
     sqrt(sqr(x16 - x84) + sqr(x116 - x184) + sqr(x216 - x284)) + 1/sqrt(sqr(
     x16 - x85) + sqr(x116 - x185) + sqr(x216 - x285)) + 1/sqrt(sqr(x16 - x86)
      + sqr(x116 - x186) + sqr(x216 - x286)) + 1/sqrt(sqr(x16 - x87) + sqr(x116
      - x187) + sqr(x216 - x287)) + 1/sqrt(sqr(x16 - x88) + sqr(x116 - x188) + 
     sqr(x216 - x288)) + 1/sqrt(sqr(x16 - x89) + sqr(x116 - x189) + sqr(x216 - 
     x289)) + 1/sqrt(sqr(x16 - x90) + sqr(x116 - x190) + sqr(x216 - x290)) + 1/
     sqrt(sqr(x16 - x91) + sqr(x116 - x191) + sqr(x216 - x291)) + 1/sqrt(sqr(
     x16 - x92) + sqr(x116 - x192) + sqr(x216 - x292)) + 1/sqrt(sqr(x16 - x93)
      + sqr(x116 - x193) + sqr(x216 - x293)) + 1/sqrt(sqr(x16 - x94) + sqr(x116
      - x194) + sqr(x216 - x294)) + 1/sqrt(sqr(x16 - x95) + sqr(x116 - x195) + 
     sqr(x216 - x295)) + 1/sqrt(sqr(x16 - x96) + sqr(x116 - x196) + sqr(x216 - 
     x296)) + 1/sqrt(sqr(x16 - x97) + sqr(x116 - x197) + sqr(x216 - x297)) + 1/
     sqrt(sqr(x16 - x98) + sqr(x116 - x198) + sqr(x216 - x298)) + 1/sqrt(sqr(
     x16 - x99) + sqr(x116 - x199) + sqr(x216 - x299)) + 1/sqrt(sqr(x16 - x100)
      + sqr(x116 - x200) + sqr(x216 - x300)) + 1/sqrt(sqr(x17 - x18) + sqr(x117
      - x118) + sqr(x217 - x218)) + 1/sqrt(sqr(x17 - x19) + sqr(x117 - x119) + 
     sqr(x217 - x219)) + 1/sqrt(sqr(x17 - x20) + sqr(x117 - x120) + sqr(x217 - 
     x220)) + 1/sqrt(sqr(x17 - x21) + sqr(x117 - x121) + sqr(x217 - x221)) + 1/
     sqrt(sqr(x17 - x22) + sqr(x117 - x122) + sqr(x217 - x222)) + 1/sqrt(sqr(
     x17 - x23) + sqr(x117 - x123) + sqr(x217 - x223)) + 1/sqrt(sqr(x17 - x24)
      + sqr(x117 - x124) + sqr(x217 - x224)) + 1/sqrt(sqr(x17 - x25) + sqr(x117
      - x125) + sqr(x217 - x225)) + 1/sqrt(sqr(x17 - x26) + sqr(x117 - x126) + 
     sqr(x217 - x226)) + 1/sqrt(sqr(x17 - x27) + sqr(x117 - x127) + sqr(x217 - 
     x227)) + 1/sqrt(sqr(x17 - x28) + sqr(x117 - x128) + sqr(x217 - x228)) + 1/
     sqrt(sqr(x17 - x29) + sqr(x117 - x129) + sqr(x217 - x229)) + 1/sqrt(sqr(
     x17 - x30) + sqr(x117 - x130) + sqr(x217 - x230)) + 1/sqrt(sqr(x17 - x31)
      + sqr(x117 - x131) + sqr(x217 - x231)) + 1/sqrt(sqr(x17 - x32) + sqr(x117
      - x132) + sqr(x217 - x232)) + 1/sqrt(sqr(x17 - x33) + sqr(x117 - x133) + 
     sqr(x217 - x233)) + 1/sqrt(sqr(x17 - x34) + sqr(x117 - x134) + sqr(x217 - 
     x234)) + 1/sqrt(sqr(x17 - x35) + sqr(x117 - x135) + sqr(x217 - x235)) + 1/
     sqrt(sqr(x17 - x36) + sqr(x117 - x136) + sqr(x217 - x236)) + 1/sqrt(sqr(
     x17 - x37) + sqr(x117 - x137) + sqr(x217 - x237)) + 1/sqrt(sqr(x17 - x38)
      + sqr(x117 - x138) + sqr(x217 - x238)) + 1/sqrt(sqr(x17 - x39) + sqr(x117
      - x139) + sqr(x217 - x239)) + 1/sqrt(sqr(x17 - x40) + sqr(x117 - x140) + 
     sqr(x217 - x240)) + 1/sqrt(sqr(x17 - x41) + sqr(x117 - x141) + sqr(x217 - 
     x241)) + 1/sqrt(sqr(x17 - x42) + sqr(x117 - x142) + sqr(x217 - x242)) + 1/
     sqrt(sqr(x17 - x43) + sqr(x117 - x143) + sqr(x217 - x243)) + 1/sqrt(sqr(
     x17 - x44) + sqr(x117 - x144) + sqr(x217 - x244)) + 1/sqrt(sqr(x17 - x45)
      + sqr(x117 - x145) + sqr(x217 - x245)) + 1/sqrt(sqr(x17 - x46) + sqr(x117
      - x146) + sqr(x217 - x246)) + 1/sqrt(sqr(x17 - x47) + sqr(x117 - x147) + 
     sqr(x217 - x247)) + 1/sqrt(sqr(x17 - x48) + sqr(x117 - x148) + sqr(x217 - 
     x248)) + 1/sqrt(sqr(x17 - x49) + sqr(x117 - x149) + sqr(x217 - x249)) + 1/
     sqrt(sqr(x17 - x50) + sqr(x117 - x150) + sqr(x217 - x250)) + 1/sqrt(sqr(
     x17 - x51) + sqr(x117 - x151) + sqr(x217 - x251)) + 1/sqrt(sqr(x17 - x52)
      + sqr(x117 - x152) + sqr(x217 - x252)) + 1/sqrt(sqr(x17 - x53) + sqr(x117
      - x153) + sqr(x217 - x253)) + 1/sqrt(sqr(x17 - x54) + sqr(x117 - x154) + 
     sqr(x217 - x254)) + 1/sqrt(sqr(x17 - x55) + sqr(x117 - x155) + sqr(x217 - 
     x255)) + 1/sqrt(sqr(x17 - x56) + sqr(x117 - x156) + sqr(x217 - x256)) + 1/
     sqrt(sqr(x17 - x57) + sqr(x117 - x157) + sqr(x217 - x257)) + 1/sqrt(sqr(
     x17 - x58) + sqr(x117 - x158) + sqr(x217 - x258)) + 1/sqrt(sqr(x17 - x59)
      + sqr(x117 - x159) + sqr(x217 - x259)) + 1/sqrt(sqr(x17 - x60) + sqr(x117
      - x160) + sqr(x217 - x260)) + 1/sqrt(sqr(x17 - x61) + sqr(x117 - x161) + 
     sqr(x217 - x261)) + 1/sqrt(sqr(x17 - x62) + sqr(x117 - x162) + sqr(x217 - 
     x262)) + 1/sqrt(sqr(x17 - x63) + sqr(x117 - x163) + sqr(x217 - x263)) + 1/
     sqrt(sqr(x17 - x64) + sqr(x117 - x164) + sqr(x217 - x264)) + 1/sqrt(sqr(
     x17 - x65) + sqr(x117 - x165) + sqr(x217 - x265)) + 1/sqrt(sqr(x17 - x66)
      + sqr(x117 - x166) + sqr(x217 - x266)) + 1/sqrt(sqr(x17 - x67) + sqr(x117
      - x167) + sqr(x217 - x267)) + 1/sqrt(sqr(x17 - x68) + sqr(x117 - x168) + 
     sqr(x217 - x268)) + 1/sqrt(sqr(x17 - x69) + sqr(x117 - x169) + sqr(x217 - 
     x269)) + 1/sqrt(sqr(x17 - x70) + sqr(x117 - x170) + sqr(x217 - x270)) + 1/
     sqrt(sqr(x17 - x71) + sqr(x117 - x171) + sqr(x217 - x271)) + 1/sqrt(sqr(
     x17 - x72) + sqr(x117 - x172) + sqr(x217 - x272)) + 1/sqrt(sqr(x17 - x73)
      + sqr(x117 - x173) + sqr(x217 - x273)) + 1/sqrt(sqr(x17 - x74) + sqr(x117
      - x174) + sqr(x217 - x274)) + 1/sqrt(sqr(x17 - x75) + sqr(x117 - x175) + 
     sqr(x217 - x275)) + 1/sqrt(sqr(x17 - x76) + sqr(x117 - x176) + sqr(x217 - 
     x276)) + 1/sqrt(sqr(x17 - x77) + sqr(x117 - x177) + sqr(x217 - x277)) + 1/
     sqrt(sqr(x17 - x78) + sqr(x117 - x178) + sqr(x217 - x278)) + 1/sqrt(sqr(
     x17 - x79) + sqr(x117 - x179) + sqr(x217 - x279)) + 1/sqrt(sqr(x17 - x80)
      + sqr(x117 - x180) + sqr(x217 - x280)) + 1/sqrt(sqr(x17 - x81) + sqr(x117
      - x181) + sqr(x217 - x281)) + 1/sqrt(sqr(x17 - x82) + sqr(x117 - x182) + 
     sqr(x217 - x282)) + 1/sqrt(sqr(x17 - x83) + sqr(x117 - x183) + sqr(x217 - 
     x283)) + 1/sqrt(sqr(x17 - x84) + sqr(x117 - x184) + sqr(x217 - x284)) + 1/
     sqrt(sqr(x17 - x85) + sqr(x117 - x185) + sqr(x217 - x285)) + 1/sqrt(sqr(
     x17 - x86) + sqr(x117 - x186) + sqr(x217 - x286)) + 1/sqrt(sqr(x17 - x87)
      + sqr(x117 - x187) + sqr(x217 - x287)) + 1/sqrt(sqr(x17 - x88) + sqr(x117
      - x188) + sqr(x217 - x288)) + 1/sqrt(sqr(x17 - x89) + sqr(x117 - x189) + 
     sqr(x217 - x289)) + 1/sqrt(sqr(x17 - x90) + sqr(x117 - x190) + sqr(x217 - 
     x290)) + 1/sqrt(sqr(x17 - x91) + sqr(x117 - x191) + sqr(x217 - x291)) + 1/
     sqrt(sqr(x17 - x92) + sqr(x117 - x192) + sqr(x217 - x292)) + 1/sqrt(sqr(
     x17 - x93) + sqr(x117 - x193) + sqr(x217 - x293)) + 1/sqrt(sqr(x17 - x94)
      + sqr(x117 - x194) + sqr(x217 - x294)) + 1/sqrt(sqr(x17 - x95) + sqr(x117
      - x195) + sqr(x217 - x295)) + 1/sqrt(sqr(x17 - x96) + sqr(x117 - x196) + 
     sqr(x217 - x296)) + 1/sqrt(sqr(x17 - x97) + sqr(x117 - x197) + sqr(x217 - 
     x297)) + 1/sqrt(sqr(x17 - x98) + sqr(x117 - x198) + sqr(x217 - x298)) + 1/
     sqrt(sqr(x17 - x99) + sqr(x117 - x199) + sqr(x217 - x299)) + 1/sqrt(sqr(
     x17 - x100) + sqr(x117 - x200) + sqr(x217 - x300)) + 1/sqrt(sqr(x18 - x19)
      + sqr(x118 - x119) + sqr(x218 - x219)) + 1/sqrt(sqr(x18 - x20) + sqr(x118
      - x120) + sqr(x218 - x220)) + 1/sqrt(sqr(x18 - x21) + sqr(x118 - x121) + 
     sqr(x218 - x221)) + 1/sqrt(sqr(x18 - x22) + sqr(x118 - x122) + sqr(x218 - 
     x222)) + 1/sqrt(sqr(x18 - x23) + sqr(x118 - x123) + sqr(x218 - x223)) + 1/
     sqrt(sqr(x18 - x24) + sqr(x118 - x124) + sqr(x218 - x224)) + 1/sqrt(sqr(
     x18 - x25) + sqr(x118 - x125) + sqr(x218 - x225)) + 1/sqrt(sqr(x18 - x26)
      + sqr(x118 - x126) + sqr(x218 - x226)) + 1/sqrt(sqr(x18 - x27) + sqr(x118
      - x127) + sqr(x218 - x227)) + 1/sqrt(sqr(x18 - x28) + sqr(x118 - x128) + 
     sqr(x218 - x228)) + 1/sqrt(sqr(x18 - x29) + sqr(x118 - x129) + sqr(x218 - 
     x229)) + 1/sqrt(sqr(x18 - x30) + sqr(x118 - x130) + sqr(x218 - x230)) + 1/
     sqrt(sqr(x18 - x31) + sqr(x118 - x131) + sqr(x218 - x231)) + 1/sqrt(sqr(
     x18 - x32) + sqr(x118 - x132) + sqr(x218 - x232)) + 1/sqrt(sqr(x18 - x33)
      + sqr(x118 - x133) + sqr(x218 - x233)) + 1/sqrt(sqr(x18 - x34) + sqr(x118
      - x134) + sqr(x218 - x234)) + 1/sqrt(sqr(x18 - x35) + sqr(x118 - x135) + 
     sqr(x218 - x235)) + 1/sqrt(sqr(x18 - x36) + sqr(x118 - x136) + sqr(x218 - 
     x236)) + 1/sqrt(sqr(x18 - x37) + sqr(x118 - x137) + sqr(x218 - x237)) + 1/
     sqrt(sqr(x18 - x38) + sqr(x118 - x138) + sqr(x218 - x238)) + 1/sqrt(sqr(
     x18 - x39) + sqr(x118 - x139) + sqr(x218 - x239)) + 1/sqrt(sqr(x18 - x40)
      + sqr(x118 - x140) + sqr(x218 - x240)) + 1/sqrt(sqr(x18 - x41) + sqr(x118
      - x141) + sqr(x218 - x241)) + 1/sqrt(sqr(x18 - x42) + sqr(x118 - x142) + 
     sqr(x218 - x242)) + 1/sqrt(sqr(x18 - x43) + sqr(x118 - x143) + sqr(x218 - 
     x243)) + 1/sqrt(sqr(x18 - x44) + sqr(x118 - x144) + sqr(x218 - x244)) + 1/
     sqrt(sqr(x18 - x45) + sqr(x118 - x145) + sqr(x218 - x245)) + 1/sqrt(sqr(
     x18 - x46) + sqr(x118 - x146) + sqr(x218 - x246)) + 1/sqrt(sqr(x18 - x47)
      + sqr(x118 - x147) + sqr(x218 - x247)) + 1/sqrt(sqr(x18 - x48) + sqr(x118
      - x148) + sqr(x218 - x248)) + 1/sqrt(sqr(x18 - x49) + sqr(x118 - x149) + 
     sqr(x218 - x249)) + 1/sqrt(sqr(x18 - x50) + sqr(x118 - x150) + sqr(x218 - 
     x250)) + 1/sqrt(sqr(x18 - x51) + sqr(x118 - x151) + sqr(x218 - x251)) + 1/
     sqrt(sqr(x18 - x52) + sqr(x118 - x152) + sqr(x218 - x252)) + 1/sqrt(sqr(
     x18 - x53) + sqr(x118 - x153) + sqr(x218 - x253)) + 1/sqrt(sqr(x18 - x54)
      + sqr(x118 - x154) + sqr(x218 - x254)) + 1/sqrt(sqr(x18 - x55) + sqr(x118
      - x155) + sqr(x218 - x255)) + 1/sqrt(sqr(x18 - x56) + sqr(x118 - x156) + 
     sqr(x218 - x256)) + 1/sqrt(sqr(x18 - x57) + sqr(x118 - x157) + sqr(x218 - 
     x257)) + 1/sqrt(sqr(x18 - x58) + sqr(x118 - x158) + sqr(x218 - x258)) + 1/
     sqrt(sqr(x18 - x59) + sqr(x118 - x159) + sqr(x218 - x259)) + 1/sqrt(sqr(
     x18 - x60) + sqr(x118 - x160) + sqr(x218 - x260)) + 1/sqrt(sqr(x18 - x61)
      + sqr(x118 - x161) + sqr(x218 - x261)) + 1/sqrt(sqr(x18 - x62) + sqr(x118
      - x162) + sqr(x218 - x262)) + 1/sqrt(sqr(x18 - x63) + sqr(x118 - x163) + 
     sqr(x218 - x263)) + 1/sqrt(sqr(x18 - x64) + sqr(x118 - x164) + sqr(x218 - 
     x264)) + 1/sqrt(sqr(x18 - x65) + sqr(x118 - x165) + sqr(x218 - x265)) + 1/
     sqrt(sqr(x18 - x66) + sqr(x118 - x166) + sqr(x218 - x266)) + 1/sqrt(sqr(
     x18 - x67) + sqr(x118 - x167) + sqr(x218 - x267)) + 1/sqrt(sqr(x18 - x68)
      + sqr(x118 - x168) + sqr(x218 - x268)) + 1/sqrt(sqr(x18 - x69) + sqr(x118
      - x169) + sqr(x218 - x269)) + 1/sqrt(sqr(x18 - x70) + sqr(x118 - x170) + 
     sqr(x218 - x270)) + 1/sqrt(sqr(x18 - x71) + sqr(x118 - x171) + sqr(x218 - 
     x271)) + 1/sqrt(sqr(x18 - x72) + sqr(x118 - x172) + sqr(x218 - x272)) + 1/
     sqrt(sqr(x18 - x73) + sqr(x118 - x173) + sqr(x218 - x273)) + 1/sqrt(sqr(
     x18 - x74) + sqr(x118 - x174) + sqr(x218 - x274)) + 1/sqrt(sqr(x18 - x75)
      + sqr(x118 - x175) + sqr(x218 - x275)) + 1/sqrt(sqr(x18 - x76) + sqr(x118
      - x176) + sqr(x218 - x276)) + 1/sqrt(sqr(x18 - x77) + sqr(x118 - x177) + 
     sqr(x218 - x277)) + 1/sqrt(sqr(x18 - x78) + sqr(x118 - x178) + sqr(x218 - 
     x278)) + 1/sqrt(sqr(x18 - x79) + sqr(x118 - x179) + sqr(x218 - x279)) + 1/
     sqrt(sqr(x18 - x80) + sqr(x118 - x180) + sqr(x218 - x280)) + 1/sqrt(sqr(
     x18 - x81) + sqr(x118 - x181) + sqr(x218 - x281)) + 1/sqrt(sqr(x18 - x82)
      + sqr(x118 - x182) + sqr(x218 - x282)) + 1/sqrt(sqr(x18 - x83) + sqr(x118
      - x183) + sqr(x218 - x283)) + 1/sqrt(sqr(x18 - x84) + sqr(x118 - x184) + 
     sqr(x218 - x284)) + 1/sqrt(sqr(x18 - x85) + sqr(x118 - x185) + sqr(x218 - 
     x285)) + 1/sqrt(sqr(x18 - x86) + sqr(x118 - x186) + sqr(x218 - x286)) + 1/
     sqrt(sqr(x18 - x87) + sqr(x118 - x187) + sqr(x218 - x287)) + 1/sqrt(sqr(
     x18 - x88) + sqr(x118 - x188) + sqr(x218 - x288)) + 1/sqrt(sqr(x18 - x89)
      + sqr(x118 - x189) + sqr(x218 - x289)) + 1/sqrt(sqr(x18 - x90) + sqr(x118
      - x190) + sqr(x218 - x290)) + 1/sqrt(sqr(x18 - x91) + sqr(x118 - x191) + 
     sqr(x218 - x291)) + 1/sqrt(sqr(x18 - x92) + sqr(x118 - x192) + sqr(x218 - 
     x292)) + 1/sqrt(sqr(x18 - x93) + sqr(x118 - x193) + sqr(x218 - x293)) + 1/
     sqrt(sqr(x18 - x94) + sqr(x118 - x194) + sqr(x218 - x294)) + 1/sqrt(sqr(
     x18 - x95) + sqr(x118 - x195) + sqr(x218 - x295)) + 1/sqrt(sqr(x18 - x96)
      + sqr(x118 - x196) + sqr(x218 - x296)) + 1/sqrt(sqr(x18 - x97) + sqr(x118
      - x197) + sqr(x218 - x297)) + 1/sqrt(sqr(x18 - x98) + sqr(x118 - x198) + 
     sqr(x218 - x298)) + 1/sqrt(sqr(x18 - x99) + sqr(x118 - x199) + sqr(x218 - 
     x299)) + 1/sqrt(sqr(x18 - x100) + sqr(x118 - x200) + sqr(x218 - x300)) + 1
     /sqrt(sqr(x19 - x20) + sqr(x119 - x120) + sqr(x219 - x220)) + 1/sqrt(sqr(
     x19 - x21) + sqr(x119 - x121) + sqr(x219 - x221)) + 1/sqrt(sqr(x19 - x22)
      + sqr(x119 - x122) + sqr(x219 - x222)) + 1/sqrt(sqr(x19 - x23) + sqr(x119
      - x123) + sqr(x219 - x223)) + 1/sqrt(sqr(x19 - x24) + sqr(x119 - x124) + 
     sqr(x219 - x224)) + 1/sqrt(sqr(x19 - x25) + sqr(x119 - x125) + sqr(x219 - 
     x225)) + 1/sqrt(sqr(x19 - x26) + sqr(x119 - x126) + sqr(x219 - x226)) + 1/
     sqrt(sqr(x19 - x27) + sqr(x119 - x127) + sqr(x219 - x227)) + 1/sqrt(sqr(
     x19 - x28) + sqr(x119 - x128) + sqr(x219 - x228)) + 1/sqrt(sqr(x19 - x29)
      + sqr(x119 - x129) + sqr(x219 - x229)) + 1/sqrt(sqr(x19 - x30) + sqr(x119
      - x130) + sqr(x219 - x230)) + 1/sqrt(sqr(x19 - x31) + sqr(x119 - x131) + 
     sqr(x219 - x231)) + 1/sqrt(sqr(x19 - x32) + sqr(x119 - x132) + sqr(x219 - 
     x232)) + 1/sqrt(sqr(x19 - x33) + sqr(x119 - x133) + sqr(x219 - x233)) + 1/
     sqrt(sqr(x19 - x34) + sqr(x119 - x134) + sqr(x219 - x234)) + 1/sqrt(sqr(
     x19 - x35) + sqr(x119 - x135) + sqr(x219 - x235)) + 1/sqrt(sqr(x19 - x36)
      + sqr(x119 - x136) + sqr(x219 - x236)) + 1/sqrt(sqr(x19 - x37) + sqr(x119
      - x137) + sqr(x219 - x237)) + 1/sqrt(sqr(x19 - x38) + sqr(x119 - x138) + 
     sqr(x219 - x238)) + 1/sqrt(sqr(x19 - x39) + sqr(x119 - x139) + sqr(x219 - 
     x239)) + 1/sqrt(sqr(x19 - x40) + sqr(x119 - x140) + sqr(x219 - x240)) + 1/
     sqrt(sqr(x19 - x41) + sqr(x119 - x141) + sqr(x219 - x241)) + 1/sqrt(sqr(
     x19 - x42) + sqr(x119 - x142) + sqr(x219 - x242)) + 1/sqrt(sqr(x19 - x43)
      + sqr(x119 - x143) + sqr(x219 - x243)) + 1/sqrt(sqr(x19 - x44) + sqr(x119
      - x144) + sqr(x219 - x244)) + 1/sqrt(sqr(x19 - x45) + sqr(x119 - x145) + 
     sqr(x219 - x245)) + 1/sqrt(sqr(x19 - x46) + sqr(x119 - x146) + sqr(x219 - 
     x246)) + 1/sqrt(sqr(x19 - x47) + sqr(x119 - x147) + sqr(x219 - x247)) + 1/
     sqrt(sqr(x19 - x48) + sqr(x119 - x148) + sqr(x219 - x248)) + 1/sqrt(sqr(
     x19 - x49) + sqr(x119 - x149) + sqr(x219 - x249)) + 1/sqrt(sqr(x19 - x50)
      + sqr(x119 - x150) + sqr(x219 - x250)) + 1/sqrt(sqr(x19 - x51) + sqr(x119
      - x151) + sqr(x219 - x251)) + 1/sqrt(sqr(x19 - x52) + sqr(x119 - x152) + 
     sqr(x219 - x252)) + 1/sqrt(sqr(x19 - x53) + sqr(x119 - x153) + sqr(x219 - 
     x253)) + 1/sqrt(sqr(x19 - x54) + sqr(x119 - x154) + sqr(x219 - x254)) + 1/
     sqrt(sqr(x19 - x55) + sqr(x119 - x155) + sqr(x219 - x255)) + 1/sqrt(sqr(
     x19 - x56) + sqr(x119 - x156) + sqr(x219 - x256)) + 1/sqrt(sqr(x19 - x57)
      + sqr(x119 - x157) + sqr(x219 - x257)) + 1/sqrt(sqr(x19 - x58) + sqr(x119
      - x158) + sqr(x219 - x258)) + 1/sqrt(sqr(x19 - x59) + sqr(x119 - x159) + 
     sqr(x219 - x259)) + 1/sqrt(sqr(x19 - x60) + sqr(x119 - x160) + sqr(x219 - 
     x260)) + 1/sqrt(sqr(x19 - x61) + sqr(x119 - x161) + sqr(x219 - x261)) + 1/
     sqrt(sqr(x19 - x62) + sqr(x119 - x162) + sqr(x219 - x262)) + 1/sqrt(sqr(
     x19 - x63) + sqr(x119 - x163) + sqr(x219 - x263)) + 1/sqrt(sqr(x19 - x64)
      + sqr(x119 - x164) + sqr(x219 - x264)) + 1/sqrt(sqr(x19 - x65) + sqr(x119
      - x165) + sqr(x219 - x265)) + 1/sqrt(sqr(x19 - x66) + sqr(x119 - x166) + 
     sqr(x219 - x266)) + 1/sqrt(sqr(x19 - x67) + sqr(x119 - x167) + sqr(x219 - 
     x267)) + 1/sqrt(sqr(x19 - x68) + sqr(x119 - x168) + sqr(x219 - x268)) + 1/
     sqrt(sqr(x19 - x69) + sqr(x119 - x169) + sqr(x219 - x269)) + 1/sqrt(sqr(
     x19 - x70) + sqr(x119 - x170) + sqr(x219 - x270)) + 1/sqrt(sqr(x19 - x71)
      + sqr(x119 - x171) + sqr(x219 - x271)) + 1/sqrt(sqr(x19 - x72) + sqr(x119
      - x172) + sqr(x219 - x272)) + 1/sqrt(sqr(x19 - x73) + sqr(x119 - x173) + 
     sqr(x219 - x273)) + 1/sqrt(sqr(x19 - x74) + sqr(x119 - x174) + sqr(x219 - 
     x274)) + 1/sqrt(sqr(x19 - x75) + sqr(x119 - x175) + sqr(x219 - x275)) + 1/
     sqrt(sqr(x19 - x76) + sqr(x119 - x176) + sqr(x219 - x276)) + 1/sqrt(sqr(
     x19 - x77) + sqr(x119 - x177) + sqr(x219 - x277)) + 1/sqrt(sqr(x19 - x78)
      + sqr(x119 - x178) + sqr(x219 - x278)) + 1/sqrt(sqr(x19 - x79) + sqr(x119
      - x179) + sqr(x219 - x279)) + 1/sqrt(sqr(x19 - x80) + sqr(x119 - x180) + 
     sqr(x219 - x280)) + 1/sqrt(sqr(x19 - x81) + sqr(x119 - x181) + sqr(x219 - 
     x281)) + 1/sqrt(sqr(x19 - x82) + sqr(x119 - x182) + sqr(x219 - x282)) + 1/
     sqrt(sqr(x19 - x83) + sqr(x119 - x183) + sqr(x219 - x283)) + 1/sqrt(sqr(
     x19 - x84) + sqr(x119 - x184) + sqr(x219 - x284)) + 1/sqrt(sqr(x19 - x85)
      + sqr(x119 - x185) + sqr(x219 - x285)) + 1/sqrt(sqr(x19 - x86) + sqr(x119
      - x186) + sqr(x219 - x286)) + 1/sqrt(sqr(x19 - x87) + sqr(x119 - x187) + 
     sqr(x219 - x287)) + 1/sqrt(sqr(x19 - x88) + sqr(x119 - x188) + sqr(x219 - 
     x288)) + 1/sqrt(sqr(x19 - x89) + sqr(x119 - x189) + sqr(x219 - x289)) + 1/
     sqrt(sqr(x19 - x90) + sqr(x119 - x190) + sqr(x219 - x290)) + 1/sqrt(sqr(
     x19 - x91) + sqr(x119 - x191) + sqr(x219 - x291)) + 1/sqrt(sqr(x19 - x92)
      + sqr(x119 - x192) + sqr(x219 - x292)) + 1/sqrt(sqr(x19 - x93) + sqr(x119
      - x193) + sqr(x219 - x293)) + 1/sqrt(sqr(x19 - x94) + sqr(x119 - x194) + 
     sqr(x219 - x294)) + 1/sqrt(sqr(x19 - x95) + sqr(x119 - x195) + sqr(x219 - 
     x295)) + 1/sqrt(sqr(x19 - x96) + sqr(x119 - x196) + sqr(x219 - x296)) + 1/
     sqrt(sqr(x19 - x97) + sqr(x119 - x197) + sqr(x219 - x297)) + 1/sqrt(sqr(
     x19 - x98) + sqr(x119 - x198) + sqr(x219 - x298)) + 1/sqrt(sqr(x19 - x99)
      + sqr(x119 - x199) + sqr(x219 - x299)) + 1/sqrt(sqr(x19 - x100) + sqr(
     x119 - x200) + sqr(x219 - x300)) + 1/sqrt(sqr(x20 - x21) + sqr(x120 - x121
     ) + sqr(x220 - x221)) + 1/sqrt(sqr(x20 - x22) + sqr(x120 - x122) + sqr(
     x220 - x222)) + 1/sqrt(sqr(x20 - x23) + sqr(x120 - x123) + sqr(x220 - x223
     )) + 1/sqrt(sqr(x20 - x24) + sqr(x120 - x124) + sqr(x220 - x224)) + 1/
     sqrt(sqr(x20 - x25) + sqr(x120 - x125) + sqr(x220 - x225)) + 1/sqrt(sqr(
     x20 - x26) + sqr(x120 - x126) + sqr(x220 - x226)) + 1/sqrt(sqr(x20 - x27)
      + sqr(x120 - x127) + sqr(x220 - x227)) + 1/sqrt(sqr(x20 - x28) + sqr(x120
      - x128) + sqr(x220 - x228)) + 1/sqrt(sqr(x20 - x29) + sqr(x120 - x129) + 
     sqr(x220 - x229)) + 1/sqrt(sqr(x20 - x30) + sqr(x120 - x130) + sqr(x220 - 
     x230)) + 1/sqrt(sqr(x20 - x31) + sqr(x120 - x131) + sqr(x220 - x231)) + 1/
     sqrt(sqr(x20 - x32) + sqr(x120 - x132) + sqr(x220 - x232)) + 1/sqrt(sqr(
     x20 - x33) + sqr(x120 - x133) + sqr(x220 - x233)) + 1/sqrt(sqr(x20 - x34)
      + sqr(x120 - x134) + sqr(x220 - x234)) + 1/sqrt(sqr(x20 - x35) + sqr(x120
      - x135) + sqr(x220 - x235)) + 1/sqrt(sqr(x20 - x36) + sqr(x120 - x136) + 
     sqr(x220 - x236)) + 1/sqrt(sqr(x20 - x37) + sqr(x120 - x137) + sqr(x220 - 
     x237)) + 1/sqrt(sqr(x20 - x38) + sqr(x120 - x138) + sqr(x220 - x238)) + 1/
     sqrt(sqr(x20 - x39) + sqr(x120 - x139) + sqr(x220 - x239)) + 1/sqrt(sqr(
     x20 - x40) + sqr(x120 - x140) + sqr(x220 - x240)) + 1/sqrt(sqr(x20 - x41)
      + sqr(x120 - x141) + sqr(x220 - x241)) + 1/sqrt(sqr(x20 - x42) + sqr(x120
      - x142) + sqr(x220 - x242)) + 1/sqrt(sqr(x20 - x43) + sqr(x120 - x143) + 
     sqr(x220 - x243)) + 1/sqrt(sqr(x20 - x44) + sqr(x120 - x144) + sqr(x220 - 
     x244)) + 1/sqrt(sqr(x20 - x45) + sqr(x120 - x145) + sqr(x220 - x245)) + 1/
     sqrt(sqr(x20 - x46) + sqr(x120 - x146) + sqr(x220 - x246)) + 1/sqrt(sqr(
     x20 - x47) + sqr(x120 - x147) + sqr(x220 - x247)) + 1/sqrt(sqr(x20 - x48)
      + sqr(x120 - x148) + sqr(x220 - x248)) + 1/sqrt(sqr(x20 - x49) + sqr(x120
      - x149) + sqr(x220 - x249)) + 1/sqrt(sqr(x20 - x50) + sqr(x120 - x150) + 
     sqr(x220 - x250)) + 1/sqrt(sqr(x20 - x51) + sqr(x120 - x151) + sqr(x220 - 
     x251)) + 1/sqrt(sqr(x20 - x52) + sqr(x120 - x152) + sqr(x220 - x252)) + 1/
     sqrt(sqr(x20 - x53) + sqr(x120 - x153) + sqr(x220 - x253)) + 1/sqrt(sqr(
     x20 - x54) + sqr(x120 - x154) + sqr(x220 - x254)) + 1/sqrt(sqr(x20 - x55)
      + sqr(x120 - x155) + sqr(x220 - x255)) + 1/sqrt(sqr(x20 - x56) + sqr(x120
      - x156) + sqr(x220 - x256)) + 1/sqrt(sqr(x20 - x57) + sqr(x120 - x157) + 
     sqr(x220 - x257)) + 1/sqrt(sqr(x20 - x58) + sqr(x120 - x158) + sqr(x220 - 
     x258)) + 1/sqrt(sqr(x20 - x59) + sqr(x120 - x159) + sqr(x220 - x259)) + 1/
     sqrt(sqr(x20 - x60) + sqr(x120 - x160) + sqr(x220 - x260)) + 1/sqrt(sqr(
     x20 - x61) + sqr(x120 - x161) + sqr(x220 - x261)) + 1/sqrt(sqr(x20 - x62)
      + sqr(x120 - x162) + sqr(x220 - x262)) + 1/sqrt(sqr(x20 - x63) + sqr(x120
      - x163) + sqr(x220 - x263)) + 1/sqrt(sqr(x20 - x64) + sqr(x120 - x164) + 
     sqr(x220 - x264)) + 1/sqrt(sqr(x20 - x65) + sqr(x120 - x165) + sqr(x220 - 
     x265)) + 1/sqrt(sqr(x20 - x66) + sqr(x120 - x166) + sqr(x220 - x266)) + 1/
     sqrt(sqr(x20 - x67) + sqr(x120 - x167) + sqr(x220 - x267)) + 1/sqrt(sqr(
     x20 - x68) + sqr(x120 - x168) + sqr(x220 - x268)) + 1/sqrt(sqr(x20 - x69)
      + sqr(x120 - x169) + sqr(x220 - x269)) + 1/sqrt(sqr(x20 - x70) + sqr(x120
      - x170) + sqr(x220 - x270)) + 1/sqrt(sqr(x20 - x71) + sqr(x120 - x171) + 
     sqr(x220 - x271)) + 1/sqrt(sqr(x20 - x72) + sqr(x120 - x172) + sqr(x220 - 
     x272)) + 1/sqrt(sqr(x20 - x73) + sqr(x120 - x173) + sqr(x220 - x273)) + 1/
     sqrt(sqr(x20 - x74) + sqr(x120 - x174) + sqr(x220 - x274)) + 1/sqrt(sqr(
     x20 - x75) + sqr(x120 - x175) + sqr(x220 - x275)) + 1/sqrt(sqr(x20 - x76)
      + sqr(x120 - x176) + sqr(x220 - x276)) + 1/sqrt(sqr(x20 - x77) + sqr(x120
      - x177) + sqr(x220 - x277)) + 1/sqrt(sqr(x20 - x78) + sqr(x120 - x178) + 
     sqr(x220 - x278)) + 1/sqrt(sqr(x20 - x79) + sqr(x120 - x179) + sqr(x220 - 
     x279)) + 1/sqrt(sqr(x20 - x80) + sqr(x120 - x180) + sqr(x220 - x280)) + 1/
     sqrt(sqr(x20 - x81) + sqr(x120 - x181) + sqr(x220 - x281)) + 1/sqrt(sqr(
     x20 - x82) + sqr(x120 - x182) + sqr(x220 - x282)) + 1/sqrt(sqr(x20 - x83)
      + sqr(x120 - x183) + sqr(x220 - x283)) + 1/sqrt(sqr(x20 - x84) + sqr(x120
      - x184) + sqr(x220 - x284)) + 1/sqrt(sqr(x20 - x85) + sqr(x120 - x185) + 
     sqr(x220 - x285)) + 1/sqrt(sqr(x20 - x86) + sqr(x120 - x186) + sqr(x220 - 
     x286)) + 1/sqrt(sqr(x20 - x87) + sqr(x120 - x187) + sqr(x220 - x287)) + 1/
     sqrt(sqr(x20 - x88) + sqr(x120 - x188) + sqr(x220 - x288)) + 1/sqrt(sqr(
     x20 - x89) + sqr(x120 - x189) + sqr(x220 - x289)) + 1/sqrt(sqr(x20 - x90)
      + sqr(x120 - x190) + sqr(x220 - x290)) + 1/sqrt(sqr(x20 - x91) + sqr(x120
      - x191) + sqr(x220 - x291)) + 1/sqrt(sqr(x20 - x92) + sqr(x120 - x192) + 
     sqr(x220 - x292)) + 1/sqrt(sqr(x20 - x93) + sqr(x120 - x193) + sqr(x220 - 
     x293)) + 1/sqrt(sqr(x20 - x94) + sqr(x120 - x194) + sqr(x220 - x294)) + 1/
     sqrt(sqr(x20 - x95) + sqr(x120 - x195) + sqr(x220 - x295)) + 1/sqrt(sqr(
     x20 - x96) + sqr(x120 - x196) + sqr(x220 - x296)) + 1/sqrt(sqr(x20 - x97)
      + sqr(x120 - x197) + sqr(x220 - x297)) + 1/sqrt(sqr(x20 - x98) + sqr(x120
      - x198) + sqr(x220 - x298)) + 1/sqrt(sqr(x20 - x99) + sqr(x120 - x199) + 
     sqr(x220 - x299)) + 1/sqrt(sqr(x20 - x100) + sqr(x120 - x200) + sqr(x220
      - x300)) + 1/sqrt(sqr(x21 - x22) + sqr(x121 - x122) + sqr(x221 - x222))
      + 1/sqrt(sqr(x21 - x23) + sqr(x121 - x123) + sqr(x221 - x223)) + 1/sqrt(
     sqr(x21 - x24) + sqr(x121 - x124) + sqr(x221 - x224)) + 1/sqrt(sqr(x21 - 
     x25) + sqr(x121 - x125) + sqr(x221 - x225)) + 1/sqrt(sqr(x21 - x26) + sqr(
     x121 - x126) + sqr(x221 - x226)) + 1/sqrt(sqr(x21 - x27) + sqr(x121 - x127
     ) + sqr(x221 - x227)) + 1/sqrt(sqr(x21 - x28) + sqr(x121 - x128) + sqr(
     x221 - x228)) + 1/sqrt(sqr(x21 - x29) + sqr(x121 - x129) + sqr(x221 - x229
     )) + 1/sqrt(sqr(x21 - x30) + sqr(x121 - x130) + sqr(x221 - x230)) + 1/
     sqrt(sqr(x21 - x31) + sqr(x121 - x131) + sqr(x221 - x231)) + 1/sqrt(sqr(
     x21 - x32) + sqr(x121 - x132) + sqr(x221 - x232)) + 1/sqrt(sqr(x21 - x33)
      + sqr(x121 - x133) + sqr(x221 - x233)) + 1/sqrt(sqr(x21 - x34) + sqr(x121
      - x134) + sqr(x221 - x234)) + 1/sqrt(sqr(x21 - x35) + sqr(x121 - x135) + 
     sqr(x221 - x235)) + 1/sqrt(sqr(x21 - x36) + sqr(x121 - x136) + sqr(x221 - 
     x236)) + 1/sqrt(sqr(x21 - x37) + sqr(x121 - x137) + sqr(x221 - x237)) + 1/
     sqrt(sqr(x21 - x38) + sqr(x121 - x138) + sqr(x221 - x238)) + 1/sqrt(sqr(
     x21 - x39) + sqr(x121 - x139) + sqr(x221 - x239)) + 1/sqrt(sqr(x21 - x40)
      + sqr(x121 - x140) + sqr(x221 - x240)) + 1/sqrt(sqr(x21 - x41) + sqr(x121
      - x141) + sqr(x221 - x241)) + 1/sqrt(sqr(x21 - x42) + sqr(x121 - x142) + 
     sqr(x221 - x242)) + 1/sqrt(sqr(x21 - x43) + sqr(x121 - x143) + sqr(x221 - 
     x243)) + 1/sqrt(sqr(x21 - x44) + sqr(x121 - x144) + sqr(x221 - x244)) + 1/
     sqrt(sqr(x21 - x45) + sqr(x121 - x145) + sqr(x221 - x245)) + 1/sqrt(sqr(
     x21 - x46) + sqr(x121 - x146) + sqr(x221 - x246)) + 1/sqrt(sqr(x21 - x47)
      + sqr(x121 - x147) + sqr(x221 - x247)) + 1/sqrt(sqr(x21 - x48) + sqr(x121
      - x148) + sqr(x221 - x248)) + 1/sqrt(sqr(x21 - x49) + sqr(x121 - x149) + 
     sqr(x221 - x249)) + 1/sqrt(sqr(x21 - x50) + sqr(x121 - x150) + sqr(x221 - 
     x250)) + 1/sqrt(sqr(x21 - x51) + sqr(x121 - x151) + sqr(x221 - x251)) + 1/
     sqrt(sqr(x21 - x52) + sqr(x121 - x152) + sqr(x221 - x252)) + 1/sqrt(sqr(
     x21 - x53) + sqr(x121 - x153) + sqr(x221 - x253)) + 1/sqrt(sqr(x21 - x54)
      + sqr(x121 - x154) + sqr(x221 - x254)) + 1/sqrt(sqr(x21 - x55) + sqr(x121
      - x155) + sqr(x221 - x255)) + 1/sqrt(sqr(x21 - x56) + sqr(x121 - x156) + 
     sqr(x221 - x256)) + 1/sqrt(sqr(x21 - x57) + sqr(x121 - x157) + sqr(x221 - 
     x257)) + 1/sqrt(sqr(x21 - x58) + sqr(x121 - x158) + sqr(x221 - x258)) + 1/
     sqrt(sqr(x21 - x59) + sqr(x121 - x159) + sqr(x221 - x259)) + 1/sqrt(sqr(
     x21 - x60) + sqr(x121 - x160) + sqr(x221 - x260)) + 1/sqrt(sqr(x21 - x61)
      + sqr(x121 - x161) + sqr(x221 - x261)) + 1/sqrt(sqr(x21 - x62) + sqr(x121
      - x162) + sqr(x221 - x262)) + 1/sqrt(sqr(x21 - x63) + sqr(x121 - x163) + 
     sqr(x221 - x263)) + 1/sqrt(sqr(x21 - x64) + sqr(x121 - x164) + sqr(x221 - 
     x264)) + 1/sqrt(sqr(x21 - x65) + sqr(x121 - x165) + sqr(x221 - x265)) + 1/
     sqrt(sqr(x21 - x66) + sqr(x121 - x166) + sqr(x221 - x266)) + 1/sqrt(sqr(
     x21 - x67) + sqr(x121 - x167) + sqr(x221 - x267)) + 1/sqrt(sqr(x21 - x68)
      + sqr(x121 - x168) + sqr(x221 - x268)) + 1/sqrt(sqr(x21 - x69) + sqr(x121
      - x169) + sqr(x221 - x269)) + 1/sqrt(sqr(x21 - x70) + sqr(x121 - x170) + 
     sqr(x221 - x270)) + 1/sqrt(sqr(x21 - x71) + sqr(x121 - x171) + sqr(x221 - 
     x271)) + 1/sqrt(sqr(x21 - x72) + sqr(x121 - x172) + sqr(x221 - x272)) + 1/
     sqrt(sqr(x21 - x73) + sqr(x121 - x173) + sqr(x221 - x273)) + 1/sqrt(sqr(
     x21 - x74) + sqr(x121 - x174) + sqr(x221 - x274)) + 1/sqrt(sqr(x21 - x75)
      + sqr(x121 - x175) + sqr(x221 - x275)) + 1/sqrt(sqr(x21 - x76) + sqr(x121
      - x176) + sqr(x221 - x276)) + 1/sqrt(sqr(x21 - x77) + sqr(x121 - x177) + 
     sqr(x221 - x277)) + 1/sqrt(sqr(x21 - x78) + sqr(x121 - x178) + sqr(x221 - 
     x278)) + 1/sqrt(sqr(x21 - x79) + sqr(x121 - x179) + sqr(x221 - x279)) + 1/
     sqrt(sqr(x21 - x80) + sqr(x121 - x180) + sqr(x221 - x280)) + 1/sqrt(sqr(
     x21 - x81) + sqr(x121 - x181) + sqr(x221 - x281)) + 1/sqrt(sqr(x21 - x82)
      + sqr(x121 - x182) + sqr(x221 - x282)) + 1/sqrt(sqr(x21 - x83) + sqr(x121
      - x183) + sqr(x221 - x283)) + 1/sqrt(sqr(x21 - x84) + sqr(x121 - x184) + 
     sqr(x221 - x284)) + 1/sqrt(sqr(x21 - x85) + sqr(x121 - x185) + sqr(x221 - 
     x285)) + 1/sqrt(sqr(x21 - x86) + sqr(x121 - x186) + sqr(x221 - x286)) + 1/
     sqrt(sqr(x21 - x87) + sqr(x121 - x187) + sqr(x221 - x287)) + 1/sqrt(sqr(
     x21 - x88) + sqr(x121 - x188) + sqr(x221 - x288)) + 1/sqrt(sqr(x21 - x89)
      + sqr(x121 - x189) + sqr(x221 - x289)) + 1/sqrt(sqr(x21 - x90) + sqr(x121
      - x190) + sqr(x221 - x290)) + 1/sqrt(sqr(x21 - x91) + sqr(x121 - x191) + 
     sqr(x221 - x291)) + 1/sqrt(sqr(x21 - x92) + sqr(x121 - x192) + sqr(x221 - 
     x292)) + 1/sqrt(sqr(x21 - x93) + sqr(x121 - x193) + sqr(x221 - x293)) + 1/
     sqrt(sqr(x21 - x94) + sqr(x121 - x194) + sqr(x221 - x294)) + 1/sqrt(sqr(
     x21 - x95) + sqr(x121 - x195) + sqr(x221 - x295)) + 1/sqrt(sqr(x21 - x96)
      + sqr(x121 - x196) + sqr(x221 - x296)) + 1/sqrt(sqr(x21 - x97) + sqr(x121
      - x197) + sqr(x221 - x297)) + 1/sqrt(sqr(x21 - x98) + sqr(x121 - x198) + 
     sqr(x221 - x298)) + 1/sqrt(sqr(x21 - x99) + sqr(x121 - x199) + sqr(x221 - 
     x299)) + 1/sqrt(sqr(x21 - x100) + sqr(x121 - x200) + sqr(x221 - x300)) + 1
     /sqrt(sqr(x22 - x23) + sqr(x122 - x123) + sqr(x222 - x223)) + 1/sqrt(sqr(
     x22 - x24) + sqr(x122 - x124) + sqr(x222 - x224)) + 1/sqrt(sqr(x22 - x25)
      + sqr(x122 - x125) + sqr(x222 - x225)) + 1/sqrt(sqr(x22 - x26) + sqr(x122
      - x126) + sqr(x222 - x226)) + 1/sqrt(sqr(x22 - x27) + sqr(x122 - x127) + 
     sqr(x222 - x227)) + 1/sqrt(sqr(x22 - x28) + sqr(x122 - x128) + sqr(x222 - 
     x228)) + 1/sqrt(sqr(x22 - x29) + sqr(x122 - x129) + sqr(x222 - x229)) + 1/
     sqrt(sqr(x22 - x30) + sqr(x122 - x130) + sqr(x222 - x230)) + 1/sqrt(sqr(
     x22 - x31) + sqr(x122 - x131) + sqr(x222 - x231)) + 1/sqrt(sqr(x22 - x32)
      + sqr(x122 - x132) + sqr(x222 - x232)) + 1/sqrt(sqr(x22 - x33) + sqr(x122
      - x133) + sqr(x222 - x233)) + 1/sqrt(sqr(x22 - x34) + sqr(x122 - x134) + 
     sqr(x222 - x234)) + 1/sqrt(sqr(x22 - x35) + sqr(x122 - x135) + sqr(x222 - 
     x235)) + 1/sqrt(sqr(x22 - x36) + sqr(x122 - x136) + sqr(x222 - x236)) + 1/
     sqrt(sqr(x22 - x37) + sqr(x122 - x137) + sqr(x222 - x237)) + 1/sqrt(sqr(
     x22 - x38) + sqr(x122 - x138) + sqr(x222 - x238)) + 1/sqrt(sqr(x22 - x39)
      + sqr(x122 - x139) + sqr(x222 - x239)) + 1/sqrt(sqr(x22 - x40) + sqr(x122
      - x140) + sqr(x222 - x240)) + 1/sqrt(sqr(x22 - x41) + sqr(x122 - x141) + 
     sqr(x222 - x241)) + 1/sqrt(sqr(x22 - x42) + sqr(x122 - x142) + sqr(x222 - 
     x242)) + 1/sqrt(sqr(x22 - x43) + sqr(x122 - x143) + sqr(x222 - x243)) + 1/
     sqrt(sqr(x22 - x44) + sqr(x122 - x144) + sqr(x222 - x244)) + 1/sqrt(sqr(
     x22 - x45) + sqr(x122 - x145) + sqr(x222 - x245)) + 1/sqrt(sqr(x22 - x46)
      + sqr(x122 - x146) + sqr(x222 - x246)) + 1/sqrt(sqr(x22 - x47) + sqr(x122
      - x147) + sqr(x222 - x247)) + 1/sqrt(sqr(x22 - x48) + sqr(x122 - x148) + 
     sqr(x222 - x248)) + 1/sqrt(sqr(x22 - x49) + sqr(x122 - x149) + sqr(x222 - 
     x249)) + 1/sqrt(sqr(x22 - x50) + sqr(x122 - x150) + sqr(x222 - x250)) + 1/
     sqrt(sqr(x22 - x51) + sqr(x122 - x151) + sqr(x222 - x251)) + 1/sqrt(sqr(
     x22 - x52) + sqr(x122 - x152) + sqr(x222 - x252)) + 1/sqrt(sqr(x22 - x53)
      + sqr(x122 - x153) + sqr(x222 - x253)) + 1/sqrt(sqr(x22 - x54) + sqr(x122
      - x154) + sqr(x222 - x254)) + 1/sqrt(sqr(x22 - x55) + sqr(x122 - x155) + 
     sqr(x222 - x255)) + 1/sqrt(sqr(x22 - x56) + sqr(x122 - x156) + sqr(x222 - 
     x256)) + 1/sqrt(sqr(x22 - x57) + sqr(x122 - x157) + sqr(x222 - x257)) + 1/
     sqrt(sqr(x22 - x58) + sqr(x122 - x158) + sqr(x222 - x258)) + 1/sqrt(sqr(
     x22 - x59) + sqr(x122 - x159) + sqr(x222 - x259)) + 1/sqrt(sqr(x22 - x60)
      + sqr(x122 - x160) + sqr(x222 - x260)) + 1/sqrt(sqr(x22 - x61) + sqr(x122
      - x161) + sqr(x222 - x261)) + 1/sqrt(sqr(x22 - x62) + sqr(x122 - x162) + 
     sqr(x222 - x262)) + 1/sqrt(sqr(x22 - x63) + sqr(x122 - x163) + sqr(x222 - 
     x263)) + 1/sqrt(sqr(x22 - x64) + sqr(x122 - x164) + sqr(x222 - x264)) + 1/
     sqrt(sqr(x22 - x65) + sqr(x122 - x165) + sqr(x222 - x265)) + 1/sqrt(sqr(
     x22 - x66) + sqr(x122 - x166) + sqr(x222 - x266)) + 1/sqrt(sqr(x22 - x67)
      + sqr(x122 - x167) + sqr(x222 - x267)) + 1/sqrt(sqr(x22 - x68) + sqr(x122
      - x168) + sqr(x222 - x268)) + 1/sqrt(sqr(x22 - x69) + sqr(x122 - x169) + 
     sqr(x222 - x269)) + 1/sqrt(sqr(x22 - x70) + sqr(x122 - x170) + sqr(x222 - 
     x270)) + 1/sqrt(sqr(x22 - x71) + sqr(x122 - x171) + sqr(x222 - x271)) + 1/
     sqrt(sqr(x22 - x72) + sqr(x122 - x172) + sqr(x222 - x272)) + 1/sqrt(sqr(
     x22 - x73) + sqr(x122 - x173) + sqr(x222 - x273)) + 1/sqrt(sqr(x22 - x74)
      + sqr(x122 - x174) + sqr(x222 - x274)) + 1/sqrt(sqr(x22 - x75) + sqr(x122
      - x175) + sqr(x222 - x275)) + 1/sqrt(sqr(x22 - x76) + sqr(x122 - x176) + 
     sqr(x222 - x276)) + 1/sqrt(sqr(x22 - x77) + sqr(x122 - x177) + sqr(x222 - 
     x277)) + 1/sqrt(sqr(x22 - x78) + sqr(x122 - x178) + sqr(x222 - x278)) + 1/
     sqrt(sqr(x22 - x79) + sqr(x122 - x179) + sqr(x222 - x279)) + 1/sqrt(sqr(
     x22 - x80) + sqr(x122 - x180) + sqr(x222 - x280)) + 1/sqrt(sqr(x22 - x81)
      + sqr(x122 - x181) + sqr(x222 - x281)) + 1/sqrt(sqr(x22 - x82) + sqr(x122
      - x182) + sqr(x222 - x282)) + 1/sqrt(sqr(x22 - x83) + sqr(x122 - x183) + 
     sqr(x222 - x283)) + 1/sqrt(sqr(x22 - x84) + sqr(x122 - x184) + sqr(x222 - 
     x284)) + 1/sqrt(sqr(x22 - x85) + sqr(x122 - x185) + sqr(x222 - x285)) + 1/
     sqrt(sqr(x22 - x86) + sqr(x122 - x186) + sqr(x222 - x286)) + 1/sqrt(sqr(
     x22 - x87) + sqr(x122 - x187) + sqr(x222 - x287)) + 1/sqrt(sqr(x22 - x88)
      + sqr(x122 - x188) + sqr(x222 - x288)) + 1/sqrt(sqr(x22 - x89) + sqr(x122
      - x189) + sqr(x222 - x289)) + 1/sqrt(sqr(x22 - x90) + sqr(x122 - x190) + 
     sqr(x222 - x290)) + 1/sqrt(sqr(x22 - x91) + sqr(x122 - x191) + sqr(x222 - 
     x291)) + 1/sqrt(sqr(x22 - x92) + sqr(x122 - x192) + sqr(x222 - x292)) + 1/
     sqrt(sqr(x22 - x93) + sqr(x122 - x193) + sqr(x222 - x293)) + 1/sqrt(sqr(
     x22 - x94) + sqr(x122 - x194) + sqr(x222 - x294)) + 1/sqrt(sqr(x22 - x95)
      + sqr(x122 - x195) + sqr(x222 - x295)) + 1/sqrt(sqr(x22 - x96) + sqr(x122
      - x196) + sqr(x222 - x296)) + 1/sqrt(sqr(x22 - x97) + sqr(x122 - x197) + 
     sqr(x222 - x297)) + 1/sqrt(sqr(x22 - x98) + sqr(x122 - x198) + sqr(x222 - 
     x298)) + 1/sqrt(sqr(x22 - x99) + sqr(x122 - x199) + sqr(x222 - x299)) + 1/
     sqrt(sqr(x22 - x100) + sqr(x122 - x200) + sqr(x222 - x300)) + 1/sqrt(sqr(
     x23 - x24) + sqr(x123 - x124) + sqr(x223 - x224)) + 1/sqrt(sqr(x23 - x25)
      + sqr(x123 - x125) + sqr(x223 - x225)) + 1/sqrt(sqr(x23 - x26) + sqr(x123
      - x126) + sqr(x223 - x226)) + 1/sqrt(sqr(x23 - x27) + sqr(x123 - x127) + 
     sqr(x223 - x227)) + 1/sqrt(sqr(x23 - x28) + sqr(x123 - x128) + sqr(x223 - 
     x228)) + 1/sqrt(sqr(x23 - x29) + sqr(x123 - x129) + sqr(x223 - x229)) + 1/
     sqrt(sqr(x23 - x30) + sqr(x123 - x130) + sqr(x223 - x230)) + 1/sqrt(sqr(
     x23 - x31) + sqr(x123 - x131) + sqr(x223 - x231)) + 1/sqrt(sqr(x23 - x32)
      + sqr(x123 - x132) + sqr(x223 - x232)) + 1/sqrt(sqr(x23 - x33) + sqr(x123
      - x133) + sqr(x223 - x233)) + 1/sqrt(sqr(x23 - x34) + sqr(x123 - x134) + 
     sqr(x223 - x234)) + 1/sqrt(sqr(x23 - x35) + sqr(x123 - x135) + sqr(x223 - 
     x235)) + 1/sqrt(sqr(x23 - x36) + sqr(x123 - x136) + sqr(x223 - x236)) + 1/
     sqrt(sqr(x23 - x37) + sqr(x123 - x137) + sqr(x223 - x237)) + 1/sqrt(sqr(
     x23 - x38) + sqr(x123 - x138) + sqr(x223 - x238)) + 1/sqrt(sqr(x23 - x39)
      + sqr(x123 - x139) + sqr(x223 - x239)) + 1/sqrt(sqr(x23 - x40) + sqr(x123
      - x140) + sqr(x223 - x240)) + 1/sqrt(sqr(x23 - x41) + sqr(x123 - x141) + 
     sqr(x223 - x241)) + 1/sqrt(sqr(x23 - x42) + sqr(x123 - x142) + sqr(x223 - 
     x242)) + 1/sqrt(sqr(x23 - x43) + sqr(x123 - x143) + sqr(x223 - x243)) + 1/
     sqrt(sqr(x23 - x44) + sqr(x123 - x144) + sqr(x223 - x244)) + 1/sqrt(sqr(
     x23 - x45) + sqr(x123 - x145) + sqr(x223 - x245)) + 1/sqrt(sqr(x23 - x46)
      + sqr(x123 - x146) + sqr(x223 - x246)) + 1/sqrt(sqr(x23 - x47) + sqr(x123
      - x147) + sqr(x223 - x247)) + 1/sqrt(sqr(x23 - x48) + sqr(x123 - x148) + 
     sqr(x223 - x248)) + 1/sqrt(sqr(x23 - x49) + sqr(x123 - x149) + sqr(x223 - 
     x249)) + 1/sqrt(sqr(x23 - x50) + sqr(x123 - x150) + sqr(x223 - x250)) + 1/
     sqrt(sqr(x23 - x51) + sqr(x123 - x151) + sqr(x223 - x251)) + 1/sqrt(sqr(
     x23 - x52) + sqr(x123 - x152) + sqr(x223 - x252)) + 1/sqrt(sqr(x23 - x53)
      + sqr(x123 - x153) + sqr(x223 - x253)) + 1/sqrt(sqr(x23 - x54) + sqr(x123
      - x154) + sqr(x223 - x254)) + 1/sqrt(sqr(x23 - x55) + sqr(x123 - x155) + 
     sqr(x223 - x255)) + 1/sqrt(sqr(x23 - x56) + sqr(x123 - x156) + sqr(x223 - 
     x256)) + 1/sqrt(sqr(x23 - x57) + sqr(x123 - x157) + sqr(x223 - x257)) + 1/
     sqrt(sqr(x23 - x58) + sqr(x123 - x158) + sqr(x223 - x258)) + 1/sqrt(sqr(
     x23 - x59) + sqr(x123 - x159) + sqr(x223 - x259)) + 1/sqrt(sqr(x23 - x60)
      + sqr(x123 - x160) + sqr(x223 - x260)) + 1/sqrt(sqr(x23 - x61) + sqr(x123
      - x161) + sqr(x223 - x261)) + 1/sqrt(sqr(x23 - x62) + sqr(x123 - x162) + 
     sqr(x223 - x262)) + 1/sqrt(sqr(x23 - x63) + sqr(x123 - x163) + sqr(x223 - 
     x263)) + 1/sqrt(sqr(x23 - x64) + sqr(x123 - x164) + sqr(x223 - x264)) + 1/
     sqrt(sqr(x23 - x65) + sqr(x123 - x165) + sqr(x223 - x265)) + 1/sqrt(sqr(
     x23 - x66) + sqr(x123 - x166) + sqr(x223 - x266)) + 1/sqrt(sqr(x23 - x67)
      + sqr(x123 - x167) + sqr(x223 - x267)) + 1/sqrt(sqr(x23 - x68) + sqr(x123
      - x168) + sqr(x223 - x268)) + 1/sqrt(sqr(x23 - x69) + sqr(x123 - x169) + 
     sqr(x223 - x269)) + 1/sqrt(sqr(x23 - x70) + sqr(x123 - x170) + sqr(x223 - 
     x270)) + 1/sqrt(sqr(x23 - x71) + sqr(x123 - x171) + sqr(x223 - x271)) + 1/
     sqrt(sqr(x23 - x72) + sqr(x123 - x172) + sqr(x223 - x272)) + 1/sqrt(sqr(
     x23 - x73) + sqr(x123 - x173) + sqr(x223 - x273)) + 1/sqrt(sqr(x23 - x74)
      + sqr(x123 - x174) + sqr(x223 - x274)) + 1/sqrt(sqr(x23 - x75) + sqr(x123
      - x175) + sqr(x223 - x275)) + 1/sqrt(sqr(x23 - x76) + sqr(x123 - x176) + 
     sqr(x223 - x276)) + 1/sqrt(sqr(x23 - x77) + sqr(x123 - x177) + sqr(x223 - 
     x277)) + 1/sqrt(sqr(x23 - x78) + sqr(x123 - x178) + sqr(x223 - x278)) + 1/
     sqrt(sqr(x23 - x79) + sqr(x123 - x179) + sqr(x223 - x279)) + 1/sqrt(sqr(
     x23 - x80) + sqr(x123 - x180) + sqr(x223 - x280)) + 1/sqrt(sqr(x23 - x81)
      + sqr(x123 - x181) + sqr(x223 - x281)) + 1/sqrt(sqr(x23 - x82) + sqr(x123
      - x182) + sqr(x223 - x282)) + 1/sqrt(sqr(x23 - x83) + sqr(x123 - x183) + 
     sqr(x223 - x283)) + 1/sqrt(sqr(x23 - x84) + sqr(x123 - x184) + sqr(x223 - 
     x284)) + 1/sqrt(sqr(x23 - x85) + sqr(x123 - x185) + sqr(x223 - x285)) + 1/
     sqrt(sqr(x23 - x86) + sqr(x123 - x186) + sqr(x223 - x286)) + 1/sqrt(sqr(
     x23 - x87) + sqr(x123 - x187) + sqr(x223 - x287)) + 1/sqrt(sqr(x23 - x88)
      + sqr(x123 - x188) + sqr(x223 - x288)) + 1/sqrt(sqr(x23 - x89) + sqr(x123
      - x189) + sqr(x223 - x289)) + 1/sqrt(sqr(x23 - x90) + sqr(x123 - x190) + 
     sqr(x223 - x290)) + 1/sqrt(sqr(x23 - x91) + sqr(x123 - x191) + sqr(x223 - 
     x291)) + 1/sqrt(sqr(x23 - x92) + sqr(x123 - x192) + sqr(x223 - x292)) + 1/
     sqrt(sqr(x23 - x93) + sqr(x123 - x193) + sqr(x223 - x293)) + 1/sqrt(sqr(
     x23 - x94) + sqr(x123 - x194) + sqr(x223 - x294)) + 1/sqrt(sqr(x23 - x95)
      + sqr(x123 - x195) + sqr(x223 - x295)) + 1/sqrt(sqr(x23 - x96) + sqr(x123
      - x196) + sqr(x223 - x296)) + 1/sqrt(sqr(x23 - x97) + sqr(x123 - x197) + 
     sqr(x223 - x297)) + 1/sqrt(sqr(x23 - x98) + sqr(x123 - x198) + sqr(x223 - 
     x298)) + 1/sqrt(sqr(x23 - x99) + sqr(x123 - x199) + sqr(x223 - x299)) + 1/
     sqrt(sqr(x23 - x100) + sqr(x123 - x200) + sqr(x223 - x300)) + 1/sqrt(sqr(
     x24 - x25) + sqr(x124 - x125) + sqr(x224 - x225)) + 1/sqrt(sqr(x24 - x26)
      + sqr(x124 - x126) + sqr(x224 - x226)) + 1/sqrt(sqr(x24 - x27) + sqr(x124
      - x127) + sqr(x224 - x227)) + 1/sqrt(sqr(x24 - x28) + sqr(x124 - x128) + 
     sqr(x224 - x228)) + 1/sqrt(sqr(x24 - x29) + sqr(x124 - x129) + sqr(x224 - 
     x229)) + 1/sqrt(sqr(x24 - x30) + sqr(x124 - x130) + sqr(x224 - x230)) + 1/
     sqrt(sqr(x24 - x31) + sqr(x124 - x131) + sqr(x224 - x231)) + 1/sqrt(sqr(
     x24 - x32) + sqr(x124 - x132) + sqr(x224 - x232)) + 1/sqrt(sqr(x24 - x33)
      + sqr(x124 - x133) + sqr(x224 - x233)) + 1/sqrt(sqr(x24 - x34) + sqr(x124
      - x134) + sqr(x224 - x234)) + 1/sqrt(sqr(x24 - x35) + sqr(x124 - x135) + 
     sqr(x224 - x235)) + 1/sqrt(sqr(x24 - x36) + sqr(x124 - x136) + sqr(x224 - 
     x236)) + 1/sqrt(sqr(x24 - x37) + sqr(x124 - x137) + sqr(x224 - x237)) + 1/
     sqrt(sqr(x24 - x38) + sqr(x124 - x138) + sqr(x224 - x238)) + 1/sqrt(sqr(
     x24 - x39) + sqr(x124 - x139) + sqr(x224 - x239)) + 1/sqrt(sqr(x24 - x40)
      + sqr(x124 - x140) + sqr(x224 - x240)) + 1/sqrt(sqr(x24 - x41) + sqr(x124
      - x141) + sqr(x224 - x241)) + 1/sqrt(sqr(x24 - x42) + sqr(x124 - x142) + 
     sqr(x224 - x242)) + 1/sqrt(sqr(x24 - x43) + sqr(x124 - x143) + sqr(x224 - 
     x243)) + 1/sqrt(sqr(x24 - x44) + sqr(x124 - x144) + sqr(x224 - x244)) + 1/
     sqrt(sqr(x24 - x45) + sqr(x124 - x145) + sqr(x224 - x245)) + 1/sqrt(sqr(
     x24 - x46) + sqr(x124 - x146) + sqr(x224 - x246)) + 1/sqrt(sqr(x24 - x47)
      + sqr(x124 - x147) + sqr(x224 - x247)) + 1/sqrt(sqr(x24 - x48) + sqr(x124
      - x148) + sqr(x224 - x248)) + 1/sqrt(sqr(x24 - x49) + sqr(x124 - x149) + 
     sqr(x224 - x249)) + 1/sqrt(sqr(x24 - x50) + sqr(x124 - x150) + sqr(x224 - 
     x250)) + 1/sqrt(sqr(x24 - x51) + sqr(x124 - x151) + sqr(x224 - x251)) + 1/
     sqrt(sqr(x24 - x52) + sqr(x124 - x152) + sqr(x224 - x252)) + 1/sqrt(sqr(
     x24 - x53) + sqr(x124 - x153) + sqr(x224 - x253)) + 1/sqrt(sqr(x24 - x54)
      + sqr(x124 - x154) + sqr(x224 - x254)) + 1/sqrt(sqr(x24 - x55) + sqr(x124
      - x155) + sqr(x224 - x255)) + 1/sqrt(sqr(x24 - x56) + sqr(x124 - x156) + 
     sqr(x224 - x256)) + 1/sqrt(sqr(x24 - x57) + sqr(x124 - x157) + sqr(x224 - 
     x257)) + 1/sqrt(sqr(x24 - x58) + sqr(x124 - x158) + sqr(x224 - x258)) + 1/
     sqrt(sqr(x24 - x59) + sqr(x124 - x159) + sqr(x224 - x259)) + 1/sqrt(sqr(
     x24 - x60) + sqr(x124 - x160) + sqr(x224 - x260)) + 1/sqrt(sqr(x24 - x61)
      + sqr(x124 - x161) + sqr(x224 - x261)) + 1/sqrt(sqr(x24 - x62) + sqr(x124
      - x162) + sqr(x224 - x262)) + 1/sqrt(sqr(x24 - x63) + sqr(x124 - x163) + 
     sqr(x224 - x263)) + 1/sqrt(sqr(x24 - x64) + sqr(x124 - x164) + sqr(x224 - 
     x264)) + 1/sqrt(sqr(x24 - x65) + sqr(x124 - x165) + sqr(x224 - x265)) + 1/
     sqrt(sqr(x24 - x66) + sqr(x124 - x166) + sqr(x224 - x266)) + 1/sqrt(sqr(
     x24 - x67) + sqr(x124 - x167) + sqr(x224 - x267)) + 1/sqrt(sqr(x24 - x68)
      + sqr(x124 - x168) + sqr(x224 - x268)) + 1/sqrt(sqr(x24 - x69) + sqr(x124
      - x169) + sqr(x224 - x269)) + 1/sqrt(sqr(x24 - x70) + sqr(x124 - x170) + 
     sqr(x224 - x270)) + 1/sqrt(sqr(x24 - x71) + sqr(x124 - x171) + sqr(x224 - 
     x271)) + 1/sqrt(sqr(x24 - x72) + sqr(x124 - x172) + sqr(x224 - x272)) + 1/
     sqrt(sqr(x24 - x73) + sqr(x124 - x173) + sqr(x224 - x273)) + 1/sqrt(sqr(
     x24 - x74) + sqr(x124 - x174) + sqr(x224 - x274)) + 1/sqrt(sqr(x24 - x75)
      + sqr(x124 - x175) + sqr(x224 - x275)) + 1/sqrt(sqr(x24 - x76) + sqr(x124
      - x176) + sqr(x224 - x276)) + 1/sqrt(sqr(x24 - x77) + sqr(x124 - x177) + 
     sqr(x224 - x277)) + 1/sqrt(sqr(x24 - x78) + sqr(x124 - x178) + sqr(x224 - 
     x278)) + 1/sqrt(sqr(x24 - x79) + sqr(x124 - x179) + sqr(x224 - x279)) + 1/
     sqrt(sqr(x24 - x80) + sqr(x124 - x180) + sqr(x224 - x280)) + 1/sqrt(sqr(
     x24 - x81) + sqr(x124 - x181) + sqr(x224 - x281)) + 1/sqrt(sqr(x24 - x82)
      + sqr(x124 - x182) + sqr(x224 - x282)) + 1/sqrt(sqr(x24 - x83) + sqr(x124
      - x183) + sqr(x224 - x283)) + 1/sqrt(sqr(x24 - x84) + sqr(x124 - x184) + 
     sqr(x224 - x284)) + 1/sqrt(sqr(x24 - x85) + sqr(x124 - x185) + sqr(x224 - 
     x285)) + 1/sqrt(sqr(x24 - x86) + sqr(x124 - x186) + sqr(x224 - x286)) + 1/
     sqrt(sqr(x24 - x87) + sqr(x124 - x187) + sqr(x224 - x287)) + 1/sqrt(sqr(
     x24 - x88) + sqr(x124 - x188) + sqr(x224 - x288)) + 1/sqrt(sqr(x24 - x89)
      + sqr(x124 - x189) + sqr(x224 - x289)) + 1/sqrt(sqr(x24 - x90) + sqr(x124
      - x190) + sqr(x224 - x290)) + 1/sqrt(sqr(x24 - x91) + sqr(x124 - x191) + 
     sqr(x224 - x291)) + 1/sqrt(sqr(x24 - x92) + sqr(x124 - x192) + sqr(x224 - 
     x292)) + 1/sqrt(sqr(x24 - x93) + sqr(x124 - x193) + sqr(x224 - x293)) + 1/
     sqrt(sqr(x24 - x94) + sqr(x124 - x194) + sqr(x224 - x294)) + 1/sqrt(sqr(
     x24 - x95) + sqr(x124 - x195) + sqr(x224 - x295)) + 1/sqrt(sqr(x24 - x96)
      + sqr(x124 - x196) + sqr(x224 - x296)) + 1/sqrt(sqr(x24 - x97) + sqr(x124
      - x197) + sqr(x224 - x297)) + 1/sqrt(sqr(x24 - x98) + sqr(x124 - x198) + 
     sqr(x224 - x298)) + 1/sqrt(sqr(x24 - x99) + sqr(x124 - x199) + sqr(x224 - 
     x299)) + 1/sqrt(sqr(x24 - x100) + sqr(x124 - x200) + sqr(x224 - x300)) + 1
     /sqrt(sqr(x25 - x26) + sqr(x125 - x126) + sqr(x225 - x226)) + 1/sqrt(sqr(
     x25 - x27) + sqr(x125 - x127) + sqr(x225 - x227)) + 1/sqrt(sqr(x25 - x28)
      + sqr(x125 - x128) + sqr(x225 - x228)) + 1/sqrt(sqr(x25 - x29) + sqr(x125
      - x129) + sqr(x225 - x229)) + 1/sqrt(sqr(x25 - x30) + sqr(x125 - x130) + 
     sqr(x225 - x230)) + 1/sqrt(sqr(x25 - x31) + sqr(x125 - x131) + sqr(x225 - 
     x231)) + 1/sqrt(sqr(x25 - x32) + sqr(x125 - x132) + sqr(x225 - x232)) + 1/
     sqrt(sqr(x25 - x33) + sqr(x125 - x133) + sqr(x225 - x233)) + 1/sqrt(sqr(
     x25 - x34) + sqr(x125 - x134) + sqr(x225 - x234)) + 1/sqrt(sqr(x25 - x35)
      + sqr(x125 - x135) + sqr(x225 - x235)) + 1/sqrt(sqr(x25 - x36) + sqr(x125
      - x136) + sqr(x225 - x236)) + 1/sqrt(sqr(x25 - x37) + sqr(x125 - x137) + 
     sqr(x225 - x237)) + 1/sqrt(sqr(x25 - x38) + sqr(x125 - x138) + sqr(x225 - 
     x238)) + 1/sqrt(sqr(x25 - x39) + sqr(x125 - x139) + sqr(x225 - x239)) + 1/
     sqrt(sqr(x25 - x40) + sqr(x125 - x140) + sqr(x225 - x240)) + 1/sqrt(sqr(
     x25 - x41) + sqr(x125 - x141) + sqr(x225 - x241)) + 1/sqrt(sqr(x25 - x42)
      + sqr(x125 - x142) + sqr(x225 - x242)) + 1/sqrt(sqr(x25 - x43) + sqr(x125
      - x143) + sqr(x225 - x243)) + 1/sqrt(sqr(x25 - x44) + sqr(x125 - x144) + 
     sqr(x225 - x244)) + 1/sqrt(sqr(x25 - x45) + sqr(x125 - x145) + sqr(x225 - 
     x245)) + 1/sqrt(sqr(x25 - x46) + sqr(x125 - x146) + sqr(x225 - x246)) + 1/
     sqrt(sqr(x25 - x47) + sqr(x125 - x147) + sqr(x225 - x247)) + 1/sqrt(sqr(
     x25 - x48) + sqr(x125 - x148) + sqr(x225 - x248)) + 1/sqrt(sqr(x25 - x49)
      + sqr(x125 - x149) + sqr(x225 - x249)) + 1/sqrt(sqr(x25 - x50) + sqr(x125
      - x150) + sqr(x225 - x250)) + 1/sqrt(sqr(x25 - x51) + sqr(x125 - x151) + 
     sqr(x225 - x251)) + 1/sqrt(sqr(x25 - x52) + sqr(x125 - x152) + sqr(x225 - 
     x252)) + 1/sqrt(sqr(x25 - x53) + sqr(x125 - x153) + sqr(x225 - x253)) + 1/
     sqrt(sqr(x25 - x54) + sqr(x125 - x154) + sqr(x225 - x254)) + 1/sqrt(sqr(
     x25 - x55) + sqr(x125 - x155) + sqr(x225 - x255)) + 1/sqrt(sqr(x25 - x56)
      + sqr(x125 - x156) + sqr(x225 - x256)) + 1/sqrt(sqr(x25 - x57) + sqr(x125
      - x157) + sqr(x225 - x257)) + 1/sqrt(sqr(x25 - x58) + sqr(x125 - x158) + 
     sqr(x225 - x258)) + 1/sqrt(sqr(x25 - x59) + sqr(x125 - x159) + sqr(x225 - 
     x259)) + 1/sqrt(sqr(x25 - x60) + sqr(x125 - x160) + sqr(x225 - x260)) + 1/
     sqrt(sqr(x25 - x61) + sqr(x125 - x161) + sqr(x225 - x261)) + 1/sqrt(sqr(
     x25 - x62) + sqr(x125 - x162) + sqr(x225 - x262)) + 1/sqrt(sqr(x25 - x63)
      + sqr(x125 - x163) + sqr(x225 - x263)) + 1/sqrt(sqr(x25 - x64) + sqr(x125
      - x164) + sqr(x225 - x264)) + 1/sqrt(sqr(x25 - x65) + sqr(x125 - x165) + 
     sqr(x225 - x265)) + 1/sqrt(sqr(x25 - x66) + sqr(x125 - x166) + sqr(x225 - 
     x266)) + 1/sqrt(sqr(x25 - x67) + sqr(x125 - x167) + sqr(x225 - x267)) + 1/
     sqrt(sqr(x25 - x68) + sqr(x125 - x168) + sqr(x225 - x268)) + 1/sqrt(sqr(
     x25 - x69) + sqr(x125 - x169) + sqr(x225 - x269)) + 1/sqrt(sqr(x25 - x70)
      + sqr(x125 - x170) + sqr(x225 - x270)) + 1/sqrt(sqr(x25 - x71) + sqr(x125
      - x171) + sqr(x225 - x271)) + 1/sqrt(sqr(x25 - x72) + sqr(x125 - x172) + 
     sqr(x225 - x272)) + 1/sqrt(sqr(x25 - x73) + sqr(x125 - x173) + sqr(x225 - 
     x273)) + 1/sqrt(sqr(x25 - x74) + sqr(x125 - x174) + sqr(x225 - x274)) + 1/
     sqrt(sqr(x25 - x75) + sqr(x125 - x175) + sqr(x225 - x275)) + 1/sqrt(sqr(
     x25 - x76) + sqr(x125 - x176) + sqr(x225 - x276)) + 1/sqrt(sqr(x25 - x77)
      + sqr(x125 - x177) + sqr(x225 - x277)) + 1/sqrt(sqr(x25 - x78) + sqr(x125
      - x178) + sqr(x225 - x278)) + 1/sqrt(sqr(x25 - x79) + sqr(x125 - x179) + 
     sqr(x225 - x279)) + 1/sqrt(sqr(x25 - x80) + sqr(x125 - x180) + sqr(x225 - 
     x280)) + 1/sqrt(sqr(x25 - x81) + sqr(x125 - x181) + sqr(x225 - x281)) + 1/
     sqrt(sqr(x25 - x82) + sqr(x125 - x182) + sqr(x225 - x282)) + 1/sqrt(sqr(
     x25 - x83) + sqr(x125 - x183) + sqr(x225 - x283)) + 1/sqrt(sqr(x25 - x84)
      + sqr(x125 - x184) + sqr(x225 - x284)) + 1/sqrt(sqr(x25 - x85) + sqr(x125
      - x185) + sqr(x225 - x285)) + 1/sqrt(sqr(x25 - x86) + sqr(x125 - x186) + 
     sqr(x225 - x286)) + 1/sqrt(sqr(x25 - x87) + sqr(x125 - x187) + sqr(x225 - 
     x287)) + 1/sqrt(sqr(x25 - x88) + sqr(x125 - x188) + sqr(x225 - x288)) + 1/
     sqrt(sqr(x25 - x89) + sqr(x125 - x189) + sqr(x225 - x289)) + 1/sqrt(sqr(
     x25 - x90) + sqr(x125 - x190) + sqr(x225 - x290)) + 1/sqrt(sqr(x25 - x91)
      + sqr(x125 - x191) + sqr(x225 - x291)) + 1/sqrt(sqr(x25 - x92) + sqr(x125
      - x192) + sqr(x225 - x292)) + 1/sqrt(sqr(x25 - x93) + sqr(x125 - x193) + 
     sqr(x225 - x293)) + 1/sqrt(sqr(x25 - x94) + sqr(x125 - x194) + sqr(x225 - 
     x294)) + 1/sqrt(sqr(x25 - x95) + sqr(x125 - x195) + sqr(x225 - x295)) + 1/
     sqrt(sqr(x25 - x96) + sqr(x125 - x196) + sqr(x225 - x296)) + 1/sqrt(sqr(
     x25 - x97) + sqr(x125 - x197) + sqr(x225 - x297)) + 1/sqrt(sqr(x25 - x98)
      + sqr(x125 - x198) + sqr(x225 - x298)) + 1/sqrt(sqr(x25 - x99) + sqr(x125
      - x199) + sqr(x225 - x299)) + 1/sqrt(sqr(x25 - x100) + sqr(x125 - x200)
      + sqr(x225 - x300)) + 1/sqrt(sqr(x26 - x27) + sqr(x126 - x127) + sqr(x226
      - x227)) + 1/sqrt(sqr(x26 - x28) + sqr(x126 - x128) + sqr(x226 - x228))
      + 1/sqrt(sqr(x26 - x29) + sqr(x126 - x129) + sqr(x226 - x229)) + 1/sqrt(
     sqr(x26 - x30) + sqr(x126 - x130) + sqr(x226 - x230)) + 1/sqrt(sqr(x26 - 
     x31) + sqr(x126 - x131) + sqr(x226 - x231)) + 1/sqrt(sqr(x26 - x32) + sqr(
     x126 - x132) + sqr(x226 - x232)) + 1/sqrt(sqr(x26 - x33) + sqr(x126 - x133
     ) + sqr(x226 - x233)) + 1/sqrt(sqr(x26 - x34) + sqr(x126 - x134) + sqr(
     x226 - x234)) + 1/sqrt(sqr(x26 - x35) + sqr(x126 - x135) + sqr(x226 - x235
     )) + 1/sqrt(sqr(x26 - x36) + sqr(x126 - x136) + sqr(x226 - x236)) + 1/
     sqrt(sqr(x26 - x37) + sqr(x126 - x137) + sqr(x226 - x237)) + 1/sqrt(sqr(
     x26 - x38) + sqr(x126 - x138) + sqr(x226 - x238)) + 1/sqrt(sqr(x26 - x39)
      + sqr(x126 - x139) + sqr(x226 - x239)) + 1/sqrt(sqr(x26 - x40) + sqr(x126
      - x140) + sqr(x226 - x240)) + 1/sqrt(sqr(x26 - x41) + sqr(x126 - x141) + 
     sqr(x226 - x241)) + 1/sqrt(sqr(x26 - x42) + sqr(x126 - x142) + sqr(x226 - 
     x242)) + 1/sqrt(sqr(x26 - x43) + sqr(x126 - x143) + sqr(x226 - x243)) + 1/
     sqrt(sqr(x26 - x44) + sqr(x126 - x144) + sqr(x226 - x244)) + 1/sqrt(sqr(
     x26 - x45) + sqr(x126 - x145) + sqr(x226 - x245)) + 1/sqrt(sqr(x26 - x46)
      + sqr(x126 - x146) + sqr(x226 - x246)) + 1/sqrt(sqr(x26 - x47) + sqr(x126
      - x147) + sqr(x226 - x247)) + 1/sqrt(sqr(x26 - x48) + sqr(x126 - x148) + 
     sqr(x226 - x248)) + 1/sqrt(sqr(x26 - x49) + sqr(x126 - x149) + sqr(x226 - 
     x249)) + 1/sqrt(sqr(x26 - x50) + sqr(x126 - x150) + sqr(x226 - x250)) + 1/
     sqrt(sqr(x26 - x51) + sqr(x126 - x151) + sqr(x226 - x251)) + 1/sqrt(sqr(
     x26 - x52) + sqr(x126 - x152) + sqr(x226 - x252)) + 1/sqrt(sqr(x26 - x53)
      + sqr(x126 - x153) + sqr(x226 - x253)) + 1/sqrt(sqr(x26 - x54) + sqr(x126
      - x154) + sqr(x226 - x254)) + 1/sqrt(sqr(x26 - x55) + sqr(x126 - x155) + 
     sqr(x226 - x255)) + 1/sqrt(sqr(x26 - x56) + sqr(x126 - x156) + sqr(x226 - 
     x256)) + 1/sqrt(sqr(x26 - x57) + sqr(x126 - x157) + sqr(x226 - x257)) + 1/
     sqrt(sqr(x26 - x58) + sqr(x126 - x158) + sqr(x226 - x258)) + 1/sqrt(sqr(
     x26 - x59) + sqr(x126 - x159) + sqr(x226 - x259)) + 1/sqrt(sqr(x26 - x60)
      + sqr(x126 - x160) + sqr(x226 - x260)) + 1/sqrt(sqr(x26 - x61) + sqr(x126
      - x161) + sqr(x226 - x261)) + 1/sqrt(sqr(x26 - x62) + sqr(x126 - x162) + 
     sqr(x226 - x262)) + 1/sqrt(sqr(x26 - x63) + sqr(x126 - x163) + sqr(x226 - 
     x263)) + 1/sqrt(sqr(x26 - x64) + sqr(x126 - x164) + sqr(x226 - x264)) + 1/
     sqrt(sqr(x26 - x65) + sqr(x126 - x165) + sqr(x226 - x265)) + 1/sqrt(sqr(
     x26 - x66) + sqr(x126 - x166) + sqr(x226 - x266)) + 1/sqrt(sqr(x26 - x67)
      + sqr(x126 - x167) + sqr(x226 - x267)) + 1/sqrt(sqr(x26 - x68) + sqr(x126
      - x168) + sqr(x226 - x268)) + 1/sqrt(sqr(x26 - x69) + sqr(x126 - x169) + 
     sqr(x226 - x269)) + 1/sqrt(sqr(x26 - x70) + sqr(x126 - x170) + sqr(x226 - 
     x270)) + 1/sqrt(sqr(x26 - x71) + sqr(x126 - x171) + sqr(x226 - x271)) + 1/
     sqrt(sqr(x26 - x72) + sqr(x126 - x172) + sqr(x226 - x272)) + 1/sqrt(sqr(
     x26 - x73) + sqr(x126 - x173) + sqr(x226 - x273)) + 1/sqrt(sqr(x26 - x74)
      + sqr(x126 - x174) + sqr(x226 - x274)) + 1/sqrt(sqr(x26 - x75) + sqr(x126
      - x175) + sqr(x226 - x275)) + 1/sqrt(sqr(x26 - x76) + sqr(x126 - x176) + 
     sqr(x226 - x276)) + 1/sqrt(sqr(x26 - x77) + sqr(x126 - x177) + sqr(x226 - 
     x277)) + 1/sqrt(sqr(x26 - x78) + sqr(x126 - x178) + sqr(x226 - x278)) + 1/
     sqrt(sqr(x26 - x79) + sqr(x126 - x179) + sqr(x226 - x279)) + 1/sqrt(sqr(
     x26 - x80) + sqr(x126 - x180) + sqr(x226 - x280)) + 1/sqrt(sqr(x26 - x81)
      + sqr(x126 - x181) + sqr(x226 - x281)) + 1/sqrt(sqr(x26 - x82) + sqr(x126
      - x182) + sqr(x226 - x282)) + 1/sqrt(sqr(x26 - x83) + sqr(x126 - x183) + 
     sqr(x226 - x283)) + 1/sqrt(sqr(x26 - x84) + sqr(x126 - x184) + sqr(x226 - 
     x284)) + 1/sqrt(sqr(x26 - x85) + sqr(x126 - x185) + sqr(x226 - x285)) + 1/
     sqrt(sqr(x26 - x86) + sqr(x126 - x186) + sqr(x226 - x286)) + 1/sqrt(sqr(
     x26 - x87) + sqr(x126 - x187) + sqr(x226 - x287)) + 1/sqrt(sqr(x26 - x88)
      + sqr(x126 - x188) + sqr(x226 - x288)) + 1/sqrt(sqr(x26 - x89) + sqr(x126
      - x189) + sqr(x226 - x289)) + 1/sqrt(sqr(x26 - x90) + sqr(x126 - x190) + 
     sqr(x226 - x290)) + 1/sqrt(sqr(x26 - x91) + sqr(x126 - x191) + sqr(x226 - 
     x291)) + 1/sqrt(sqr(x26 - x92) + sqr(x126 - x192) + sqr(x226 - x292)) + 1/
     sqrt(sqr(x26 - x93) + sqr(x126 - x193) + sqr(x226 - x293)) + 1/sqrt(sqr(
     x26 - x94) + sqr(x126 - x194) + sqr(x226 - x294)) + 1/sqrt(sqr(x26 - x95)
      + sqr(x126 - x195) + sqr(x226 - x295)) + 1/sqrt(sqr(x26 - x96) + sqr(x126
      - x196) + sqr(x226 - x296)) + 1/sqrt(sqr(x26 - x97) + sqr(x126 - x197) + 
     sqr(x226 - x297)) + 1/sqrt(sqr(x26 - x98) + sqr(x126 - x198) + sqr(x226 - 
     x298)) + 1/sqrt(sqr(x26 - x99) + sqr(x126 - x199) + sqr(x226 - x299)) + 1/
     sqrt(sqr(x26 - x100) + sqr(x126 - x200) + sqr(x226 - x300)) + 1/sqrt(sqr(
     x27 - x28) + sqr(x127 - x128) + sqr(x227 - x228)) + 1/sqrt(sqr(x27 - x29)
      + sqr(x127 - x129) + sqr(x227 - x229)) + 1/sqrt(sqr(x27 - x30) + sqr(x127
      - x130) + sqr(x227 - x230)) + 1/sqrt(sqr(x27 - x31) + sqr(x127 - x131) + 
     sqr(x227 - x231)) + 1/sqrt(sqr(x27 - x32) + sqr(x127 - x132) + sqr(x227 - 
     x232)) + 1/sqrt(sqr(x27 - x33) + sqr(x127 - x133) + sqr(x227 - x233)) + 1/
     sqrt(sqr(x27 - x34) + sqr(x127 - x134) + sqr(x227 - x234)) + 1/sqrt(sqr(
     x27 - x35) + sqr(x127 - x135) + sqr(x227 - x235)) + 1/sqrt(sqr(x27 - x36)
      + sqr(x127 - x136) + sqr(x227 - x236)) + 1/sqrt(sqr(x27 - x37) + sqr(x127
      - x137) + sqr(x227 - x237)) + 1/sqrt(sqr(x27 - x38) + sqr(x127 - x138) + 
     sqr(x227 - x238)) + 1/sqrt(sqr(x27 - x39) + sqr(x127 - x139) + sqr(x227 - 
     x239)) + 1/sqrt(sqr(x27 - x40) + sqr(x127 - x140) + sqr(x227 - x240)) + 1/
     sqrt(sqr(x27 - x41) + sqr(x127 - x141) + sqr(x227 - x241)) + 1/sqrt(sqr(
     x27 - x42) + sqr(x127 - x142) + sqr(x227 - x242)) + 1/sqrt(sqr(x27 - x43)
      + sqr(x127 - x143) + sqr(x227 - x243)) + 1/sqrt(sqr(x27 - x44) + sqr(x127
      - x144) + sqr(x227 - x244)) + 1/sqrt(sqr(x27 - x45) + sqr(x127 - x145) + 
     sqr(x227 - x245)) + 1/sqrt(sqr(x27 - x46) + sqr(x127 - x146) + sqr(x227 - 
     x246)) + 1/sqrt(sqr(x27 - x47) + sqr(x127 - x147) + sqr(x227 - x247)) + 1/
     sqrt(sqr(x27 - x48) + sqr(x127 - x148) + sqr(x227 - x248)) + 1/sqrt(sqr(
     x27 - x49) + sqr(x127 - x149) + sqr(x227 - x249)) + 1/sqrt(sqr(x27 - x50)
      + sqr(x127 - x150) + sqr(x227 - x250)) + 1/sqrt(sqr(x27 - x51) + sqr(x127
      - x151) + sqr(x227 - x251)) + 1/sqrt(sqr(x27 - x52) + sqr(x127 - x152) + 
     sqr(x227 - x252)) + 1/sqrt(sqr(x27 - x53) + sqr(x127 - x153) + sqr(x227 - 
     x253)) + 1/sqrt(sqr(x27 - x54) + sqr(x127 - x154) + sqr(x227 - x254)) + 1/
     sqrt(sqr(x27 - x55) + sqr(x127 - x155) + sqr(x227 - x255)) + 1/sqrt(sqr(
     x27 - x56) + sqr(x127 - x156) + sqr(x227 - x256)) + 1/sqrt(sqr(x27 - x57)
      + sqr(x127 - x157) + sqr(x227 - x257)) + 1/sqrt(sqr(x27 - x58) + sqr(x127
      - x158) + sqr(x227 - x258)) + 1/sqrt(sqr(x27 - x59) + sqr(x127 - x159) + 
     sqr(x227 - x259)) + 1/sqrt(sqr(x27 - x60) + sqr(x127 - x160) + sqr(x227 - 
     x260)) + 1/sqrt(sqr(x27 - x61) + sqr(x127 - x161) + sqr(x227 - x261)) + 1/
     sqrt(sqr(x27 - x62) + sqr(x127 - x162) + sqr(x227 - x262)) + 1/sqrt(sqr(
     x27 - x63) + sqr(x127 - x163) + sqr(x227 - x263)) + 1/sqrt(sqr(x27 - x64)
      + sqr(x127 - x164) + sqr(x227 - x264)) + 1/sqrt(sqr(x27 - x65) + sqr(x127
      - x165) + sqr(x227 - x265)) + 1/sqrt(sqr(x27 - x66) + sqr(x127 - x166) + 
     sqr(x227 - x266)) + 1/sqrt(sqr(x27 - x67) + sqr(x127 - x167) + sqr(x227 - 
     x267)) + 1/sqrt(sqr(x27 - x68) + sqr(x127 - x168) + sqr(x227 - x268)) + 1/
     sqrt(sqr(x27 - x69) + sqr(x127 - x169) + sqr(x227 - x269)) + 1/sqrt(sqr(
     x27 - x70) + sqr(x127 - x170) + sqr(x227 - x270)) + 1/sqrt(sqr(x27 - x71)
      + sqr(x127 - x171) + sqr(x227 - x271)) + 1/sqrt(sqr(x27 - x72) + sqr(x127
      - x172) + sqr(x227 - x272)) + 1/sqrt(sqr(x27 - x73) + sqr(x127 - x173) + 
     sqr(x227 - x273)) + 1/sqrt(sqr(x27 - x74) + sqr(x127 - x174) + sqr(x227 - 
     x274)) + 1/sqrt(sqr(x27 - x75) + sqr(x127 - x175) + sqr(x227 - x275)) + 1/
     sqrt(sqr(x27 - x76) + sqr(x127 - x176) + sqr(x227 - x276)) + 1/sqrt(sqr(
     x27 - x77) + sqr(x127 - x177) + sqr(x227 - x277)) + 1/sqrt(sqr(x27 - x78)
      + sqr(x127 - x178) + sqr(x227 - x278)) + 1/sqrt(sqr(x27 - x79) + sqr(x127
      - x179) + sqr(x227 - x279)) + 1/sqrt(sqr(x27 - x80) + sqr(x127 - x180) + 
     sqr(x227 - x280)) + 1/sqrt(sqr(x27 - x81) + sqr(x127 - x181) + sqr(x227 - 
     x281)) + 1/sqrt(sqr(x27 - x82) + sqr(x127 - x182) + sqr(x227 - x282)) + 1/
     sqrt(sqr(x27 - x83) + sqr(x127 - x183) + sqr(x227 - x283)) + 1/sqrt(sqr(
     x27 - x84) + sqr(x127 - x184) + sqr(x227 - x284)) + 1/sqrt(sqr(x27 - x85)
      + sqr(x127 - x185) + sqr(x227 - x285)) + 1/sqrt(sqr(x27 - x86) + sqr(x127
      - x186) + sqr(x227 - x286)) + 1/sqrt(sqr(x27 - x87) + sqr(x127 - x187) + 
     sqr(x227 - x287)) + 1/sqrt(sqr(x27 - x88) + sqr(x127 - x188) + sqr(x227 - 
     x288)) + 1/sqrt(sqr(x27 - x89) + sqr(x127 - x189) + sqr(x227 - x289)) + 1/
     sqrt(sqr(x27 - x90) + sqr(x127 - x190) + sqr(x227 - x290)) + 1/sqrt(sqr(
     x27 - x91) + sqr(x127 - x191) + sqr(x227 - x291)) + 1/sqrt(sqr(x27 - x92)
      + sqr(x127 - x192) + sqr(x227 - x292)) + 1/sqrt(sqr(x27 - x93) + sqr(x127
      - x193) + sqr(x227 - x293)) + 1/sqrt(sqr(x27 - x94) + sqr(x127 - x194) + 
     sqr(x227 - x294)) + 1/sqrt(sqr(x27 - x95) + sqr(x127 - x195) + sqr(x227 - 
     x295)) + 1/sqrt(sqr(x27 - x96) + sqr(x127 - x196) + sqr(x227 - x296)) + 1/
     sqrt(sqr(x27 - x97) + sqr(x127 - x197) + sqr(x227 - x297)) + 1/sqrt(sqr(
     x27 - x98) + sqr(x127 - x198) + sqr(x227 - x298)) + 1/sqrt(sqr(x27 - x99)
      + sqr(x127 - x199) + sqr(x227 - x299)) + 1/sqrt(sqr(x27 - x100) + sqr(
     x127 - x200) + sqr(x227 - x300)) + 1/sqrt(sqr(x28 - x29) + sqr(x128 - x129
     ) + sqr(x228 - x229)) + 1/sqrt(sqr(x28 - x30) + sqr(x128 - x130) + sqr(
     x228 - x230)) + 1/sqrt(sqr(x28 - x31) + sqr(x128 - x131) + sqr(x228 - x231
     )) + 1/sqrt(sqr(x28 - x32) + sqr(x128 - x132) + sqr(x228 - x232)) + 1/
     sqrt(sqr(x28 - x33) + sqr(x128 - x133) + sqr(x228 - x233)) + 1/sqrt(sqr(
     x28 - x34) + sqr(x128 - x134) + sqr(x228 - x234)) + 1/sqrt(sqr(x28 - x35)
      + sqr(x128 - x135) + sqr(x228 - x235)) + 1/sqrt(sqr(x28 - x36) + sqr(x128
      - x136) + sqr(x228 - x236)) + 1/sqrt(sqr(x28 - x37) + sqr(x128 - x137) + 
     sqr(x228 - x237)) + 1/sqrt(sqr(x28 - x38) + sqr(x128 - x138) + sqr(x228 - 
     x238)) + 1/sqrt(sqr(x28 - x39) + sqr(x128 - x139) + sqr(x228 - x239)) + 1/
     sqrt(sqr(x28 - x40) + sqr(x128 - x140) + sqr(x228 - x240)) + 1/sqrt(sqr(
     x28 - x41) + sqr(x128 - x141) + sqr(x228 - x241)) + 1/sqrt(sqr(x28 - x42)
      + sqr(x128 - x142) + sqr(x228 - x242)) + 1/sqrt(sqr(x28 - x43) + sqr(x128
      - x143) + sqr(x228 - x243)) + 1/sqrt(sqr(x28 - x44) + sqr(x128 - x144) + 
     sqr(x228 - x244)) + 1/sqrt(sqr(x28 - x45) + sqr(x128 - x145) + sqr(x228 - 
     x245)) + 1/sqrt(sqr(x28 - x46) + sqr(x128 - x146) + sqr(x228 - x246)) + 1/
     sqrt(sqr(x28 - x47) + sqr(x128 - x147) + sqr(x228 - x247)) + 1/sqrt(sqr(
     x28 - x48) + sqr(x128 - x148) + sqr(x228 - x248)) + 1/sqrt(sqr(x28 - x49)
      + sqr(x128 - x149) + sqr(x228 - x249)) + 1/sqrt(sqr(x28 - x50) + sqr(x128
      - x150) + sqr(x228 - x250)) + 1/sqrt(sqr(x28 - x51) + sqr(x128 - x151) + 
     sqr(x228 - x251)) + 1/sqrt(sqr(x28 - x52) + sqr(x128 - x152) + sqr(x228 - 
     x252)) + 1/sqrt(sqr(x28 - x53) + sqr(x128 - x153) + sqr(x228 - x253)) + 1/
     sqrt(sqr(x28 - x54) + sqr(x128 - x154) + sqr(x228 - x254)) + 1/sqrt(sqr(
     x28 - x55) + sqr(x128 - x155) + sqr(x228 - x255)) + 1/sqrt(sqr(x28 - x56)
      + sqr(x128 - x156) + sqr(x228 - x256)) + 1/sqrt(sqr(x28 - x57) + sqr(x128
      - x157) + sqr(x228 - x257)) + 1/sqrt(sqr(x28 - x58) + sqr(x128 - x158) + 
     sqr(x228 - x258)) + 1/sqrt(sqr(x28 - x59) + sqr(x128 - x159) + sqr(x228 - 
     x259)) + 1/sqrt(sqr(x28 - x60) + sqr(x128 - x160) + sqr(x228 - x260)) + 1/
     sqrt(sqr(x28 - x61) + sqr(x128 - x161) + sqr(x228 - x261)) + 1/sqrt(sqr(
     x28 - x62) + sqr(x128 - x162) + sqr(x228 - x262)) + 1/sqrt(sqr(x28 - x63)
      + sqr(x128 - x163) + sqr(x228 - x263)) + 1/sqrt(sqr(x28 - x64) + sqr(x128
      - x164) + sqr(x228 - x264)) + 1/sqrt(sqr(x28 - x65) + sqr(x128 - x165) + 
     sqr(x228 - x265)) + 1/sqrt(sqr(x28 - x66) + sqr(x128 - x166) + sqr(x228 - 
     x266)) + 1/sqrt(sqr(x28 - x67) + sqr(x128 - x167) + sqr(x228 - x267)) + 1/
     sqrt(sqr(x28 - x68) + sqr(x128 - x168) + sqr(x228 - x268)) + 1/sqrt(sqr(
     x28 - x69) + sqr(x128 - x169) + sqr(x228 - x269)) + 1/sqrt(sqr(x28 - x70)
      + sqr(x128 - x170) + sqr(x228 - x270)) + 1/sqrt(sqr(x28 - x71) + sqr(x128
      - x171) + sqr(x228 - x271)) + 1/sqrt(sqr(x28 - x72) + sqr(x128 - x172) + 
     sqr(x228 - x272)) + 1/sqrt(sqr(x28 - x73) + sqr(x128 - x173) + sqr(x228 - 
     x273)) + 1/sqrt(sqr(x28 - x74) + sqr(x128 - x174) + sqr(x228 - x274)) + 1/
     sqrt(sqr(x28 - x75) + sqr(x128 - x175) + sqr(x228 - x275)) + 1/sqrt(sqr(
     x28 - x76) + sqr(x128 - x176) + sqr(x228 - x276)) + 1/sqrt(sqr(x28 - x77)
      + sqr(x128 - x177) + sqr(x228 - x277)) + 1/sqrt(sqr(x28 - x78) + sqr(x128
      - x178) + sqr(x228 - x278)) + 1/sqrt(sqr(x28 - x79) + sqr(x128 - x179) + 
     sqr(x228 - x279)) + 1/sqrt(sqr(x28 - x80) + sqr(x128 - x180) + sqr(x228 - 
     x280)) + 1/sqrt(sqr(x28 - x81) + sqr(x128 - x181) + sqr(x228 - x281)) + 1/
     sqrt(sqr(x28 - x82) + sqr(x128 - x182) + sqr(x228 - x282)) + 1/sqrt(sqr(
     x28 - x83) + sqr(x128 - x183) + sqr(x228 - x283)) + 1/sqrt(sqr(x28 - x84)
      + sqr(x128 - x184) + sqr(x228 - x284)) + 1/sqrt(sqr(x28 - x85) + sqr(x128
      - x185) + sqr(x228 - x285)) + 1/sqrt(sqr(x28 - x86) + sqr(x128 - x186) + 
     sqr(x228 - x286)) + 1/sqrt(sqr(x28 - x87) + sqr(x128 - x187) + sqr(x228 - 
     x287)) + 1/sqrt(sqr(x28 - x88) + sqr(x128 - x188) + sqr(x228 - x288)) + 1/
     sqrt(sqr(x28 - x89) + sqr(x128 - x189) + sqr(x228 - x289)) + 1/sqrt(sqr(
     x28 - x90) + sqr(x128 - x190) + sqr(x228 - x290)) + 1/sqrt(sqr(x28 - x91)
      + sqr(x128 - x191) + sqr(x228 - x291)) + 1/sqrt(sqr(x28 - x92) + sqr(x128
      - x192) + sqr(x228 - x292)) + 1/sqrt(sqr(x28 - x93) + sqr(x128 - x193) + 
     sqr(x228 - x293)) + 1/sqrt(sqr(x28 - x94) + sqr(x128 - x194) + sqr(x228 - 
     x294)) + 1/sqrt(sqr(x28 - x95) + sqr(x128 - x195) + sqr(x228 - x295)) + 1/
     sqrt(sqr(x28 - x96) + sqr(x128 - x196) + sqr(x228 - x296)) + 1/sqrt(sqr(
     x28 - x97) + sqr(x128 - x197) + sqr(x228 - x297)) + 1/sqrt(sqr(x28 - x98)
      + sqr(x128 - x198) + sqr(x228 - x298)) + 1/sqrt(sqr(x28 - x99) + sqr(x128
      - x199) + sqr(x228 - x299)) + 1/sqrt(sqr(x28 - x100) + sqr(x128 - x200)
      + sqr(x228 - x300)) + 1/sqrt(sqr(x29 - x30) + sqr(x129 - x130) + sqr(x229
      - x230)) + 1/sqrt(sqr(x29 - x31) + sqr(x129 - x131) + sqr(x229 - x231))
      + 1/sqrt(sqr(x29 - x32) + sqr(x129 - x132) + sqr(x229 - x232)) + 1/sqrt(
     sqr(x29 - x33) + sqr(x129 - x133) + sqr(x229 - x233)) + 1/sqrt(sqr(x29 - 
     x34) + sqr(x129 - x134) + sqr(x229 - x234)) + 1/sqrt(sqr(x29 - x35) + sqr(
     x129 - x135) + sqr(x229 - x235)) + 1/sqrt(sqr(x29 - x36) + sqr(x129 - x136
     ) + sqr(x229 - x236)) + 1/sqrt(sqr(x29 - x37) + sqr(x129 - x137) + sqr(
     x229 - x237)) + 1/sqrt(sqr(x29 - x38) + sqr(x129 - x138) + sqr(x229 - x238
     )) + 1/sqrt(sqr(x29 - x39) + sqr(x129 - x139) + sqr(x229 - x239)) + 1/
     sqrt(sqr(x29 - x40) + sqr(x129 - x140) + sqr(x229 - x240)) + 1/sqrt(sqr(
     x29 - x41) + sqr(x129 - x141) + sqr(x229 - x241)) + 1/sqrt(sqr(x29 - x42)
      + sqr(x129 - x142) + sqr(x229 - x242)) + 1/sqrt(sqr(x29 - x43) + sqr(x129
      - x143) + sqr(x229 - x243)) + 1/sqrt(sqr(x29 - x44) + sqr(x129 - x144) + 
     sqr(x229 - x244)) + 1/sqrt(sqr(x29 - x45) + sqr(x129 - x145) + sqr(x229 - 
     x245)) + 1/sqrt(sqr(x29 - x46) + sqr(x129 - x146) + sqr(x229 - x246)) + 1/
     sqrt(sqr(x29 - x47) + sqr(x129 - x147) + sqr(x229 - x247)) + 1/sqrt(sqr(
     x29 - x48) + sqr(x129 - x148) + sqr(x229 - x248)) + 1/sqrt(sqr(x29 - x49)
      + sqr(x129 - x149) + sqr(x229 - x249)) + 1/sqrt(sqr(x29 - x50) + sqr(x129
      - x150) + sqr(x229 - x250)) + 1/sqrt(sqr(x29 - x51) + sqr(x129 - x151) + 
     sqr(x229 - x251)) + 1/sqrt(sqr(x29 - x52) + sqr(x129 - x152) + sqr(x229 - 
     x252)) + 1/sqrt(sqr(x29 - x53) + sqr(x129 - x153) + sqr(x229 - x253)) + 1/
     sqrt(sqr(x29 - x54) + sqr(x129 - x154) + sqr(x229 - x254)) + 1/sqrt(sqr(
     x29 - x55) + sqr(x129 - x155) + sqr(x229 - x255)) + 1/sqrt(sqr(x29 - x56)
      + sqr(x129 - x156) + sqr(x229 - x256)) + 1/sqrt(sqr(x29 - x57) + sqr(x129
      - x157) + sqr(x229 - x257)) + 1/sqrt(sqr(x29 - x58) + sqr(x129 - x158) + 
     sqr(x229 - x258)) + 1/sqrt(sqr(x29 - x59) + sqr(x129 - x159) + sqr(x229 - 
     x259)) + 1/sqrt(sqr(x29 - x60) + sqr(x129 - x160) + sqr(x229 - x260)) + 1/
     sqrt(sqr(x29 - x61) + sqr(x129 - x161) + sqr(x229 - x261)) + 1/sqrt(sqr(
     x29 - x62) + sqr(x129 - x162) + sqr(x229 - x262)) + 1/sqrt(sqr(x29 - x63)
      + sqr(x129 - x163) + sqr(x229 - x263)) + 1/sqrt(sqr(x29 - x64) + sqr(x129
      - x164) + sqr(x229 - x264)) + 1/sqrt(sqr(x29 - x65) + sqr(x129 - x165) + 
     sqr(x229 - x265)) + 1/sqrt(sqr(x29 - x66) + sqr(x129 - x166) + sqr(x229 - 
     x266)) + 1/sqrt(sqr(x29 - x67) + sqr(x129 - x167) + sqr(x229 - x267)) + 1/
     sqrt(sqr(x29 - x68) + sqr(x129 - x168) + sqr(x229 - x268)) + 1/sqrt(sqr(
     x29 - x69) + sqr(x129 - x169) + sqr(x229 - x269)) + 1/sqrt(sqr(x29 - x70)
      + sqr(x129 - x170) + sqr(x229 - x270)) + 1/sqrt(sqr(x29 - x71) + sqr(x129
      - x171) + sqr(x229 - x271)) + 1/sqrt(sqr(x29 - x72) + sqr(x129 - x172) + 
     sqr(x229 - x272)) + 1/sqrt(sqr(x29 - x73) + sqr(x129 - x173) + sqr(x229 - 
     x273)) + 1/sqrt(sqr(x29 - x74) + sqr(x129 - x174) + sqr(x229 - x274)) + 1/
     sqrt(sqr(x29 - x75) + sqr(x129 - x175) + sqr(x229 - x275)) + 1/sqrt(sqr(
     x29 - x76) + sqr(x129 - x176) + sqr(x229 - x276)) + 1/sqrt(sqr(x29 - x77)
      + sqr(x129 - x177) + sqr(x229 - x277)) + 1/sqrt(sqr(x29 - x78) + sqr(x129
      - x178) + sqr(x229 - x278)) + 1/sqrt(sqr(x29 - x79) + sqr(x129 - x179) + 
     sqr(x229 - x279)) + 1/sqrt(sqr(x29 - x80) + sqr(x129 - x180) + sqr(x229 - 
     x280)) + 1/sqrt(sqr(x29 - x81) + sqr(x129 - x181) + sqr(x229 - x281)) + 1/
     sqrt(sqr(x29 - x82) + sqr(x129 - x182) + sqr(x229 - x282)) + 1/sqrt(sqr(
     x29 - x83) + sqr(x129 - x183) + sqr(x229 - x283)) + 1/sqrt(sqr(x29 - x84)
      + sqr(x129 - x184) + sqr(x229 - x284)) + 1/sqrt(sqr(x29 - x85) + sqr(x129
      - x185) + sqr(x229 - x285)) + 1/sqrt(sqr(x29 - x86) + sqr(x129 - x186) + 
     sqr(x229 - x286)) + 1/sqrt(sqr(x29 - x87) + sqr(x129 - x187) + sqr(x229 - 
     x287)) + 1/sqrt(sqr(x29 - x88) + sqr(x129 - x188) + sqr(x229 - x288)) + 1/
     sqrt(sqr(x29 - x89) + sqr(x129 - x189) + sqr(x229 - x289)) + 1/sqrt(sqr(
     x29 - x90) + sqr(x129 - x190) + sqr(x229 - x290)) + 1/sqrt(sqr(x29 - x91)
      + sqr(x129 - x191) + sqr(x229 - x291)) + 1/sqrt(sqr(x29 - x92) + sqr(x129
      - x192) + sqr(x229 - x292)) + 1/sqrt(sqr(x29 - x93) + sqr(x129 - x193) + 
     sqr(x229 - x293)) + 1/sqrt(sqr(x29 - x94) + sqr(x129 - x194) + sqr(x229 - 
     x294)) + 1/sqrt(sqr(x29 - x95) + sqr(x129 - x195) + sqr(x229 - x295)) + 1/
     sqrt(sqr(x29 - x96) + sqr(x129 - x196) + sqr(x229 - x296)) + 1/sqrt(sqr(
     x29 - x97) + sqr(x129 - x197) + sqr(x229 - x297)) + 1/sqrt(sqr(x29 - x98)
      + sqr(x129 - x198) + sqr(x229 - x298)) + 1/sqrt(sqr(x29 - x99) + sqr(x129
      - x199) + sqr(x229 - x299)) + 1/sqrt(sqr(x29 - x100) + sqr(x129 - x200)
      + sqr(x229 - x300)) + 1/sqrt(sqr(x30 - x31) + sqr(x130 - x131) + sqr(x230
      - x231)) + 1/sqrt(sqr(x30 - x32) + sqr(x130 - x132) + sqr(x230 - x232))
      + 1/sqrt(sqr(x30 - x33) + sqr(x130 - x133) + sqr(x230 - x233)) + 1/sqrt(
     sqr(x30 - x34) + sqr(x130 - x134) + sqr(x230 - x234)) + 1/sqrt(sqr(x30 - 
     x35) + sqr(x130 - x135) + sqr(x230 - x235)) + 1/sqrt(sqr(x30 - x36) + sqr(
     x130 - x136) + sqr(x230 - x236)) + 1/sqrt(sqr(x30 - x37) + sqr(x130 - x137
     ) + sqr(x230 - x237)) + 1/sqrt(sqr(x30 - x38) + sqr(x130 - x138) + sqr(
     x230 - x238)) + 1/sqrt(sqr(x30 - x39) + sqr(x130 - x139) + sqr(x230 - x239
     )) + 1/sqrt(sqr(x30 - x40) + sqr(x130 - x140) + sqr(x230 - x240)) + 1/
     sqrt(sqr(x30 - x41) + sqr(x130 - x141) + sqr(x230 - x241)) + 1/sqrt(sqr(
     x30 - x42) + sqr(x130 - x142) + sqr(x230 - x242)) + 1/sqrt(sqr(x30 - x43)
      + sqr(x130 - x143) + sqr(x230 - x243)) + 1/sqrt(sqr(x30 - x44) + sqr(x130
      - x144) + sqr(x230 - x244)) + 1/sqrt(sqr(x30 - x45) + sqr(x130 - x145) + 
     sqr(x230 - x245)) + 1/sqrt(sqr(x30 - x46) + sqr(x130 - x146) + sqr(x230 - 
     x246)) + 1/sqrt(sqr(x30 - x47) + sqr(x130 - x147) + sqr(x230 - x247)) + 1/
     sqrt(sqr(x30 - x48) + sqr(x130 - x148) + sqr(x230 - x248)) + 1/sqrt(sqr(
     x30 - x49) + sqr(x130 - x149) + sqr(x230 - x249)) + 1/sqrt(sqr(x30 - x50)
      + sqr(x130 - x150) + sqr(x230 - x250)) + 1/sqrt(sqr(x30 - x51) + sqr(x130
      - x151) + sqr(x230 - x251)) + 1/sqrt(sqr(x30 - x52) + sqr(x130 - x152) + 
     sqr(x230 - x252)) + 1/sqrt(sqr(x30 - x53) + sqr(x130 - x153) + sqr(x230 - 
     x253)) + 1/sqrt(sqr(x30 - x54) + sqr(x130 - x154) + sqr(x230 - x254)) + 1/
     sqrt(sqr(x30 - x55) + sqr(x130 - x155) + sqr(x230 - x255)) + 1/sqrt(sqr(
     x30 - x56) + sqr(x130 - x156) + sqr(x230 - x256)) + 1/sqrt(sqr(x30 - x57)
      + sqr(x130 - x157) + sqr(x230 - x257)) + 1/sqrt(sqr(x30 - x58) + sqr(x130
      - x158) + sqr(x230 - x258)) + 1/sqrt(sqr(x30 - x59) + sqr(x130 - x159) + 
     sqr(x230 - x259)) + 1/sqrt(sqr(x30 - x60) + sqr(x130 - x160) + sqr(x230 - 
     x260)) + 1/sqrt(sqr(x30 - x61) + sqr(x130 - x161) + sqr(x230 - x261)) + 1/
     sqrt(sqr(x30 - x62) + sqr(x130 - x162) + sqr(x230 - x262)) + 1/sqrt(sqr(
     x30 - x63) + sqr(x130 - x163) + sqr(x230 - x263)) + 1/sqrt(sqr(x30 - x64)
      + sqr(x130 - x164) + sqr(x230 - x264)) + 1/sqrt(sqr(x30 - x65) + sqr(x130
      - x165) + sqr(x230 - x265)) + 1/sqrt(sqr(x30 - x66) + sqr(x130 - x166) + 
     sqr(x230 - x266)) + 1/sqrt(sqr(x30 - x67) + sqr(x130 - x167) + sqr(x230 - 
     x267)) + 1/sqrt(sqr(x30 - x68) + sqr(x130 - x168) + sqr(x230 - x268)) + 1/
     sqrt(sqr(x30 - x69) + sqr(x130 - x169) + sqr(x230 - x269)) + 1/sqrt(sqr(
     x30 - x70) + sqr(x130 - x170) + sqr(x230 - x270)) + 1/sqrt(sqr(x30 - x71)
      + sqr(x130 - x171) + sqr(x230 - x271)) + 1/sqrt(sqr(x30 - x72) + sqr(x130
      - x172) + sqr(x230 - x272)) + 1/sqrt(sqr(x30 - x73) + sqr(x130 - x173) + 
     sqr(x230 - x273)) + 1/sqrt(sqr(x30 - x74) + sqr(x130 - x174) + sqr(x230 - 
     x274)) + 1/sqrt(sqr(x30 - x75) + sqr(x130 - x175) + sqr(x230 - x275)) + 1/
     sqrt(sqr(x30 - x76) + sqr(x130 - x176) + sqr(x230 - x276)) + 1/sqrt(sqr(
     x30 - x77) + sqr(x130 - x177) + sqr(x230 - x277)) + 1/sqrt(sqr(x30 - x78)
      + sqr(x130 - x178) + sqr(x230 - x278)) + 1/sqrt(sqr(x30 - x79) + sqr(x130
      - x179) + sqr(x230 - x279)) + 1/sqrt(sqr(x30 - x80) + sqr(x130 - x180) + 
     sqr(x230 - x280)) + 1/sqrt(sqr(x30 - x81) + sqr(x130 - x181) + sqr(x230 - 
     x281)) + 1/sqrt(sqr(x30 - x82) + sqr(x130 - x182) + sqr(x230 - x282)) + 1/
     sqrt(sqr(x30 - x83) + sqr(x130 - x183) + sqr(x230 - x283)) + 1/sqrt(sqr(
     x30 - x84) + sqr(x130 - x184) + sqr(x230 - x284)) + 1/sqrt(sqr(x30 - x85)
      + sqr(x130 - x185) + sqr(x230 - x285)) + 1/sqrt(sqr(x30 - x86) + sqr(x130
      - x186) + sqr(x230 - x286)) + 1/sqrt(sqr(x30 - x87) + sqr(x130 - x187) + 
     sqr(x230 - x287)) + 1/sqrt(sqr(x30 - x88) + sqr(x130 - x188) + sqr(x230 - 
     x288)) + 1/sqrt(sqr(x30 - x89) + sqr(x130 - x189) + sqr(x230 - x289)) + 1/
     sqrt(sqr(x30 - x90) + sqr(x130 - x190) + sqr(x230 - x290)) + 1/sqrt(sqr(
     x30 - x91) + sqr(x130 - x191) + sqr(x230 - x291)) + 1/sqrt(sqr(x30 - x92)
      + sqr(x130 - x192) + sqr(x230 - x292)) + 1/sqrt(sqr(x30 - x93) + sqr(x130
      - x193) + sqr(x230 - x293)) + 1/sqrt(sqr(x30 - x94) + sqr(x130 - x194) + 
     sqr(x230 - x294)) + 1/sqrt(sqr(x30 - x95) + sqr(x130 - x195) + sqr(x230 - 
     x295)) + 1/sqrt(sqr(x30 - x96) + sqr(x130 - x196) + sqr(x230 - x296)) + 1/
     sqrt(sqr(x30 - x97) + sqr(x130 - x197) + sqr(x230 - x297)) + 1/sqrt(sqr(
     x30 - x98) + sqr(x130 - x198) + sqr(x230 - x298)) + 1/sqrt(sqr(x30 - x99)
      + sqr(x130 - x199) + sqr(x230 - x299)) + 1/sqrt(sqr(x30 - x100) + sqr(
     x130 - x200) + sqr(x230 - x300)) + 1/sqrt(sqr(x31 - x32) + sqr(x131 - x132
     ) + sqr(x231 - x232)) + 1/sqrt(sqr(x31 - x33) + sqr(x131 - x133) + sqr(
     x231 - x233)) + 1/sqrt(sqr(x31 - x34) + sqr(x131 - x134) + sqr(x231 - x234
     )) + 1/sqrt(sqr(x31 - x35) + sqr(x131 - x135) + sqr(x231 - x235)) + 1/
     sqrt(sqr(x31 - x36) + sqr(x131 - x136) + sqr(x231 - x236)) + 1/sqrt(sqr(
     x31 - x37) + sqr(x131 - x137) + sqr(x231 - x237)) + 1/sqrt(sqr(x31 - x38)
      + sqr(x131 - x138) + sqr(x231 - x238)) + 1/sqrt(sqr(x31 - x39) + sqr(x131
      - x139) + sqr(x231 - x239)) + 1/sqrt(sqr(x31 - x40) + sqr(x131 - x140) + 
     sqr(x231 - x240)) + 1/sqrt(sqr(x31 - x41) + sqr(x131 - x141) + sqr(x231 - 
     x241)) + 1/sqrt(sqr(x31 - x42) + sqr(x131 - x142) + sqr(x231 - x242)) + 1/
     sqrt(sqr(x31 - x43) + sqr(x131 - x143) + sqr(x231 - x243)) + 1/sqrt(sqr(
     x31 - x44) + sqr(x131 - x144) + sqr(x231 - x244)) + 1/sqrt(sqr(x31 - x45)
      + sqr(x131 - x145) + sqr(x231 - x245)) + 1/sqrt(sqr(x31 - x46) + sqr(x131
      - x146) + sqr(x231 - x246)) + 1/sqrt(sqr(x31 - x47) + sqr(x131 - x147) + 
     sqr(x231 - x247)) + 1/sqrt(sqr(x31 - x48) + sqr(x131 - x148) + sqr(x231 - 
     x248)) + 1/sqrt(sqr(x31 - x49) + sqr(x131 - x149) + sqr(x231 - x249)) + 1/
     sqrt(sqr(x31 - x50) + sqr(x131 - x150) + sqr(x231 - x250)) + 1/sqrt(sqr(
     x31 - x51) + sqr(x131 - x151) + sqr(x231 - x251)) + 1/sqrt(sqr(x31 - x52)
      + sqr(x131 - x152) + sqr(x231 - x252)) + 1/sqrt(sqr(x31 - x53) + sqr(x131
      - x153) + sqr(x231 - x253)) + 1/sqrt(sqr(x31 - x54) + sqr(x131 - x154) + 
     sqr(x231 - x254)) + 1/sqrt(sqr(x31 - x55) + sqr(x131 - x155) + sqr(x231 - 
     x255)) + 1/sqrt(sqr(x31 - x56) + sqr(x131 - x156) + sqr(x231 - x256)) + 1/
     sqrt(sqr(x31 - x57) + sqr(x131 - x157) + sqr(x231 - x257)) + 1/sqrt(sqr(
     x31 - x58) + sqr(x131 - x158) + sqr(x231 - x258)) + 1/sqrt(sqr(x31 - x59)
      + sqr(x131 - x159) + sqr(x231 - x259)) + 1/sqrt(sqr(x31 - x60) + sqr(x131
      - x160) + sqr(x231 - x260)) + 1/sqrt(sqr(x31 - x61) + sqr(x131 - x161) + 
     sqr(x231 - x261)) + 1/sqrt(sqr(x31 - x62) + sqr(x131 - x162) + sqr(x231 - 
     x262)) + 1/sqrt(sqr(x31 - x63) + sqr(x131 - x163) + sqr(x231 - x263)) + 1/
     sqrt(sqr(x31 - x64) + sqr(x131 - x164) + sqr(x231 - x264)) + 1/sqrt(sqr(
     x31 - x65) + sqr(x131 - x165) + sqr(x231 - x265)) + 1/sqrt(sqr(x31 - x66)
      + sqr(x131 - x166) + sqr(x231 - x266)) + 1/sqrt(sqr(x31 - x67) + sqr(x131
      - x167) + sqr(x231 - x267)) + 1/sqrt(sqr(x31 - x68) + sqr(x131 - x168) + 
     sqr(x231 - x268)) + 1/sqrt(sqr(x31 - x69) + sqr(x131 - x169) + sqr(x231 - 
     x269)) + 1/sqrt(sqr(x31 - x70) + sqr(x131 - x170) + sqr(x231 - x270)) + 1/
     sqrt(sqr(x31 - x71) + sqr(x131 - x171) + sqr(x231 - x271)) + 1/sqrt(sqr(
     x31 - x72) + sqr(x131 - x172) + sqr(x231 - x272)) + 1/sqrt(sqr(x31 - x73)
      + sqr(x131 - x173) + sqr(x231 - x273)) + 1/sqrt(sqr(x31 - x74) + sqr(x131
      - x174) + sqr(x231 - x274)) + 1/sqrt(sqr(x31 - x75) + sqr(x131 - x175) + 
     sqr(x231 - x275)) + 1/sqrt(sqr(x31 - x76) + sqr(x131 - x176) + sqr(x231 - 
     x276)) + 1/sqrt(sqr(x31 - x77) + sqr(x131 - x177) + sqr(x231 - x277)) + 1/
     sqrt(sqr(x31 - x78) + sqr(x131 - x178) + sqr(x231 - x278)) + 1/sqrt(sqr(
     x31 - x79) + sqr(x131 - x179) + sqr(x231 - x279)) + 1/sqrt(sqr(x31 - x80)
      + sqr(x131 - x180) + sqr(x231 - x280)) + 1/sqrt(sqr(x31 - x81) + sqr(x131
      - x181) + sqr(x231 - x281)) + 1/sqrt(sqr(x31 - x82) + sqr(x131 - x182) + 
     sqr(x231 - x282)) + 1/sqrt(sqr(x31 - x83) + sqr(x131 - x183) + sqr(x231 - 
     x283)) + 1/sqrt(sqr(x31 - x84) + sqr(x131 - x184) + sqr(x231 - x284)) + 1/
     sqrt(sqr(x31 - x85) + sqr(x131 - x185) + sqr(x231 - x285)) + 1/sqrt(sqr(
     x31 - x86) + sqr(x131 - x186) + sqr(x231 - x286)) + 1/sqrt(sqr(x31 - x87)
      + sqr(x131 - x187) + sqr(x231 - x287)) + 1/sqrt(sqr(x31 - x88) + sqr(x131
      - x188) + sqr(x231 - x288)) + 1/sqrt(sqr(x31 - x89) + sqr(x131 - x189) + 
     sqr(x231 - x289)) + 1/sqrt(sqr(x31 - x90) + sqr(x131 - x190) + sqr(x231 - 
     x290)) + 1/sqrt(sqr(x31 - x91) + sqr(x131 - x191) + sqr(x231 - x291)) + 1/
     sqrt(sqr(x31 - x92) + sqr(x131 - x192) + sqr(x231 - x292)) + 1/sqrt(sqr(
     x31 - x93) + sqr(x131 - x193) + sqr(x231 - x293)) + 1/sqrt(sqr(x31 - x94)
      + sqr(x131 - x194) + sqr(x231 - x294)) + 1/sqrt(sqr(x31 - x95) + sqr(x131
      - x195) + sqr(x231 - x295)) + 1/sqrt(sqr(x31 - x96) + sqr(x131 - x196) + 
     sqr(x231 - x296)) + 1/sqrt(sqr(x31 - x97) + sqr(x131 - x197) + sqr(x231 - 
     x297)) + 1/sqrt(sqr(x31 - x98) + sqr(x131 - x198) + sqr(x231 - x298)) + 1/
     sqrt(sqr(x31 - x99) + sqr(x131 - x199) + sqr(x231 - x299)) + 1/sqrt(sqr(
     x31 - x100) + sqr(x131 - x200) + sqr(x231 - x300)) + 1/sqrt(sqr(x32 - x33)
      + sqr(x132 - x133) + sqr(x232 - x233)) + 1/sqrt(sqr(x32 - x34) + sqr(x132
      - x134) + sqr(x232 - x234)) + 1/sqrt(sqr(x32 - x35) + sqr(x132 - x135) + 
     sqr(x232 - x235)) + 1/sqrt(sqr(x32 - x36) + sqr(x132 - x136) + sqr(x232 - 
     x236)) + 1/sqrt(sqr(x32 - x37) + sqr(x132 - x137) + sqr(x232 - x237)) + 1/
     sqrt(sqr(x32 - x38) + sqr(x132 - x138) + sqr(x232 - x238)) + 1/sqrt(sqr(
     x32 - x39) + sqr(x132 - x139) + sqr(x232 - x239)) + 1/sqrt(sqr(x32 - x40)
      + sqr(x132 - x140) + sqr(x232 - x240)) + 1/sqrt(sqr(x32 - x41) + sqr(x132
      - x141) + sqr(x232 - x241)) + 1/sqrt(sqr(x32 - x42) + sqr(x132 - x142) + 
     sqr(x232 - x242)) + 1/sqrt(sqr(x32 - x43) + sqr(x132 - x143) + sqr(x232 - 
     x243)) + 1/sqrt(sqr(x32 - x44) + sqr(x132 - x144) + sqr(x232 - x244)) + 1/
     sqrt(sqr(x32 - x45) + sqr(x132 - x145) + sqr(x232 - x245)) + 1/sqrt(sqr(
     x32 - x46) + sqr(x132 - x146) + sqr(x232 - x246)) + 1/sqrt(sqr(x32 - x47)
      + sqr(x132 - x147) + sqr(x232 - x247)) + 1/sqrt(sqr(x32 - x48) + sqr(x132
      - x148) + sqr(x232 - x248)) + 1/sqrt(sqr(x32 - x49) + sqr(x132 - x149) + 
     sqr(x232 - x249)) + 1/sqrt(sqr(x32 - x50) + sqr(x132 - x150) + sqr(x232 - 
     x250)) + 1/sqrt(sqr(x32 - x51) + sqr(x132 - x151) + sqr(x232 - x251)) + 1/
     sqrt(sqr(x32 - x52) + sqr(x132 - x152) + sqr(x232 - x252)) + 1/sqrt(sqr(
     x32 - x53) + sqr(x132 - x153) + sqr(x232 - x253)) + 1/sqrt(sqr(x32 - x54)
      + sqr(x132 - x154) + sqr(x232 - x254)) + 1/sqrt(sqr(x32 - x55) + sqr(x132
      - x155) + sqr(x232 - x255)) + 1/sqrt(sqr(x32 - x56) + sqr(x132 - x156) + 
     sqr(x232 - x256)) + 1/sqrt(sqr(x32 - x57) + sqr(x132 - x157) + sqr(x232 - 
     x257)) + 1/sqrt(sqr(x32 - x58) + sqr(x132 - x158) + sqr(x232 - x258)) + 1/
     sqrt(sqr(x32 - x59) + sqr(x132 - x159) + sqr(x232 - x259)) + 1/sqrt(sqr(
     x32 - x60) + sqr(x132 - x160) + sqr(x232 - x260)) + 1/sqrt(sqr(x32 - x61)
      + sqr(x132 - x161) + sqr(x232 - x261)) + 1/sqrt(sqr(x32 - x62) + sqr(x132
      - x162) + sqr(x232 - x262)) + 1/sqrt(sqr(x32 - x63) + sqr(x132 - x163) + 
     sqr(x232 - x263)) + 1/sqrt(sqr(x32 - x64) + sqr(x132 - x164) + sqr(x232 - 
     x264)) + 1/sqrt(sqr(x32 - x65) + sqr(x132 - x165) + sqr(x232 - x265)) + 1/
     sqrt(sqr(x32 - x66) + sqr(x132 - x166) + sqr(x232 - x266)) + 1/sqrt(sqr(
     x32 - x67) + sqr(x132 - x167) + sqr(x232 - x267)) + 1/sqrt(sqr(x32 - x68)
      + sqr(x132 - x168) + sqr(x232 - x268)) + 1/sqrt(sqr(x32 - x69) + sqr(x132
      - x169) + sqr(x232 - x269)) + 1/sqrt(sqr(x32 - x70) + sqr(x132 - x170) + 
     sqr(x232 - x270)) + 1/sqrt(sqr(x32 - x71) + sqr(x132 - x171) + sqr(x232 - 
     x271)) + 1/sqrt(sqr(x32 - x72) + sqr(x132 - x172) + sqr(x232 - x272)) + 1/
     sqrt(sqr(x32 - x73) + sqr(x132 - x173) + sqr(x232 - x273)) + 1/sqrt(sqr(
     x32 - x74) + sqr(x132 - x174) + sqr(x232 - x274)) + 1/sqrt(sqr(x32 - x75)
      + sqr(x132 - x175) + sqr(x232 - x275)) + 1/sqrt(sqr(x32 - x76) + sqr(x132
      - x176) + sqr(x232 - x276)) + 1/sqrt(sqr(x32 - x77) + sqr(x132 - x177) + 
     sqr(x232 - x277)) + 1/sqrt(sqr(x32 - x78) + sqr(x132 - x178) + sqr(x232 - 
     x278)) + 1/sqrt(sqr(x32 - x79) + sqr(x132 - x179) + sqr(x232 - x279)) + 1/
     sqrt(sqr(x32 - x80) + sqr(x132 - x180) + sqr(x232 - x280)) + 1/sqrt(sqr(
     x32 - x81) + sqr(x132 - x181) + sqr(x232 - x281)) + 1/sqrt(sqr(x32 - x82)
      + sqr(x132 - x182) + sqr(x232 - x282)) + 1/sqrt(sqr(x32 - x83) + sqr(x132
      - x183) + sqr(x232 - x283)) + 1/sqrt(sqr(x32 - x84) + sqr(x132 - x184) + 
     sqr(x232 - x284)) + 1/sqrt(sqr(x32 - x85) + sqr(x132 - x185) + sqr(x232 - 
     x285)) + 1/sqrt(sqr(x32 - x86) + sqr(x132 - x186) + sqr(x232 - x286)) + 1/
     sqrt(sqr(x32 - x87) + sqr(x132 - x187) + sqr(x232 - x287)) + 1/sqrt(sqr(
     x32 - x88) + sqr(x132 - x188) + sqr(x232 - x288)) + 1/sqrt(sqr(x32 - x89)
      + sqr(x132 - x189) + sqr(x232 - x289)) + 1/sqrt(sqr(x32 - x90) + sqr(x132
      - x190) + sqr(x232 - x290)) + 1/sqrt(sqr(x32 - x91) + sqr(x132 - x191) + 
     sqr(x232 - x291)) + 1/sqrt(sqr(x32 - x92) + sqr(x132 - x192) + sqr(x232 - 
     x292)) + 1/sqrt(sqr(x32 - x93) + sqr(x132 - x193) + sqr(x232 - x293)) + 1/
     sqrt(sqr(x32 - x94) + sqr(x132 - x194) + sqr(x232 - x294)) + 1/sqrt(sqr(
     x32 - x95) + sqr(x132 - x195) + sqr(x232 - x295)) + 1/sqrt(sqr(x32 - x96)
      + sqr(x132 - x196) + sqr(x232 - x296)) + 1/sqrt(sqr(x32 - x97) + sqr(x132
      - x197) + sqr(x232 - x297)) + 1/sqrt(sqr(x32 - x98) + sqr(x132 - x198) + 
     sqr(x232 - x298)) + 1/sqrt(sqr(x32 - x99) + sqr(x132 - x199) + sqr(x232 - 
     x299)) + 1/sqrt(sqr(x32 - x100) + sqr(x132 - x200) + sqr(x232 - x300)) + 1
     /sqrt(sqr(x33 - x34) + sqr(x133 - x134) + sqr(x233 - x234)) + 1/sqrt(sqr(
     x33 - x35) + sqr(x133 - x135) + sqr(x233 - x235)) + 1/sqrt(sqr(x33 - x36)
      + sqr(x133 - x136) + sqr(x233 - x236)) + 1/sqrt(sqr(x33 - x37) + sqr(x133
      - x137) + sqr(x233 - x237)) + 1/sqrt(sqr(x33 - x38) + sqr(x133 - x138) + 
     sqr(x233 - x238)) + 1/sqrt(sqr(x33 - x39) + sqr(x133 - x139) + sqr(x233 - 
     x239)) + 1/sqrt(sqr(x33 - x40) + sqr(x133 - x140) + sqr(x233 - x240)) + 1/
     sqrt(sqr(x33 - x41) + sqr(x133 - x141) + sqr(x233 - x241)) + 1/sqrt(sqr(
     x33 - x42) + sqr(x133 - x142) + sqr(x233 - x242)) + 1/sqrt(sqr(x33 - x43)
      + sqr(x133 - x143) + sqr(x233 - x243)) + 1/sqrt(sqr(x33 - x44) + sqr(x133
      - x144) + sqr(x233 - x244)) + 1/sqrt(sqr(x33 - x45) + sqr(x133 - x145) + 
     sqr(x233 - x245)) + 1/sqrt(sqr(x33 - x46) + sqr(x133 - x146) + sqr(x233 - 
     x246)) + 1/sqrt(sqr(x33 - x47) + sqr(x133 - x147) + sqr(x233 - x247)) + 1/
     sqrt(sqr(x33 - x48) + sqr(x133 - x148) + sqr(x233 - x248)) + 1/sqrt(sqr(
     x33 - x49) + sqr(x133 - x149) + sqr(x233 - x249)) + 1/sqrt(sqr(x33 - x50)
      + sqr(x133 - x150) + sqr(x233 - x250)) + 1/sqrt(sqr(x33 - x51) + sqr(x133
      - x151) + sqr(x233 - x251)) + 1/sqrt(sqr(x33 - x52) + sqr(x133 - x152) + 
     sqr(x233 - x252)) + 1/sqrt(sqr(x33 - x53) + sqr(x133 - x153) + sqr(x233 - 
     x253)) + 1/sqrt(sqr(x33 - x54) + sqr(x133 - x154) + sqr(x233 - x254)) + 1/
     sqrt(sqr(x33 - x55) + sqr(x133 - x155) + sqr(x233 - x255)) + 1/sqrt(sqr(
     x33 - x56) + sqr(x133 - x156) + sqr(x233 - x256)) + 1/sqrt(sqr(x33 - x57)
      + sqr(x133 - x157) + sqr(x233 - x257)) + 1/sqrt(sqr(x33 - x58) + sqr(x133
      - x158) + sqr(x233 - x258)) + 1/sqrt(sqr(x33 - x59) + sqr(x133 - x159) + 
     sqr(x233 - x259)) + 1/sqrt(sqr(x33 - x60) + sqr(x133 - x160) + sqr(x233 - 
     x260)) + 1/sqrt(sqr(x33 - x61) + sqr(x133 - x161) + sqr(x233 - x261)) + 1/
     sqrt(sqr(x33 - x62) + sqr(x133 - x162) + sqr(x233 - x262)) + 1/sqrt(sqr(
     x33 - x63) + sqr(x133 - x163) + sqr(x233 - x263)) + 1/sqrt(sqr(x33 - x64)
      + sqr(x133 - x164) + sqr(x233 - x264)) + 1/sqrt(sqr(x33 - x65) + sqr(x133
      - x165) + sqr(x233 - x265)) + 1/sqrt(sqr(x33 - x66) + sqr(x133 - x166) + 
     sqr(x233 - x266)) + 1/sqrt(sqr(x33 - x67) + sqr(x133 - x167) + sqr(x233 - 
     x267)) + 1/sqrt(sqr(x33 - x68) + sqr(x133 - x168) + sqr(x233 - x268)) + 1/
     sqrt(sqr(x33 - x69) + sqr(x133 - x169) + sqr(x233 - x269)) + 1/sqrt(sqr(
     x33 - x70) + sqr(x133 - x170) + sqr(x233 - x270)) + 1/sqrt(sqr(x33 - x71)
      + sqr(x133 - x171) + sqr(x233 - x271)) + 1/sqrt(sqr(x33 - x72) + sqr(x133
      - x172) + sqr(x233 - x272)) + 1/sqrt(sqr(x33 - x73) + sqr(x133 - x173) + 
     sqr(x233 - x273)) + 1/sqrt(sqr(x33 - x74) + sqr(x133 - x174) + sqr(x233 - 
     x274)) + 1/sqrt(sqr(x33 - x75) + sqr(x133 - x175) + sqr(x233 - x275)) + 1/
     sqrt(sqr(x33 - x76) + sqr(x133 - x176) + sqr(x233 - x276)) + 1/sqrt(sqr(
     x33 - x77) + sqr(x133 - x177) + sqr(x233 - x277)) + 1/sqrt(sqr(x33 - x78)
      + sqr(x133 - x178) + sqr(x233 - x278)) + 1/sqrt(sqr(x33 - x79) + sqr(x133
      - x179) + sqr(x233 - x279)) + 1/sqrt(sqr(x33 - x80) + sqr(x133 - x180) + 
     sqr(x233 - x280)) + 1/sqrt(sqr(x33 - x81) + sqr(x133 - x181) + sqr(x233 - 
     x281)) + 1/sqrt(sqr(x33 - x82) + sqr(x133 - x182) + sqr(x233 - x282)) + 1/
     sqrt(sqr(x33 - x83) + sqr(x133 - x183) + sqr(x233 - x283)) + 1/sqrt(sqr(
     x33 - x84) + sqr(x133 - x184) + sqr(x233 - x284)) + 1/sqrt(sqr(x33 - x85)
      + sqr(x133 - x185) + sqr(x233 - x285)) + 1/sqrt(sqr(x33 - x86) + sqr(x133
      - x186) + sqr(x233 - x286)) + 1/sqrt(sqr(x33 - x87) + sqr(x133 - x187) + 
     sqr(x233 - x287)) + 1/sqrt(sqr(x33 - x88) + sqr(x133 - x188) + sqr(x233 - 
     x288)) + 1/sqrt(sqr(x33 - x89) + sqr(x133 - x189) + sqr(x233 - x289)) + 1/
     sqrt(sqr(x33 - x90) + sqr(x133 - x190) + sqr(x233 - x290)) + 1/sqrt(sqr(
     x33 - x91) + sqr(x133 - x191) + sqr(x233 - x291)) + 1/sqrt(sqr(x33 - x92)
      + sqr(x133 - x192) + sqr(x233 - x292)) + 1/sqrt(sqr(x33 - x93) + sqr(x133
      - x193) + sqr(x233 - x293)) + 1/sqrt(sqr(x33 - x94) + sqr(x133 - x194) + 
     sqr(x233 - x294)) + 1/sqrt(sqr(x33 - x95) + sqr(x133 - x195) + sqr(x233 - 
     x295)) + 1/sqrt(sqr(x33 - x96) + sqr(x133 - x196) + sqr(x233 - x296)) + 1/
     sqrt(sqr(x33 - x97) + sqr(x133 - x197) + sqr(x233 - x297)) + 1/sqrt(sqr(
     x33 - x98) + sqr(x133 - x198) + sqr(x233 - x298)) + 1/sqrt(sqr(x33 - x99)
      + sqr(x133 - x199) + sqr(x233 - x299)) + 1/sqrt(sqr(x33 - x100) + sqr(
     x133 - x200) + sqr(x233 - x300)) + 1/sqrt(sqr(x34 - x35) + sqr(x134 - x135
     ) + sqr(x234 - x235)) + 1/sqrt(sqr(x34 - x36) + sqr(x134 - x136) + sqr(
     x234 - x236)) + 1/sqrt(sqr(x34 - x37) + sqr(x134 - x137) + sqr(x234 - x237
     )) + 1/sqrt(sqr(x34 - x38) + sqr(x134 - x138) + sqr(x234 - x238)) + 1/
     sqrt(sqr(x34 - x39) + sqr(x134 - x139) + sqr(x234 - x239)) + 1/sqrt(sqr(
     x34 - x40) + sqr(x134 - x140) + sqr(x234 - x240)) + 1/sqrt(sqr(x34 - x41)
      + sqr(x134 - x141) + sqr(x234 - x241)) + 1/sqrt(sqr(x34 - x42) + sqr(x134
      - x142) + sqr(x234 - x242)) + 1/sqrt(sqr(x34 - x43) + sqr(x134 - x143) + 
     sqr(x234 - x243)) + 1/sqrt(sqr(x34 - x44) + sqr(x134 - x144) + sqr(x234 - 
     x244)) + 1/sqrt(sqr(x34 - x45) + sqr(x134 - x145) + sqr(x234 - x245)) + 1/
     sqrt(sqr(x34 - x46) + sqr(x134 - x146) + sqr(x234 - x246)) + 1/sqrt(sqr(
     x34 - x47) + sqr(x134 - x147) + sqr(x234 - x247)) + 1/sqrt(sqr(x34 - x48)
      + sqr(x134 - x148) + sqr(x234 - x248)) + 1/sqrt(sqr(x34 - x49) + sqr(x134
      - x149) + sqr(x234 - x249)) + 1/sqrt(sqr(x34 - x50) + sqr(x134 - x150) + 
     sqr(x234 - x250)) + 1/sqrt(sqr(x34 - x51) + sqr(x134 - x151) + sqr(x234 - 
     x251)) + 1/sqrt(sqr(x34 - x52) + sqr(x134 - x152) + sqr(x234 - x252)) + 1/
     sqrt(sqr(x34 - x53) + sqr(x134 - x153) + sqr(x234 - x253)) + 1/sqrt(sqr(
     x34 - x54) + sqr(x134 - x154) + sqr(x234 - x254)) + 1/sqrt(sqr(x34 - x55)
      + sqr(x134 - x155) + sqr(x234 - x255)) + 1/sqrt(sqr(x34 - x56) + sqr(x134
      - x156) + sqr(x234 - x256)) + 1/sqrt(sqr(x34 - x57) + sqr(x134 - x157) + 
     sqr(x234 - x257)) + 1/sqrt(sqr(x34 - x58) + sqr(x134 - x158) + sqr(x234 - 
     x258)) + 1/sqrt(sqr(x34 - x59) + sqr(x134 - x159) + sqr(x234 - x259)) + 1/
     sqrt(sqr(x34 - x60) + sqr(x134 - x160) + sqr(x234 - x260)) + 1/sqrt(sqr(
     x34 - x61) + sqr(x134 - x161) + sqr(x234 - x261)) + 1/sqrt(sqr(x34 - x62)
      + sqr(x134 - x162) + sqr(x234 - x262)) + 1/sqrt(sqr(x34 - x63) + sqr(x134
      - x163) + sqr(x234 - x263)) + 1/sqrt(sqr(x34 - x64) + sqr(x134 - x164) + 
     sqr(x234 - x264)) + 1/sqrt(sqr(x34 - x65) + sqr(x134 - x165) + sqr(x234 - 
     x265)) + 1/sqrt(sqr(x34 - x66) + sqr(x134 - x166) + sqr(x234 - x266)) + 1/
     sqrt(sqr(x34 - x67) + sqr(x134 - x167) + sqr(x234 - x267)) + 1/sqrt(sqr(
     x34 - x68) + sqr(x134 - x168) + sqr(x234 - x268)) + 1/sqrt(sqr(x34 - x69)
      + sqr(x134 - x169) + sqr(x234 - x269)) + 1/sqrt(sqr(x34 - x70) + sqr(x134
      - x170) + sqr(x234 - x270)) + 1/sqrt(sqr(x34 - x71) + sqr(x134 - x171) + 
     sqr(x234 - x271)) + 1/sqrt(sqr(x34 - x72) + sqr(x134 - x172) + sqr(x234 - 
     x272)) + 1/sqrt(sqr(x34 - x73) + sqr(x134 - x173) + sqr(x234 - x273)) + 1/
     sqrt(sqr(x34 - x74) + sqr(x134 - x174) + sqr(x234 - x274)) + 1/sqrt(sqr(
     x34 - x75) + sqr(x134 - x175) + sqr(x234 - x275)) + 1/sqrt(sqr(x34 - x76)
      + sqr(x134 - x176) + sqr(x234 - x276)) + 1/sqrt(sqr(x34 - x77) + sqr(x134
      - x177) + sqr(x234 - x277)) + 1/sqrt(sqr(x34 - x78) + sqr(x134 - x178) + 
     sqr(x234 - x278)) + 1/sqrt(sqr(x34 - x79) + sqr(x134 - x179) + sqr(x234 - 
     x279)) + 1/sqrt(sqr(x34 - x80) + sqr(x134 - x180) + sqr(x234 - x280)) + 1/
     sqrt(sqr(x34 - x81) + sqr(x134 - x181) + sqr(x234 - x281)) + 1/sqrt(sqr(
     x34 - x82) + sqr(x134 - x182) + sqr(x234 - x282)) + 1/sqrt(sqr(x34 - x83)
      + sqr(x134 - x183) + sqr(x234 - x283)) + 1/sqrt(sqr(x34 - x84) + sqr(x134
      - x184) + sqr(x234 - x284)) + 1/sqrt(sqr(x34 - x85) + sqr(x134 - x185) + 
     sqr(x234 - x285)) + 1/sqrt(sqr(x34 - x86) + sqr(x134 - x186) + sqr(x234 - 
     x286)) + 1/sqrt(sqr(x34 - x87) + sqr(x134 - x187) + sqr(x234 - x287)) + 1/
     sqrt(sqr(x34 - x88) + sqr(x134 - x188) + sqr(x234 - x288)) + 1/sqrt(sqr(
     x34 - x89) + sqr(x134 - x189) + sqr(x234 - x289)) + 1/sqrt(sqr(x34 - x90)
      + sqr(x134 - x190) + sqr(x234 - x290)) + 1/sqrt(sqr(x34 - x91) + sqr(x134
      - x191) + sqr(x234 - x291)) + 1/sqrt(sqr(x34 - x92) + sqr(x134 - x192) + 
     sqr(x234 - x292)) + 1/sqrt(sqr(x34 - x93) + sqr(x134 - x193) + sqr(x234 - 
     x293)) + 1/sqrt(sqr(x34 - x94) + sqr(x134 - x194) + sqr(x234 - x294)) + 1/
     sqrt(sqr(x34 - x95) + sqr(x134 - x195) + sqr(x234 - x295)) + 1/sqrt(sqr(
     x34 - x96) + sqr(x134 - x196) + sqr(x234 - x296)) + 1/sqrt(sqr(x34 - x97)
      + sqr(x134 - x197) + sqr(x234 - x297)) + 1/sqrt(sqr(x34 - x98) + sqr(x134
      - x198) + sqr(x234 - x298)) + 1/sqrt(sqr(x34 - x99) + sqr(x134 - x199) + 
     sqr(x234 - x299)) + 1/sqrt(sqr(x34 - x100) + sqr(x134 - x200) + sqr(x234
      - x300)) + 1/sqrt(sqr(x35 - x36) + sqr(x135 - x136) + sqr(x235 - x236))
      + 1/sqrt(sqr(x35 - x37) + sqr(x135 - x137) + sqr(x235 - x237)) + 1/sqrt(
     sqr(x35 - x38) + sqr(x135 - x138) + sqr(x235 - x238)) + 1/sqrt(sqr(x35 - 
     x39) + sqr(x135 - x139) + sqr(x235 - x239)) + 1/sqrt(sqr(x35 - x40) + sqr(
     x135 - x140) + sqr(x235 - x240)) + 1/sqrt(sqr(x35 - x41) + sqr(x135 - x141
     ) + sqr(x235 - x241)) + 1/sqrt(sqr(x35 - x42) + sqr(x135 - x142) + sqr(
     x235 - x242)) + 1/sqrt(sqr(x35 - x43) + sqr(x135 - x143) + sqr(x235 - x243
     )) + 1/sqrt(sqr(x35 - x44) + sqr(x135 - x144) + sqr(x235 - x244)) + 1/
     sqrt(sqr(x35 - x45) + sqr(x135 - x145) + sqr(x235 - x245)) + 1/sqrt(sqr(
     x35 - x46) + sqr(x135 - x146) + sqr(x235 - x246)) + 1/sqrt(sqr(x35 - x47)
      + sqr(x135 - x147) + sqr(x235 - x247)) + 1/sqrt(sqr(x35 - x48) + sqr(x135
      - x148) + sqr(x235 - x248)) + 1/sqrt(sqr(x35 - x49) + sqr(x135 - x149) + 
     sqr(x235 - x249)) + 1/sqrt(sqr(x35 - x50) + sqr(x135 - x150) + sqr(x235 - 
     x250)) + 1/sqrt(sqr(x35 - x51) + sqr(x135 - x151) + sqr(x235 - x251)) + 1/
     sqrt(sqr(x35 - x52) + sqr(x135 - x152) + sqr(x235 - x252)) + 1/sqrt(sqr(
     x35 - x53) + sqr(x135 - x153) + sqr(x235 - x253)) + 1/sqrt(sqr(x35 - x54)
      + sqr(x135 - x154) + sqr(x235 - x254)) + 1/sqrt(sqr(x35 - x55) + sqr(x135
      - x155) + sqr(x235 - x255)) + 1/sqrt(sqr(x35 - x56) + sqr(x135 - x156) + 
     sqr(x235 - x256)) + 1/sqrt(sqr(x35 - x57) + sqr(x135 - x157) + sqr(x235 - 
     x257)) + 1/sqrt(sqr(x35 - x58) + sqr(x135 - x158) + sqr(x235 - x258)) + 1/
     sqrt(sqr(x35 - x59) + sqr(x135 - x159) + sqr(x235 - x259)) + 1/sqrt(sqr(
     x35 - x60) + sqr(x135 - x160) + sqr(x235 - x260)) + 1/sqrt(sqr(x35 - x61)
      + sqr(x135 - x161) + sqr(x235 - x261)) + 1/sqrt(sqr(x35 - x62) + sqr(x135
      - x162) + sqr(x235 - x262)) + 1/sqrt(sqr(x35 - x63) + sqr(x135 - x163) + 
     sqr(x235 - x263)) + 1/sqrt(sqr(x35 - x64) + sqr(x135 - x164) + sqr(x235 - 
     x264)) + 1/sqrt(sqr(x35 - x65) + sqr(x135 - x165) + sqr(x235 - x265)) + 1/
     sqrt(sqr(x35 - x66) + sqr(x135 - x166) + sqr(x235 - x266)) + 1/sqrt(sqr(
     x35 - x67) + sqr(x135 - x167) + sqr(x235 - x267)) + 1/sqrt(sqr(x35 - x68)
      + sqr(x135 - x168) + sqr(x235 - x268)) + 1/sqrt(sqr(x35 - x69) + sqr(x135
      - x169) + sqr(x235 - x269)) + 1/sqrt(sqr(x35 - x70) + sqr(x135 - x170) + 
     sqr(x235 - x270)) + 1/sqrt(sqr(x35 - x71) + sqr(x135 - x171) + sqr(x235 - 
     x271)) + 1/sqrt(sqr(x35 - x72) + sqr(x135 - x172) + sqr(x235 - x272)) + 1/
     sqrt(sqr(x35 - x73) + sqr(x135 - x173) + sqr(x235 - x273)) + 1/sqrt(sqr(
     x35 - x74) + sqr(x135 - x174) + sqr(x235 - x274)) + 1/sqrt(sqr(x35 - x75)
      + sqr(x135 - x175) + sqr(x235 - x275)) + 1/sqrt(sqr(x35 - x76) + sqr(x135
      - x176) + sqr(x235 - x276)) + 1/sqrt(sqr(x35 - x77) + sqr(x135 - x177) + 
     sqr(x235 - x277)) + 1/sqrt(sqr(x35 - x78) + sqr(x135 - x178) + sqr(x235 - 
     x278)) + 1/sqrt(sqr(x35 - x79) + sqr(x135 - x179) + sqr(x235 - x279)) + 1/
     sqrt(sqr(x35 - x80) + sqr(x135 - x180) + sqr(x235 - x280)) + 1/sqrt(sqr(
     x35 - x81) + sqr(x135 - x181) + sqr(x235 - x281)) + 1/sqrt(sqr(x35 - x82)
      + sqr(x135 - x182) + sqr(x235 - x282)) + 1/sqrt(sqr(x35 - x83) + sqr(x135
      - x183) + sqr(x235 - x283)) + 1/sqrt(sqr(x35 - x84) + sqr(x135 - x184) + 
     sqr(x235 - x284)) + 1/sqrt(sqr(x35 - x85) + sqr(x135 - x185) + sqr(x235 - 
     x285)) + 1/sqrt(sqr(x35 - x86) + sqr(x135 - x186) + sqr(x235 - x286)) + 1/
     sqrt(sqr(x35 - x87) + sqr(x135 - x187) + sqr(x235 - x287)) + 1/sqrt(sqr(
     x35 - x88) + sqr(x135 - x188) + sqr(x235 - x288)) + 1/sqrt(sqr(x35 - x89)
      + sqr(x135 - x189) + sqr(x235 - x289)) + 1/sqrt(sqr(x35 - x90) + sqr(x135
      - x190) + sqr(x235 - x290)) + 1/sqrt(sqr(x35 - x91) + sqr(x135 - x191) + 
     sqr(x235 - x291)) + 1/sqrt(sqr(x35 - x92) + sqr(x135 - x192) + sqr(x235 - 
     x292)) + 1/sqrt(sqr(x35 - x93) + sqr(x135 - x193) + sqr(x235 - x293)) + 1/
     sqrt(sqr(x35 - x94) + sqr(x135 - x194) + sqr(x235 - x294)) + 1/sqrt(sqr(
     x35 - x95) + sqr(x135 - x195) + sqr(x235 - x295)) + 1/sqrt(sqr(x35 - x96)
      + sqr(x135 - x196) + sqr(x235 - x296)) + 1/sqrt(sqr(x35 - x97) + sqr(x135
      - x197) + sqr(x235 - x297)) + 1/sqrt(sqr(x35 - x98) + sqr(x135 - x198) + 
     sqr(x235 - x298)) + 1/sqrt(sqr(x35 - x99) + sqr(x135 - x199) + sqr(x235 - 
     x299)) + 1/sqrt(sqr(x35 - x100) + sqr(x135 - x200) + sqr(x235 - x300)) + 1
     /sqrt(sqr(x36 - x37) + sqr(x136 - x137) + sqr(x236 - x237)) + 1/sqrt(sqr(
     x36 - x38) + sqr(x136 - x138) + sqr(x236 - x238)) + 1/sqrt(sqr(x36 - x39)
      + sqr(x136 - x139) + sqr(x236 - x239)) + 1/sqrt(sqr(x36 - x40) + sqr(x136
      - x140) + sqr(x236 - x240)) + 1/sqrt(sqr(x36 - x41) + sqr(x136 - x141) + 
     sqr(x236 - x241)) + 1/sqrt(sqr(x36 - x42) + sqr(x136 - x142) + sqr(x236 - 
     x242)) + 1/sqrt(sqr(x36 - x43) + sqr(x136 - x143) + sqr(x236 - x243)) + 1/
     sqrt(sqr(x36 - x44) + sqr(x136 - x144) + sqr(x236 - x244)) + 1/sqrt(sqr(
     x36 - x45) + sqr(x136 - x145) + sqr(x236 - x245)) + 1/sqrt(sqr(x36 - x46)
      + sqr(x136 - x146) + sqr(x236 - x246)) + 1/sqrt(sqr(x36 - x47) + sqr(x136
      - x147) + sqr(x236 - x247)) + 1/sqrt(sqr(x36 - x48) + sqr(x136 - x148) + 
     sqr(x236 - x248)) + 1/sqrt(sqr(x36 - x49) + sqr(x136 - x149) + sqr(x236 - 
     x249)) + 1/sqrt(sqr(x36 - x50) + sqr(x136 - x150) + sqr(x236 - x250)) + 1/
     sqrt(sqr(x36 - x51) + sqr(x136 - x151) + sqr(x236 - x251)) + 1/sqrt(sqr(
     x36 - x52) + sqr(x136 - x152) + sqr(x236 - x252)) + 1/sqrt(sqr(x36 - x53)
      + sqr(x136 - x153) + sqr(x236 - x253)) + 1/sqrt(sqr(x36 - x54) + sqr(x136
      - x154) + sqr(x236 - x254)) + 1/sqrt(sqr(x36 - x55) + sqr(x136 - x155) + 
     sqr(x236 - x255)) + 1/sqrt(sqr(x36 - x56) + sqr(x136 - x156) + sqr(x236 - 
     x256)) + 1/sqrt(sqr(x36 - x57) + sqr(x136 - x157) + sqr(x236 - x257)) + 1/
     sqrt(sqr(x36 - x58) + sqr(x136 - x158) + sqr(x236 - x258)) + 1/sqrt(sqr(
     x36 - x59) + sqr(x136 - x159) + sqr(x236 - x259)) + 1/sqrt(sqr(x36 - x60)
      + sqr(x136 - x160) + sqr(x236 - x260)) + 1/sqrt(sqr(x36 - x61) + sqr(x136
      - x161) + sqr(x236 - x261)) + 1/sqrt(sqr(x36 - x62) + sqr(x136 - x162) + 
     sqr(x236 - x262)) + 1/sqrt(sqr(x36 - x63) + sqr(x136 - x163) + sqr(x236 - 
     x263)) + 1/sqrt(sqr(x36 - x64) + sqr(x136 - x164) + sqr(x236 - x264)) + 1/
     sqrt(sqr(x36 - x65) + sqr(x136 - x165) + sqr(x236 - x265)) + 1/sqrt(sqr(
     x36 - x66) + sqr(x136 - x166) + sqr(x236 - x266)) + 1/sqrt(sqr(x36 - x67)
      + sqr(x136 - x167) + sqr(x236 - x267)) + 1/sqrt(sqr(x36 - x68) + sqr(x136
      - x168) + sqr(x236 - x268)) + 1/sqrt(sqr(x36 - x69) + sqr(x136 - x169) + 
     sqr(x236 - x269)) + 1/sqrt(sqr(x36 - x70) + sqr(x136 - x170) + sqr(x236 - 
     x270)) + 1/sqrt(sqr(x36 - x71) + sqr(x136 - x171) + sqr(x236 - x271)) + 1/
     sqrt(sqr(x36 - x72) + sqr(x136 - x172) + sqr(x236 - x272)) + 1/sqrt(sqr(
     x36 - x73) + sqr(x136 - x173) + sqr(x236 - x273)) + 1/sqrt(sqr(x36 - x74)
      + sqr(x136 - x174) + sqr(x236 - x274)) + 1/sqrt(sqr(x36 - x75) + sqr(x136
      - x175) + sqr(x236 - x275)) + 1/sqrt(sqr(x36 - x76) + sqr(x136 - x176) + 
     sqr(x236 - x276)) + 1/sqrt(sqr(x36 - x77) + sqr(x136 - x177) + sqr(x236 - 
     x277)) + 1/sqrt(sqr(x36 - x78) + sqr(x136 - x178) + sqr(x236 - x278)) + 1/
     sqrt(sqr(x36 - x79) + sqr(x136 - x179) + sqr(x236 - x279)) + 1/sqrt(sqr(
     x36 - x80) + sqr(x136 - x180) + sqr(x236 - x280)) + 1/sqrt(sqr(x36 - x81)
      + sqr(x136 - x181) + sqr(x236 - x281)) + 1/sqrt(sqr(x36 - x82) + sqr(x136
      - x182) + sqr(x236 - x282)) + 1/sqrt(sqr(x36 - x83) + sqr(x136 - x183) + 
     sqr(x236 - x283)) + 1/sqrt(sqr(x36 - x84) + sqr(x136 - x184) + sqr(x236 - 
     x284)) + 1/sqrt(sqr(x36 - x85) + sqr(x136 - x185) + sqr(x236 - x285)) + 1/
     sqrt(sqr(x36 - x86) + sqr(x136 - x186) + sqr(x236 - x286)) + 1/sqrt(sqr(
     x36 - x87) + sqr(x136 - x187) + sqr(x236 - x287)) + 1/sqrt(sqr(x36 - x88)
      + sqr(x136 - x188) + sqr(x236 - x288)) + 1/sqrt(sqr(x36 - x89) + sqr(x136
      - x189) + sqr(x236 - x289)) + 1/sqrt(sqr(x36 - x90) + sqr(x136 - x190) + 
     sqr(x236 - x290)) + 1/sqrt(sqr(x36 - x91) + sqr(x136 - x191) + sqr(x236 - 
     x291)) + 1/sqrt(sqr(x36 - x92) + sqr(x136 - x192) + sqr(x236 - x292)) + 1/
     sqrt(sqr(x36 - x93) + sqr(x136 - x193) + sqr(x236 - x293)) + 1/sqrt(sqr(
     x36 - x94) + sqr(x136 - x194) + sqr(x236 - x294)) + 1/sqrt(sqr(x36 - x95)
      + sqr(x136 - x195) + sqr(x236 - x295)) + 1/sqrt(sqr(x36 - x96) + sqr(x136
      - x196) + sqr(x236 - x296)) + 1/sqrt(sqr(x36 - x97) + sqr(x136 - x197) + 
     sqr(x236 - x297)) + 1/sqrt(sqr(x36 - x98) + sqr(x136 - x198) + sqr(x236 - 
     x298)) + 1/sqrt(sqr(x36 - x99) + sqr(x136 - x199) + sqr(x236 - x299)) + 1/
     sqrt(sqr(x36 - x100) + sqr(x136 - x200) + sqr(x236 - x300)) + 1/sqrt(sqr(
     x37 - x38) + sqr(x137 - x138) + sqr(x237 - x238)) + 1/sqrt(sqr(x37 - x39)
      + sqr(x137 - x139) + sqr(x237 - x239)) + 1/sqrt(sqr(x37 - x40) + sqr(x137
      - x140) + sqr(x237 - x240)) + 1/sqrt(sqr(x37 - x41) + sqr(x137 - x141) + 
     sqr(x237 - x241)) + 1/sqrt(sqr(x37 - x42) + sqr(x137 - x142) + sqr(x237 - 
     x242)) + 1/sqrt(sqr(x37 - x43) + sqr(x137 - x143) + sqr(x237 - x243)) + 1/
     sqrt(sqr(x37 - x44) + sqr(x137 - x144) + sqr(x237 - x244)) + 1/sqrt(sqr(
     x37 - x45) + sqr(x137 - x145) + sqr(x237 - x245)) + 1/sqrt(sqr(x37 - x46)
      + sqr(x137 - x146) + sqr(x237 - x246)) + 1/sqrt(sqr(x37 - x47) + sqr(x137
      - x147) + sqr(x237 - x247)) + 1/sqrt(sqr(x37 - x48) + sqr(x137 - x148) + 
     sqr(x237 - x248)) + 1/sqrt(sqr(x37 - x49) + sqr(x137 - x149) + sqr(x237 - 
     x249)) + 1/sqrt(sqr(x37 - x50) + sqr(x137 - x150) + sqr(x237 - x250)) + 1/
     sqrt(sqr(x37 - x51) + sqr(x137 - x151) + sqr(x237 - x251)) + 1/sqrt(sqr(
     x37 - x52) + sqr(x137 - x152) + sqr(x237 - x252)) + 1/sqrt(sqr(x37 - x53)
      + sqr(x137 - x153) + sqr(x237 - x253)) + 1/sqrt(sqr(x37 - x54) + sqr(x137
      - x154) + sqr(x237 - x254)) + 1/sqrt(sqr(x37 - x55) + sqr(x137 - x155) + 
     sqr(x237 - x255)) + 1/sqrt(sqr(x37 - x56) + sqr(x137 - x156) + sqr(x237 - 
     x256)) + 1/sqrt(sqr(x37 - x57) + sqr(x137 - x157) + sqr(x237 - x257)) + 1/
     sqrt(sqr(x37 - x58) + sqr(x137 - x158) + sqr(x237 - x258)) + 1/sqrt(sqr(
     x37 - x59) + sqr(x137 - x159) + sqr(x237 - x259)) + 1/sqrt(sqr(x37 - x60)
      + sqr(x137 - x160) + sqr(x237 - x260)) + 1/sqrt(sqr(x37 - x61) + sqr(x137
      - x161) + sqr(x237 - x261)) + 1/sqrt(sqr(x37 - x62) + sqr(x137 - x162) + 
     sqr(x237 - x262)) + 1/sqrt(sqr(x37 - x63) + sqr(x137 - x163) + sqr(x237 - 
     x263)) + 1/sqrt(sqr(x37 - x64) + sqr(x137 - x164) + sqr(x237 - x264)) + 1/
     sqrt(sqr(x37 - x65) + sqr(x137 - x165) + sqr(x237 - x265)) + 1/sqrt(sqr(
     x37 - x66) + sqr(x137 - x166) + sqr(x237 - x266)) + 1/sqrt(sqr(x37 - x67)
      + sqr(x137 - x167) + sqr(x237 - x267)) + 1/sqrt(sqr(x37 - x68) + sqr(x137
      - x168) + sqr(x237 - x268)) + 1/sqrt(sqr(x37 - x69) + sqr(x137 - x169) + 
     sqr(x237 - x269)) + 1/sqrt(sqr(x37 - x70) + sqr(x137 - x170) + sqr(x237 - 
     x270)) + 1/sqrt(sqr(x37 - x71) + sqr(x137 - x171) + sqr(x237 - x271)) + 1/
     sqrt(sqr(x37 - x72) + sqr(x137 - x172) + sqr(x237 - x272)) + 1/sqrt(sqr(
     x37 - x73) + sqr(x137 - x173) + sqr(x237 - x273)) + 1/sqrt(sqr(x37 - x74)
      + sqr(x137 - x174) + sqr(x237 - x274)) + 1/sqrt(sqr(x37 - x75) + sqr(x137
      - x175) + sqr(x237 - x275)) + 1/sqrt(sqr(x37 - x76) + sqr(x137 - x176) + 
     sqr(x237 - x276)) + 1/sqrt(sqr(x37 - x77) + sqr(x137 - x177) + sqr(x237 - 
     x277)) + 1/sqrt(sqr(x37 - x78) + sqr(x137 - x178) + sqr(x237 - x278)) + 1/
     sqrt(sqr(x37 - x79) + sqr(x137 - x179) + sqr(x237 - x279)) + 1/sqrt(sqr(
     x37 - x80) + sqr(x137 - x180) + sqr(x237 - x280)) + 1/sqrt(sqr(x37 - x81)
      + sqr(x137 - x181) + sqr(x237 - x281)) + 1/sqrt(sqr(x37 - x82) + sqr(x137
      - x182) + sqr(x237 - x282)) + 1/sqrt(sqr(x37 - x83) + sqr(x137 - x183) + 
     sqr(x237 - x283)) + 1/sqrt(sqr(x37 - x84) + sqr(x137 - x184) + sqr(x237 - 
     x284)) + 1/sqrt(sqr(x37 - x85) + sqr(x137 - x185) + sqr(x237 - x285)) + 1/
     sqrt(sqr(x37 - x86) + sqr(x137 - x186) + sqr(x237 - x286)) + 1/sqrt(sqr(
     x37 - x87) + sqr(x137 - x187) + sqr(x237 - x287)) + 1/sqrt(sqr(x37 - x88)
      + sqr(x137 - x188) + sqr(x237 - x288)) + 1/sqrt(sqr(x37 - x89) + sqr(x137
      - x189) + sqr(x237 - x289)) + 1/sqrt(sqr(x37 - x90) + sqr(x137 - x190) + 
     sqr(x237 - x290)) + 1/sqrt(sqr(x37 - x91) + sqr(x137 - x191) + sqr(x237 - 
     x291)) + 1/sqrt(sqr(x37 - x92) + sqr(x137 - x192) + sqr(x237 - x292)) + 1/
     sqrt(sqr(x37 - x93) + sqr(x137 - x193) + sqr(x237 - x293)) + 1/sqrt(sqr(
     x37 - x94) + sqr(x137 - x194) + sqr(x237 - x294)) + 1/sqrt(sqr(x37 - x95)
      + sqr(x137 - x195) + sqr(x237 - x295)) + 1/sqrt(sqr(x37 - x96) + sqr(x137
      - x196) + sqr(x237 - x296)) + 1/sqrt(sqr(x37 - x97) + sqr(x137 - x197) + 
     sqr(x237 - x297)) + 1/sqrt(sqr(x37 - x98) + sqr(x137 - x198) + sqr(x237 - 
     x298)) + 1/sqrt(sqr(x37 - x99) + sqr(x137 - x199) + sqr(x237 - x299)) + 1/
     sqrt(sqr(x37 - x100) + sqr(x137 - x200) + sqr(x237 - x300)) + 1/sqrt(sqr(
     x38 - x39) + sqr(x138 - x139) + sqr(x238 - x239)) + 1/sqrt(sqr(x38 - x40)
      + sqr(x138 - x140) + sqr(x238 - x240)) + 1/sqrt(sqr(x38 - x41) + sqr(x138
      - x141) + sqr(x238 - x241)) + 1/sqrt(sqr(x38 - x42) + sqr(x138 - x142) + 
     sqr(x238 - x242)) + 1/sqrt(sqr(x38 - x43) + sqr(x138 - x143) + sqr(x238 - 
     x243)) + 1/sqrt(sqr(x38 - x44) + sqr(x138 - x144) + sqr(x238 - x244)) + 1/
     sqrt(sqr(x38 - x45) + sqr(x138 - x145) + sqr(x238 - x245)) + 1/sqrt(sqr(
     x38 - x46) + sqr(x138 - x146) + sqr(x238 - x246)) + 1/sqrt(sqr(x38 - x47)
      + sqr(x138 - x147) + sqr(x238 - x247)) + 1/sqrt(sqr(x38 - x48) + sqr(x138
      - x148) + sqr(x238 - x248)) + 1/sqrt(sqr(x38 - x49) + sqr(x138 - x149) + 
     sqr(x238 - x249)) + 1/sqrt(sqr(x38 - x50) + sqr(x138 - x150) + sqr(x238 - 
     x250)) + 1/sqrt(sqr(x38 - x51) + sqr(x138 - x151) + sqr(x238 - x251)) + 1/
     sqrt(sqr(x38 - x52) + sqr(x138 - x152) + sqr(x238 - x252)) + 1/sqrt(sqr(
     x38 - x53) + sqr(x138 - x153) + sqr(x238 - x253)) + 1/sqrt(sqr(x38 - x54)
      + sqr(x138 - x154) + sqr(x238 - x254)) + 1/sqrt(sqr(x38 - x55) + sqr(x138
      - x155) + sqr(x238 - x255)) + 1/sqrt(sqr(x38 - x56) + sqr(x138 - x156) + 
     sqr(x238 - x256)) + 1/sqrt(sqr(x38 - x57) + sqr(x138 - x157) + sqr(x238 - 
     x257)) + 1/sqrt(sqr(x38 - x58) + sqr(x138 - x158) + sqr(x238 - x258)) + 1/
     sqrt(sqr(x38 - x59) + sqr(x138 - x159) + sqr(x238 - x259)) + 1/sqrt(sqr(
     x38 - x60) + sqr(x138 - x160) + sqr(x238 - x260)) + 1/sqrt(sqr(x38 - x61)
      + sqr(x138 - x161) + sqr(x238 - x261)) + 1/sqrt(sqr(x38 - x62) + sqr(x138
      - x162) + sqr(x238 - x262)) + 1/sqrt(sqr(x38 - x63) + sqr(x138 - x163) + 
     sqr(x238 - x263)) + 1/sqrt(sqr(x38 - x64) + sqr(x138 - x164) + sqr(x238 - 
     x264)) + 1/sqrt(sqr(x38 - x65) + sqr(x138 - x165) + sqr(x238 - x265)) + 1/
     sqrt(sqr(x38 - x66) + sqr(x138 - x166) + sqr(x238 - x266)) + 1/sqrt(sqr(
     x38 - x67) + sqr(x138 - x167) + sqr(x238 - x267)) + 1/sqrt(sqr(x38 - x68)
      + sqr(x138 - x168) + sqr(x238 - x268)) + 1/sqrt(sqr(x38 - x69) + sqr(x138
      - x169) + sqr(x238 - x269)) + 1/sqrt(sqr(x38 - x70) + sqr(x138 - x170) + 
     sqr(x238 - x270)) + 1/sqrt(sqr(x38 - x71) + sqr(x138 - x171) + sqr(x238 - 
     x271)) + 1/sqrt(sqr(x38 - x72) + sqr(x138 - x172) + sqr(x238 - x272)) + 1/
     sqrt(sqr(x38 - x73) + sqr(x138 - x173) + sqr(x238 - x273)) + 1/sqrt(sqr(
     x38 - x74) + sqr(x138 - x174) + sqr(x238 - x274)) + 1/sqrt(sqr(x38 - x75)
      + sqr(x138 - x175) + sqr(x238 - x275)) + 1/sqrt(sqr(x38 - x76) + sqr(x138
      - x176) + sqr(x238 - x276)) + 1/sqrt(sqr(x38 - x77) + sqr(x138 - x177) + 
     sqr(x238 - x277)) + 1/sqrt(sqr(x38 - x78) + sqr(x138 - x178) + sqr(x238 - 
     x278)) + 1/sqrt(sqr(x38 - x79) + sqr(x138 - x179) + sqr(x238 - x279)) + 1/
     sqrt(sqr(x38 - x80) + sqr(x138 - x180) + sqr(x238 - x280)) + 1/sqrt(sqr(
     x38 - x81) + sqr(x138 - x181) + sqr(x238 - x281)) + 1/sqrt(sqr(x38 - x82)
      + sqr(x138 - x182) + sqr(x238 - x282)) + 1/sqrt(sqr(x38 - x83) + sqr(x138
      - x183) + sqr(x238 - x283)) + 1/sqrt(sqr(x38 - x84) + sqr(x138 - x184) + 
     sqr(x238 - x284)) + 1/sqrt(sqr(x38 - x85) + sqr(x138 - x185) + sqr(x238 - 
     x285)) + 1/sqrt(sqr(x38 - x86) + sqr(x138 - x186) + sqr(x238 - x286)) + 1/
     sqrt(sqr(x38 - x87) + sqr(x138 - x187) + sqr(x238 - x287)) + 1/sqrt(sqr(
     x38 - x88) + sqr(x138 - x188) + sqr(x238 - x288)) + 1/sqrt(sqr(x38 - x89)
      + sqr(x138 - x189) + sqr(x238 - x289)) + 1/sqrt(sqr(x38 - x90) + sqr(x138
      - x190) + sqr(x238 - x290)) + 1/sqrt(sqr(x38 - x91) + sqr(x138 - x191) + 
     sqr(x238 - x291)) + 1/sqrt(sqr(x38 - x92) + sqr(x138 - x192) + sqr(x238 - 
     x292)) + 1/sqrt(sqr(x38 - x93) + sqr(x138 - x193) + sqr(x238 - x293)) + 1/
     sqrt(sqr(x38 - x94) + sqr(x138 - x194) + sqr(x238 - x294)) + 1/sqrt(sqr(
     x38 - x95) + sqr(x138 - x195) + sqr(x238 - x295)) + 1/sqrt(sqr(x38 - x96)
      + sqr(x138 - x196) + sqr(x238 - x296)) + 1/sqrt(sqr(x38 - x97) + sqr(x138
      - x197) + sqr(x238 - x297)) + 1/sqrt(sqr(x38 - x98) + sqr(x138 - x198) + 
     sqr(x238 - x298)) + 1/sqrt(sqr(x38 - x99) + sqr(x138 - x199) + sqr(x238 - 
     x299)) + 1/sqrt(sqr(x38 - x100) + sqr(x138 - x200) + sqr(x238 - x300)) + 1
     /sqrt(sqr(x39 - x40) + sqr(x139 - x140) + sqr(x239 - x240)) + 1/sqrt(sqr(
     x39 - x41) + sqr(x139 - x141) + sqr(x239 - x241)) + 1/sqrt(sqr(x39 - x42)
      + sqr(x139 - x142) + sqr(x239 - x242)) + 1/sqrt(sqr(x39 - x43) + sqr(x139
      - x143) + sqr(x239 - x243)) + 1/sqrt(sqr(x39 - x44) + sqr(x139 - x144) + 
     sqr(x239 - x244)) + 1/sqrt(sqr(x39 - x45) + sqr(x139 - x145) + sqr(x239 - 
     x245)) + 1/sqrt(sqr(x39 - x46) + sqr(x139 - x146) + sqr(x239 - x246)) + 1/
     sqrt(sqr(x39 - x47) + sqr(x139 - x147) + sqr(x239 - x247)) + 1/sqrt(sqr(
     x39 - x48) + sqr(x139 - x148) + sqr(x239 - x248)) + 1/sqrt(sqr(x39 - x49)
      + sqr(x139 - x149) + sqr(x239 - x249)) + 1/sqrt(sqr(x39 - x50) + sqr(x139
      - x150) + sqr(x239 - x250)) + 1/sqrt(sqr(x39 - x51) + sqr(x139 - x151) + 
     sqr(x239 - x251)) + 1/sqrt(sqr(x39 - x52) + sqr(x139 - x152) + sqr(x239 - 
     x252)) + 1/sqrt(sqr(x39 - x53) + sqr(x139 - x153) + sqr(x239 - x253)) + 1/
     sqrt(sqr(x39 - x54) + sqr(x139 - x154) + sqr(x239 - x254)) + 1/sqrt(sqr(
     x39 - x55) + sqr(x139 - x155) + sqr(x239 - x255)) + 1/sqrt(sqr(x39 - x56)
      + sqr(x139 - x156) + sqr(x239 - x256)) + 1/sqrt(sqr(x39 - x57) + sqr(x139
      - x157) + sqr(x239 - x257)) + 1/sqrt(sqr(x39 - x58) + sqr(x139 - x158) + 
     sqr(x239 - x258)) + 1/sqrt(sqr(x39 - x59) + sqr(x139 - x159) + sqr(x239 - 
     x259)) + 1/sqrt(sqr(x39 - x60) + sqr(x139 - x160) + sqr(x239 - x260)) + 1/
     sqrt(sqr(x39 - x61) + sqr(x139 - x161) + sqr(x239 - x261)) + 1/sqrt(sqr(
     x39 - x62) + sqr(x139 - x162) + sqr(x239 - x262)) + 1/sqrt(sqr(x39 - x63)
      + sqr(x139 - x163) + sqr(x239 - x263)) + 1/sqrt(sqr(x39 - x64) + sqr(x139
      - x164) + sqr(x239 - x264)) + 1/sqrt(sqr(x39 - x65) + sqr(x139 - x165) + 
     sqr(x239 - x265)) + 1/sqrt(sqr(x39 - x66) + sqr(x139 - x166) + sqr(x239 - 
     x266)) + 1/sqrt(sqr(x39 - x67) + sqr(x139 - x167) + sqr(x239 - x267)) + 1/
     sqrt(sqr(x39 - x68) + sqr(x139 - x168) + sqr(x239 - x268)) + 1/sqrt(sqr(
     x39 - x69) + sqr(x139 - x169) + sqr(x239 - x269)) + 1/sqrt(sqr(x39 - x70)
      + sqr(x139 - x170) + sqr(x239 - x270)) + 1/sqrt(sqr(x39 - x71) + sqr(x139
      - x171) + sqr(x239 - x271)) + 1/sqrt(sqr(x39 - x72) + sqr(x139 - x172) + 
     sqr(x239 - x272)) + 1/sqrt(sqr(x39 - x73) + sqr(x139 - x173) + sqr(x239 - 
     x273)) + 1/sqrt(sqr(x39 - x74) + sqr(x139 - x174) + sqr(x239 - x274)) + 1/
     sqrt(sqr(x39 - x75) + sqr(x139 - x175) + sqr(x239 - x275)) + 1/sqrt(sqr(
     x39 - x76) + sqr(x139 - x176) + sqr(x239 - x276)) + 1/sqrt(sqr(x39 - x77)
      + sqr(x139 - x177) + sqr(x239 - x277)) + 1/sqrt(sqr(x39 - x78) + sqr(x139
      - x178) + sqr(x239 - x278)) + 1/sqrt(sqr(x39 - x79) + sqr(x139 - x179) + 
     sqr(x239 - x279)) + 1/sqrt(sqr(x39 - x80) + sqr(x139 - x180) + sqr(x239 - 
     x280)) + 1/sqrt(sqr(x39 - x81) + sqr(x139 - x181) + sqr(x239 - x281)) + 1/
     sqrt(sqr(x39 - x82) + sqr(x139 - x182) + sqr(x239 - x282)) + 1/sqrt(sqr(
     x39 - x83) + sqr(x139 - x183) + sqr(x239 - x283)) + 1/sqrt(sqr(x39 - x84)
      + sqr(x139 - x184) + sqr(x239 - x284)) + 1/sqrt(sqr(x39 - x85) + sqr(x139
      - x185) + sqr(x239 - x285)) + 1/sqrt(sqr(x39 - x86) + sqr(x139 - x186) + 
     sqr(x239 - x286)) + 1/sqrt(sqr(x39 - x87) + sqr(x139 - x187) + sqr(x239 - 
     x287)) + 1/sqrt(sqr(x39 - x88) + sqr(x139 - x188) + sqr(x239 - x288)) + 1/
     sqrt(sqr(x39 - x89) + sqr(x139 - x189) + sqr(x239 - x289)) + 1/sqrt(sqr(
     x39 - x90) + sqr(x139 - x190) + sqr(x239 - x290)) + 1/sqrt(sqr(x39 - x91)
      + sqr(x139 - x191) + sqr(x239 - x291)) + 1/sqrt(sqr(x39 - x92) + sqr(x139
      - x192) + sqr(x239 - x292)) + 1/sqrt(sqr(x39 - x93) + sqr(x139 - x193) + 
     sqr(x239 - x293)) + 1/sqrt(sqr(x39 - x94) + sqr(x139 - x194) + sqr(x239 - 
     x294)) + 1/sqrt(sqr(x39 - x95) + sqr(x139 - x195) + sqr(x239 - x295)) + 1/
     sqrt(sqr(x39 - x96) + sqr(x139 - x196) + sqr(x239 - x296)) + 1/sqrt(sqr(
     x39 - x97) + sqr(x139 - x197) + sqr(x239 - x297)) + 1/sqrt(sqr(x39 - x98)
      + sqr(x139 - x198) + sqr(x239 - x298)) + 1/sqrt(sqr(x39 - x99) + sqr(x139
      - x199) + sqr(x239 - x299)) + 1/sqrt(sqr(x39 - x100) + sqr(x139 - x200)
      + sqr(x239 - x300)) + 1/sqrt(sqr(x40 - x41) + sqr(x140 - x141) + sqr(x240
      - x241)) + 1/sqrt(sqr(x40 - x42) + sqr(x140 - x142) + sqr(x240 - x242))
      + 1/sqrt(sqr(x40 - x43) + sqr(x140 - x143) + sqr(x240 - x243)) + 1/sqrt(
     sqr(x40 - x44) + sqr(x140 - x144) + sqr(x240 - x244)) + 1/sqrt(sqr(x40 - 
     x45) + sqr(x140 - x145) + sqr(x240 - x245)) + 1/sqrt(sqr(x40 - x46) + sqr(
     x140 - x146) + sqr(x240 - x246)) + 1/sqrt(sqr(x40 - x47) + sqr(x140 - x147
     ) + sqr(x240 - x247)) + 1/sqrt(sqr(x40 - x48) + sqr(x140 - x148) + sqr(
     x240 - x248)) + 1/sqrt(sqr(x40 - x49) + sqr(x140 - x149) + sqr(x240 - x249
     )) + 1/sqrt(sqr(x40 - x50) + sqr(x140 - x150) + sqr(x240 - x250)) + 1/
     sqrt(sqr(x40 - x51) + sqr(x140 - x151) + sqr(x240 - x251)) + 1/sqrt(sqr(
     x40 - x52) + sqr(x140 - x152) + sqr(x240 - x252)) + 1/sqrt(sqr(x40 - x53)
      + sqr(x140 - x153) + sqr(x240 - x253)) + 1/sqrt(sqr(x40 - x54) + sqr(x140
      - x154) + sqr(x240 - x254)) + 1/sqrt(sqr(x40 - x55) + sqr(x140 - x155) + 
     sqr(x240 - x255)) + 1/sqrt(sqr(x40 - x56) + sqr(x140 - x156) + sqr(x240 - 
     x256)) + 1/sqrt(sqr(x40 - x57) + sqr(x140 - x157) + sqr(x240 - x257)) + 1/
     sqrt(sqr(x40 - x58) + sqr(x140 - x158) + sqr(x240 - x258)) + 1/sqrt(sqr(
     x40 - x59) + sqr(x140 - x159) + sqr(x240 - x259)) + 1/sqrt(sqr(x40 - x60)
      + sqr(x140 - x160) + sqr(x240 - x260)) + 1/sqrt(sqr(x40 - x61) + sqr(x140
      - x161) + sqr(x240 - x261)) + 1/sqrt(sqr(x40 - x62) + sqr(x140 - x162) + 
     sqr(x240 - x262)) + 1/sqrt(sqr(x40 - x63) + sqr(x140 - x163) + sqr(x240 - 
     x263)) + 1/sqrt(sqr(x40 - x64) + sqr(x140 - x164) + sqr(x240 - x264)) + 1/
     sqrt(sqr(x40 - x65) + sqr(x140 - x165) + sqr(x240 - x265)) + 1/sqrt(sqr(
     x40 - x66) + sqr(x140 - x166) + sqr(x240 - x266)) + 1/sqrt(sqr(x40 - x67)
      + sqr(x140 - x167) + sqr(x240 - x267)) + 1/sqrt(sqr(x40 - x68) + sqr(x140
      - x168) + sqr(x240 - x268)) + 1/sqrt(sqr(x40 - x69) + sqr(x140 - x169) + 
     sqr(x240 - x269)) + 1/sqrt(sqr(x40 - x70) + sqr(x140 - x170) + sqr(x240 - 
     x270)) + 1/sqrt(sqr(x40 - x71) + sqr(x140 - x171) + sqr(x240 - x271)) + 1/
     sqrt(sqr(x40 - x72) + sqr(x140 - x172) + sqr(x240 - x272)) + 1/sqrt(sqr(
     x40 - x73) + sqr(x140 - x173) + sqr(x240 - x273)) + 1/sqrt(sqr(x40 - x74)
      + sqr(x140 - x174) + sqr(x240 - x274)) + 1/sqrt(sqr(x40 - x75) + sqr(x140
      - x175) + sqr(x240 - x275)) + 1/sqrt(sqr(x40 - x76) + sqr(x140 - x176) + 
     sqr(x240 - x276)) + 1/sqrt(sqr(x40 - x77) + sqr(x140 - x177) + sqr(x240 - 
     x277)) + 1/sqrt(sqr(x40 - x78) + sqr(x140 - x178) + sqr(x240 - x278)) + 1/
     sqrt(sqr(x40 - x79) + sqr(x140 - x179) + sqr(x240 - x279)) + 1/sqrt(sqr(
     x40 - x80) + sqr(x140 - x180) + sqr(x240 - x280)) + 1/sqrt(sqr(x40 - x81)
      + sqr(x140 - x181) + sqr(x240 - x281)) + 1/sqrt(sqr(x40 - x82) + sqr(x140
      - x182) + sqr(x240 - x282)) + 1/sqrt(sqr(x40 - x83) + sqr(x140 - x183) + 
     sqr(x240 - x283)) + 1/sqrt(sqr(x40 - x84) + sqr(x140 - x184) + sqr(x240 - 
     x284)) + 1/sqrt(sqr(x40 - x85) + sqr(x140 - x185) + sqr(x240 - x285)) + 1/
     sqrt(sqr(x40 - x86) + sqr(x140 - x186) + sqr(x240 - x286)) + 1/sqrt(sqr(
     x40 - x87) + sqr(x140 - x187) + sqr(x240 - x287)) + 1/sqrt(sqr(x40 - x88)
      + sqr(x140 - x188) + sqr(x240 - x288)) + 1/sqrt(sqr(x40 - x89) + sqr(x140
      - x189) + sqr(x240 - x289)) + 1/sqrt(sqr(x40 - x90) + sqr(x140 - x190) + 
     sqr(x240 - x290)) + 1/sqrt(sqr(x40 - x91) + sqr(x140 - x191) + sqr(x240 - 
     x291)) + 1/sqrt(sqr(x40 - x92) + sqr(x140 - x192) + sqr(x240 - x292)) + 1/
     sqrt(sqr(x40 - x93) + sqr(x140 - x193) + sqr(x240 - x293)) + 1/sqrt(sqr(
     x40 - x94) + sqr(x140 - x194) + sqr(x240 - x294)) + 1/sqrt(sqr(x40 - x95)
      + sqr(x140 - x195) + sqr(x240 - x295)) + 1/sqrt(sqr(x40 - x96) + sqr(x140
      - x196) + sqr(x240 - x296)) + 1/sqrt(sqr(x40 - x97) + sqr(x140 - x197) + 
     sqr(x240 - x297)) + 1/sqrt(sqr(x40 - x98) + sqr(x140 - x198) + sqr(x240 - 
     x298)) + 1/sqrt(sqr(x40 - x99) + sqr(x140 - x199) + sqr(x240 - x299)) + 1/
     sqrt(sqr(x40 - x100) + sqr(x140 - x200) + sqr(x240 - x300)) + 1/sqrt(sqr(
     x41 - x42) + sqr(x141 - x142) + sqr(x241 - x242)) + 1/sqrt(sqr(x41 - x43)
      + sqr(x141 - x143) + sqr(x241 - x243)) + 1/sqrt(sqr(x41 - x44) + sqr(x141
      - x144) + sqr(x241 - x244)) + 1/sqrt(sqr(x41 - x45) + sqr(x141 - x145) + 
     sqr(x241 - x245)) + 1/sqrt(sqr(x41 - x46) + sqr(x141 - x146) + sqr(x241 - 
     x246)) + 1/sqrt(sqr(x41 - x47) + sqr(x141 - x147) + sqr(x241 - x247)) + 1/
     sqrt(sqr(x41 - x48) + sqr(x141 - x148) + sqr(x241 - x248)) + 1/sqrt(sqr(
     x41 - x49) + sqr(x141 - x149) + sqr(x241 - x249)) + 1/sqrt(sqr(x41 - x50)
      + sqr(x141 - x150) + sqr(x241 - x250)) + 1/sqrt(sqr(x41 - x51) + sqr(x141
      - x151) + sqr(x241 - x251)) + 1/sqrt(sqr(x41 - x52) + sqr(x141 - x152) + 
     sqr(x241 - x252)) + 1/sqrt(sqr(x41 - x53) + sqr(x141 - x153) + sqr(x241 - 
     x253)) + 1/sqrt(sqr(x41 - x54) + sqr(x141 - x154) + sqr(x241 - x254)) + 1/
     sqrt(sqr(x41 - x55) + sqr(x141 - x155) + sqr(x241 - x255)) + 1/sqrt(sqr(
     x41 - x56) + sqr(x141 - x156) + sqr(x241 - x256)) + 1/sqrt(sqr(x41 - x57)
      + sqr(x141 - x157) + sqr(x241 - x257)) + 1/sqrt(sqr(x41 - x58) + sqr(x141
      - x158) + sqr(x241 - x258)) + 1/sqrt(sqr(x41 - x59) + sqr(x141 - x159) + 
     sqr(x241 - x259)) + 1/sqrt(sqr(x41 - x60) + sqr(x141 - x160) + sqr(x241 - 
     x260)) + 1/sqrt(sqr(x41 - x61) + sqr(x141 - x161) + sqr(x241 - x261)) + 1/
     sqrt(sqr(x41 - x62) + sqr(x141 - x162) + sqr(x241 - x262)) + 1/sqrt(sqr(
     x41 - x63) + sqr(x141 - x163) + sqr(x241 - x263)) + 1/sqrt(sqr(x41 - x64)
      + sqr(x141 - x164) + sqr(x241 - x264)) + 1/sqrt(sqr(x41 - x65) + sqr(x141
      - x165) + sqr(x241 - x265)) + 1/sqrt(sqr(x41 - x66) + sqr(x141 - x166) + 
     sqr(x241 - x266)) + 1/sqrt(sqr(x41 - x67) + sqr(x141 - x167) + sqr(x241 - 
     x267)) + 1/sqrt(sqr(x41 - x68) + sqr(x141 - x168) + sqr(x241 - x268)) + 1/
     sqrt(sqr(x41 - x69) + sqr(x141 - x169) + sqr(x241 - x269)) + 1/sqrt(sqr(
     x41 - x70) + sqr(x141 - x170) + sqr(x241 - x270)) + 1/sqrt(sqr(x41 - x71)
      + sqr(x141 - x171) + sqr(x241 - x271)) + 1/sqrt(sqr(x41 - x72) + sqr(x141
      - x172) + sqr(x241 - x272)) + 1/sqrt(sqr(x41 - x73) + sqr(x141 - x173) + 
     sqr(x241 - x273)) + 1/sqrt(sqr(x41 - x74) + sqr(x141 - x174) + sqr(x241 - 
     x274)) + 1/sqrt(sqr(x41 - x75) + sqr(x141 - x175) + sqr(x241 - x275)) + 1/
     sqrt(sqr(x41 - x76) + sqr(x141 - x176) + sqr(x241 - x276)) + 1/sqrt(sqr(
     x41 - x77) + sqr(x141 - x177) + sqr(x241 - x277)) + 1/sqrt(sqr(x41 - x78)
      + sqr(x141 - x178) + sqr(x241 - x278)) + 1/sqrt(sqr(x41 - x79) + sqr(x141
      - x179) + sqr(x241 - x279)) + 1/sqrt(sqr(x41 - x80) + sqr(x141 - x180) + 
     sqr(x241 - x280)) + 1/sqrt(sqr(x41 - x81) + sqr(x141 - x181) + sqr(x241 - 
     x281)) + 1/sqrt(sqr(x41 - x82) + sqr(x141 - x182) + sqr(x241 - x282)) + 1/
     sqrt(sqr(x41 - x83) + sqr(x141 - x183) + sqr(x241 - x283)) + 1/sqrt(sqr(
     x41 - x84) + sqr(x141 - x184) + sqr(x241 - x284)) + 1/sqrt(sqr(x41 - x85)
      + sqr(x141 - x185) + sqr(x241 - x285)) + 1/sqrt(sqr(x41 - x86) + sqr(x141
      - x186) + sqr(x241 - x286)) + 1/sqrt(sqr(x41 - x87) + sqr(x141 - x187) + 
     sqr(x241 - x287)) + 1/sqrt(sqr(x41 - x88) + sqr(x141 - x188) + sqr(x241 - 
     x288)) + 1/sqrt(sqr(x41 - x89) + sqr(x141 - x189) + sqr(x241 - x289)) + 1/
     sqrt(sqr(x41 - x90) + sqr(x141 - x190) + sqr(x241 - x290)) + 1/sqrt(sqr(
     x41 - x91) + sqr(x141 - x191) + sqr(x241 - x291)) + 1/sqrt(sqr(x41 - x92)
      + sqr(x141 - x192) + sqr(x241 - x292)) + 1/sqrt(sqr(x41 - x93) + sqr(x141
      - x193) + sqr(x241 - x293)) + 1/sqrt(sqr(x41 - x94) + sqr(x141 - x194) + 
     sqr(x241 - x294)) + 1/sqrt(sqr(x41 - x95) + sqr(x141 - x195) + sqr(x241 - 
     x295)) + 1/sqrt(sqr(x41 - x96) + sqr(x141 - x196) + sqr(x241 - x296)) + 1/
     sqrt(sqr(x41 - x97) + sqr(x141 - x197) + sqr(x241 - x297)) + 1/sqrt(sqr(
     x41 - x98) + sqr(x141 - x198) + sqr(x241 - x298)) + 1/sqrt(sqr(x41 - x99)
      + sqr(x141 - x199) + sqr(x241 - x299)) + 1/sqrt(sqr(x41 - x100) + sqr(
     x141 - x200) + sqr(x241 - x300)) + 1/sqrt(sqr(x42 - x43) + sqr(x142 - x143
     ) + sqr(x242 - x243)) + 1/sqrt(sqr(x42 - x44) + sqr(x142 - x144) + sqr(
     x242 - x244)) + 1/sqrt(sqr(x42 - x45) + sqr(x142 - x145) + sqr(x242 - x245
     )) + 1/sqrt(sqr(x42 - x46) + sqr(x142 - x146) + sqr(x242 - x246)) + 1/
     sqrt(sqr(x42 - x47) + sqr(x142 - x147) + sqr(x242 - x247)) + 1/sqrt(sqr(
     x42 - x48) + sqr(x142 - x148) + sqr(x242 - x248)) + 1/sqrt(sqr(x42 - x49)
      + sqr(x142 - x149) + sqr(x242 - x249)) + 1/sqrt(sqr(x42 - x50) + sqr(x142
      - x150) + sqr(x242 - x250)) + 1/sqrt(sqr(x42 - x51) + sqr(x142 - x151) + 
     sqr(x242 - x251)) + 1/sqrt(sqr(x42 - x52) + sqr(x142 - x152) + sqr(x242 - 
     x252)) + 1/sqrt(sqr(x42 - x53) + sqr(x142 - x153) + sqr(x242 - x253)) + 1/
     sqrt(sqr(x42 - x54) + sqr(x142 - x154) + sqr(x242 - x254)) + 1/sqrt(sqr(
     x42 - x55) + sqr(x142 - x155) + sqr(x242 - x255)) + 1/sqrt(sqr(x42 - x56)
      + sqr(x142 - x156) + sqr(x242 - x256)) + 1/sqrt(sqr(x42 - x57) + sqr(x142
      - x157) + sqr(x242 - x257)) + 1/sqrt(sqr(x42 - x58) + sqr(x142 - x158) + 
     sqr(x242 - x258)) + 1/sqrt(sqr(x42 - x59) + sqr(x142 - x159) + sqr(x242 - 
     x259)) + 1/sqrt(sqr(x42 - x60) + sqr(x142 - x160) + sqr(x242 - x260)) + 1/
     sqrt(sqr(x42 - x61) + sqr(x142 - x161) + sqr(x242 - x261)) + 1/sqrt(sqr(
     x42 - x62) + sqr(x142 - x162) + sqr(x242 - x262)) + 1/sqrt(sqr(x42 - x63)
      + sqr(x142 - x163) + sqr(x242 - x263)) + 1/sqrt(sqr(x42 - x64) + sqr(x142
      - x164) + sqr(x242 - x264)) + 1/sqrt(sqr(x42 - x65) + sqr(x142 - x165) + 
     sqr(x242 - x265)) + 1/sqrt(sqr(x42 - x66) + sqr(x142 - x166) + sqr(x242 - 
     x266)) + 1/sqrt(sqr(x42 - x67) + sqr(x142 - x167) + sqr(x242 - x267)) + 1/
     sqrt(sqr(x42 - x68) + sqr(x142 - x168) + sqr(x242 - x268)) + 1/sqrt(sqr(
     x42 - x69) + sqr(x142 - x169) + sqr(x242 - x269)) + 1/sqrt(sqr(x42 - x70)
      + sqr(x142 - x170) + sqr(x242 - x270)) + 1/sqrt(sqr(x42 - x71) + sqr(x142
      - x171) + sqr(x242 - x271)) + 1/sqrt(sqr(x42 - x72) + sqr(x142 - x172) + 
     sqr(x242 - x272)) + 1/sqrt(sqr(x42 - x73) + sqr(x142 - x173) + sqr(x242 - 
     x273)) + 1/sqrt(sqr(x42 - x74) + sqr(x142 - x174) + sqr(x242 - x274)) + 1/
     sqrt(sqr(x42 - x75) + sqr(x142 - x175) + sqr(x242 - x275)) + 1/sqrt(sqr(
     x42 - x76) + sqr(x142 - x176) + sqr(x242 - x276)) + 1/sqrt(sqr(x42 - x77)
      + sqr(x142 - x177) + sqr(x242 - x277)) + 1/sqrt(sqr(x42 - x78) + sqr(x142
      - x178) + sqr(x242 - x278)) + 1/sqrt(sqr(x42 - x79) + sqr(x142 - x179) + 
     sqr(x242 - x279)) + 1/sqrt(sqr(x42 - x80) + sqr(x142 - x180) + sqr(x242 - 
     x280)) + 1/sqrt(sqr(x42 - x81) + sqr(x142 - x181) + sqr(x242 - x281)) + 1/
     sqrt(sqr(x42 - x82) + sqr(x142 - x182) + sqr(x242 - x282)) + 1/sqrt(sqr(
     x42 - x83) + sqr(x142 - x183) + sqr(x242 - x283)) + 1/sqrt(sqr(x42 - x84)
      + sqr(x142 - x184) + sqr(x242 - x284)) + 1/sqrt(sqr(x42 - x85) + sqr(x142
      - x185) + sqr(x242 - x285)) + 1/sqrt(sqr(x42 - x86) + sqr(x142 - x186) + 
     sqr(x242 - x286)) + 1/sqrt(sqr(x42 - x87) + sqr(x142 - x187) + sqr(x242 - 
     x287)) + 1/sqrt(sqr(x42 - x88) + sqr(x142 - x188) + sqr(x242 - x288)) + 1/
     sqrt(sqr(x42 - x89) + sqr(x142 - x189) + sqr(x242 - x289)) + 1/sqrt(sqr(
     x42 - x90) + sqr(x142 - x190) + sqr(x242 - x290)) + 1/sqrt(sqr(x42 - x91)
      + sqr(x142 - x191) + sqr(x242 - x291)) + 1/sqrt(sqr(x42 - x92) + sqr(x142
      - x192) + sqr(x242 - x292)) + 1/sqrt(sqr(x42 - x93) + sqr(x142 - x193) + 
     sqr(x242 - x293)) + 1/sqrt(sqr(x42 - x94) + sqr(x142 - x194) + sqr(x242 - 
     x294)) + 1/sqrt(sqr(x42 - x95) + sqr(x142 - x195) + sqr(x242 - x295)) + 1/
     sqrt(sqr(x42 - x96) + sqr(x142 - x196) + sqr(x242 - x296)) + 1/sqrt(sqr(
     x42 - x97) + sqr(x142 - x197) + sqr(x242 - x297)) + 1/sqrt(sqr(x42 - x98)
      + sqr(x142 - x198) + sqr(x242 - x298)) + 1/sqrt(sqr(x42 - x99) + sqr(x142
      - x199) + sqr(x242 - x299)) + 1/sqrt(sqr(x42 - x100) + sqr(x142 - x200)
      + sqr(x242 - x300)) + 1/sqrt(sqr(x43 - x44) + sqr(x143 - x144) + sqr(x243
      - x244)) + 1/sqrt(sqr(x43 - x45) + sqr(x143 - x145) + sqr(x243 - x245))
      + 1/sqrt(sqr(x43 - x46) + sqr(x143 - x146) + sqr(x243 - x246)) + 1/sqrt(
     sqr(x43 - x47) + sqr(x143 - x147) + sqr(x243 - x247)) + 1/sqrt(sqr(x43 - 
     x48) + sqr(x143 - x148) + sqr(x243 - x248)) + 1/sqrt(sqr(x43 - x49) + sqr(
     x143 - x149) + sqr(x243 - x249)) + 1/sqrt(sqr(x43 - x50) + sqr(x143 - x150
     ) + sqr(x243 - x250)) + 1/sqrt(sqr(x43 - x51) + sqr(x143 - x151) + sqr(
     x243 - x251)) + 1/sqrt(sqr(x43 - x52) + sqr(x143 - x152) + sqr(x243 - x252
     )) + 1/sqrt(sqr(x43 - x53) + sqr(x143 - x153) + sqr(x243 - x253)) + 1/
     sqrt(sqr(x43 - x54) + sqr(x143 - x154) + sqr(x243 - x254)) + 1/sqrt(sqr(
     x43 - x55) + sqr(x143 - x155) + sqr(x243 - x255)) + 1/sqrt(sqr(x43 - x56)
      + sqr(x143 - x156) + sqr(x243 - x256)) + 1/sqrt(sqr(x43 - x57) + sqr(x143
      - x157) + sqr(x243 - x257)) + 1/sqrt(sqr(x43 - x58) + sqr(x143 - x158) + 
     sqr(x243 - x258)) + 1/sqrt(sqr(x43 - x59) + sqr(x143 - x159) + sqr(x243 - 
     x259)) + 1/sqrt(sqr(x43 - x60) + sqr(x143 - x160) + sqr(x243 - x260)) + 1/
     sqrt(sqr(x43 - x61) + sqr(x143 - x161) + sqr(x243 - x261)) + 1/sqrt(sqr(
     x43 - x62) + sqr(x143 - x162) + sqr(x243 - x262)) + 1/sqrt(sqr(x43 - x63)
      + sqr(x143 - x163) + sqr(x243 - x263)) + 1/sqrt(sqr(x43 - x64) + sqr(x143
      - x164) + sqr(x243 - x264)) + 1/sqrt(sqr(x43 - x65) + sqr(x143 - x165) + 
     sqr(x243 - x265)) + 1/sqrt(sqr(x43 - x66) + sqr(x143 - x166) + sqr(x243 - 
     x266)) + 1/sqrt(sqr(x43 - x67) + sqr(x143 - x167) + sqr(x243 - x267)) + 1/
     sqrt(sqr(x43 - x68) + sqr(x143 - x168) + sqr(x243 - x268)) + 1/sqrt(sqr(
     x43 - x69) + sqr(x143 - x169) + sqr(x243 - x269)) + 1/sqrt(sqr(x43 - x70)
      + sqr(x143 - x170) + sqr(x243 - x270)) + 1/sqrt(sqr(x43 - x71) + sqr(x143
      - x171) + sqr(x243 - x271)) + 1/sqrt(sqr(x43 - x72) + sqr(x143 - x172) + 
     sqr(x243 - x272)) + 1/sqrt(sqr(x43 - x73) + sqr(x143 - x173) + sqr(x243 - 
     x273)) + 1/sqrt(sqr(x43 - x74) + sqr(x143 - x174) + sqr(x243 - x274)) + 1/
     sqrt(sqr(x43 - x75) + sqr(x143 - x175) + sqr(x243 - x275)) + 1/sqrt(sqr(
     x43 - x76) + sqr(x143 - x176) + sqr(x243 - x276)) + 1/sqrt(sqr(x43 - x77)
      + sqr(x143 - x177) + sqr(x243 - x277)) + 1/sqrt(sqr(x43 - x78) + sqr(x143
      - x178) + sqr(x243 - x278)) + 1/sqrt(sqr(x43 - x79) + sqr(x143 - x179) + 
     sqr(x243 - x279)) + 1/sqrt(sqr(x43 - x80) + sqr(x143 - x180) + sqr(x243 - 
     x280)) + 1/sqrt(sqr(x43 - x81) + sqr(x143 - x181) + sqr(x243 - x281)) + 1/
     sqrt(sqr(x43 - x82) + sqr(x143 - x182) + sqr(x243 - x282)) + 1/sqrt(sqr(
     x43 - x83) + sqr(x143 - x183) + sqr(x243 - x283)) + 1/sqrt(sqr(x43 - x84)
      + sqr(x143 - x184) + sqr(x243 - x284)) + 1/sqrt(sqr(x43 - x85) + sqr(x143
      - x185) + sqr(x243 - x285)) + 1/sqrt(sqr(x43 - x86) + sqr(x143 - x186) + 
     sqr(x243 - x286)) + 1/sqrt(sqr(x43 - x87) + sqr(x143 - x187) + sqr(x243 - 
     x287)) + 1/sqrt(sqr(x43 - x88) + sqr(x143 - x188) + sqr(x243 - x288)) + 1/
     sqrt(sqr(x43 - x89) + sqr(x143 - x189) + sqr(x243 - x289)) + 1/sqrt(sqr(
     x43 - x90) + sqr(x143 - x190) + sqr(x243 - x290)) + 1/sqrt(sqr(x43 - x91)
      + sqr(x143 - x191) + sqr(x243 - x291)) + 1/sqrt(sqr(x43 - x92) + sqr(x143
      - x192) + sqr(x243 - x292)) + 1/sqrt(sqr(x43 - x93) + sqr(x143 - x193) + 
     sqr(x243 - x293)) + 1/sqrt(sqr(x43 - x94) + sqr(x143 - x194) + sqr(x243 - 
     x294)) + 1/sqrt(sqr(x43 - x95) + sqr(x143 - x195) + sqr(x243 - x295)) + 1/
     sqrt(sqr(x43 - x96) + sqr(x143 - x196) + sqr(x243 - x296)) + 1/sqrt(sqr(
     x43 - x97) + sqr(x143 - x197) + sqr(x243 - x297)) + 1/sqrt(sqr(x43 - x98)
      + sqr(x143 - x198) + sqr(x243 - x298)) + 1/sqrt(sqr(x43 - x99) + sqr(x143
      - x199) + sqr(x243 - x299)) + 1/sqrt(sqr(x43 - x100) + sqr(x143 - x200)
      + sqr(x243 - x300)) + 1/sqrt(sqr(x44 - x45) + sqr(x144 - x145) + sqr(x244
      - x245)) + 1/sqrt(sqr(x44 - x46) + sqr(x144 - x146) + sqr(x244 - x246))
      + 1/sqrt(sqr(x44 - x47) + sqr(x144 - x147) + sqr(x244 - x247)) + 1/sqrt(
     sqr(x44 - x48) + sqr(x144 - x148) + sqr(x244 - x248)) + 1/sqrt(sqr(x44 - 
     x49) + sqr(x144 - x149) + sqr(x244 - x249)) + 1/sqrt(sqr(x44 - x50) + sqr(
     x144 - x150) + sqr(x244 - x250)) + 1/sqrt(sqr(x44 - x51) + sqr(x144 - x151
     ) + sqr(x244 - x251)) + 1/sqrt(sqr(x44 - x52) + sqr(x144 - x152) + sqr(
     x244 - x252)) + 1/sqrt(sqr(x44 - x53) + sqr(x144 - x153) + sqr(x244 - x253
     )) + 1/sqrt(sqr(x44 - x54) + sqr(x144 - x154) + sqr(x244 - x254)) + 1/
     sqrt(sqr(x44 - x55) + sqr(x144 - x155) + sqr(x244 - x255)) + 1/sqrt(sqr(
     x44 - x56) + sqr(x144 - x156) + sqr(x244 - x256)) + 1/sqrt(sqr(x44 - x57)
      + sqr(x144 - x157) + sqr(x244 - x257)) + 1/sqrt(sqr(x44 - x58) + sqr(x144
      - x158) + sqr(x244 - x258)) + 1/sqrt(sqr(x44 - x59) + sqr(x144 - x159) + 
     sqr(x244 - x259)) + 1/sqrt(sqr(x44 - x60) + sqr(x144 - x160) + sqr(x244 - 
     x260)) + 1/sqrt(sqr(x44 - x61) + sqr(x144 - x161) + sqr(x244 - x261)) + 1/
     sqrt(sqr(x44 - x62) + sqr(x144 - x162) + sqr(x244 - x262)) + 1/sqrt(sqr(
     x44 - x63) + sqr(x144 - x163) + sqr(x244 - x263)) + 1/sqrt(sqr(x44 - x64)
      + sqr(x144 - x164) + sqr(x244 - x264)) + 1/sqrt(sqr(x44 - x65) + sqr(x144
      - x165) + sqr(x244 - x265)) + 1/sqrt(sqr(x44 - x66) + sqr(x144 - x166) + 
     sqr(x244 - x266)) + 1/sqrt(sqr(x44 - x67) + sqr(x144 - x167) + sqr(x244 - 
     x267)) + 1/sqrt(sqr(x44 - x68) + sqr(x144 - x168) + sqr(x244 - x268)) + 1/
     sqrt(sqr(x44 - x69) + sqr(x144 - x169) + sqr(x244 - x269)) + 1/sqrt(sqr(
     x44 - x70) + sqr(x144 - x170) + sqr(x244 - x270)) + 1/sqrt(sqr(x44 - x71)
      + sqr(x144 - x171) + sqr(x244 - x271)) + 1/sqrt(sqr(x44 - x72) + sqr(x144
      - x172) + sqr(x244 - x272)) + 1/sqrt(sqr(x44 - x73) + sqr(x144 - x173) + 
     sqr(x244 - x273)) + 1/sqrt(sqr(x44 - x74) + sqr(x144 - x174) + sqr(x244 - 
     x274)) + 1/sqrt(sqr(x44 - x75) + sqr(x144 - x175) + sqr(x244 - x275)) + 1/
     sqrt(sqr(x44 - x76) + sqr(x144 - x176) + sqr(x244 - x276)) + 1/sqrt(sqr(
     x44 - x77) + sqr(x144 - x177) + sqr(x244 - x277)) + 1/sqrt(sqr(x44 - x78)
      + sqr(x144 - x178) + sqr(x244 - x278)) + 1/sqrt(sqr(x44 - x79) + sqr(x144
      - x179) + sqr(x244 - x279)) + 1/sqrt(sqr(x44 - x80) + sqr(x144 - x180) + 
     sqr(x244 - x280)) + 1/sqrt(sqr(x44 - x81) + sqr(x144 - x181) + sqr(x244 - 
     x281)) + 1/sqrt(sqr(x44 - x82) + sqr(x144 - x182) + sqr(x244 - x282)) + 1/
     sqrt(sqr(x44 - x83) + sqr(x144 - x183) + sqr(x244 - x283)) + 1/sqrt(sqr(
     x44 - x84) + sqr(x144 - x184) + sqr(x244 - x284)) + 1/sqrt(sqr(x44 - x85)
      + sqr(x144 - x185) + sqr(x244 - x285)) + 1/sqrt(sqr(x44 - x86) + sqr(x144
      - x186) + sqr(x244 - x286)) + 1/sqrt(sqr(x44 - x87) + sqr(x144 - x187) + 
     sqr(x244 - x287)) + 1/sqrt(sqr(x44 - x88) + sqr(x144 - x188) + sqr(x244 - 
     x288)) + 1/sqrt(sqr(x44 - x89) + sqr(x144 - x189) + sqr(x244 - x289)) + 1/
     sqrt(sqr(x44 - x90) + sqr(x144 - x190) + sqr(x244 - x290)) + 1/sqrt(sqr(
     x44 - x91) + sqr(x144 - x191) + sqr(x244 - x291)) + 1/sqrt(sqr(x44 - x92)
      + sqr(x144 - x192) + sqr(x244 - x292)) + 1/sqrt(sqr(x44 - x93) + sqr(x144
      - x193) + sqr(x244 - x293)) + 1/sqrt(sqr(x44 - x94) + sqr(x144 - x194) + 
     sqr(x244 - x294)) + 1/sqrt(sqr(x44 - x95) + sqr(x144 - x195) + sqr(x244 - 
     x295)) + 1/sqrt(sqr(x44 - x96) + sqr(x144 - x196) + sqr(x244 - x296)) + 1/
     sqrt(sqr(x44 - x97) + sqr(x144 - x197) + sqr(x244 - x297)) + 1/sqrt(sqr(
     x44 - x98) + sqr(x144 - x198) + sqr(x244 - x298)) + 1/sqrt(sqr(x44 - x99)
      + sqr(x144 - x199) + sqr(x244 - x299)) + 1/sqrt(sqr(x44 - x100) + sqr(
     x144 - x200) + sqr(x244 - x300)) + 1/sqrt(sqr(x45 - x46) + sqr(x145 - x146
     ) + sqr(x245 - x246)) + 1/sqrt(sqr(x45 - x47) + sqr(x145 - x147) + sqr(
     x245 - x247)) + 1/sqrt(sqr(x45 - x48) + sqr(x145 - x148) + sqr(x245 - x248
     )) + 1/sqrt(sqr(x45 - x49) + sqr(x145 - x149) + sqr(x245 - x249)) + 1/
     sqrt(sqr(x45 - x50) + sqr(x145 - x150) + sqr(x245 - x250)) + 1/sqrt(sqr(
     x45 - x51) + sqr(x145 - x151) + sqr(x245 - x251)) + 1/sqrt(sqr(x45 - x52)
      + sqr(x145 - x152) + sqr(x245 - x252)) + 1/sqrt(sqr(x45 - x53) + sqr(x145
      - x153) + sqr(x245 - x253)) + 1/sqrt(sqr(x45 - x54) + sqr(x145 - x154) + 
     sqr(x245 - x254)) + 1/sqrt(sqr(x45 - x55) + sqr(x145 - x155) + sqr(x245 - 
     x255)) + 1/sqrt(sqr(x45 - x56) + sqr(x145 - x156) + sqr(x245 - x256)) + 1/
     sqrt(sqr(x45 - x57) + sqr(x145 - x157) + sqr(x245 - x257)) + 1/sqrt(sqr(
     x45 - x58) + sqr(x145 - x158) + sqr(x245 - x258)) + 1/sqrt(sqr(x45 - x59)
      + sqr(x145 - x159) + sqr(x245 - x259)) + 1/sqrt(sqr(x45 - x60) + sqr(x145
      - x160) + sqr(x245 - x260)) + 1/sqrt(sqr(x45 - x61) + sqr(x145 - x161) + 
     sqr(x245 - x261)) + 1/sqrt(sqr(x45 - x62) + sqr(x145 - x162) + sqr(x245 - 
     x262)) + 1/sqrt(sqr(x45 - x63) + sqr(x145 - x163) + sqr(x245 - x263)) + 1/
     sqrt(sqr(x45 - x64) + sqr(x145 - x164) + sqr(x245 - x264)) + 1/sqrt(sqr(
     x45 - x65) + sqr(x145 - x165) + sqr(x245 - x265)) + 1/sqrt(sqr(x45 - x66)
      + sqr(x145 - x166) + sqr(x245 - x266)) + 1/sqrt(sqr(x45 - x67) + sqr(x145
      - x167) + sqr(x245 - x267)) + 1/sqrt(sqr(x45 - x68) + sqr(x145 - x168) + 
     sqr(x245 - x268)) + 1/sqrt(sqr(x45 - x69) + sqr(x145 - x169) + sqr(x245 - 
     x269)) + 1/sqrt(sqr(x45 - x70) + sqr(x145 - x170) + sqr(x245 - x270)) + 1/
     sqrt(sqr(x45 - x71) + sqr(x145 - x171) + sqr(x245 - x271)) + 1/sqrt(sqr(
     x45 - x72) + sqr(x145 - x172) + sqr(x245 - x272)) + 1/sqrt(sqr(x45 - x73)
      + sqr(x145 - x173) + sqr(x245 - x273)) + 1/sqrt(sqr(x45 - x74) + sqr(x145
      - x174) + sqr(x245 - x274)) + 1/sqrt(sqr(x45 - x75) + sqr(x145 - x175) + 
     sqr(x245 - x275)) + 1/sqrt(sqr(x45 - x76) + sqr(x145 - x176) + sqr(x245 - 
     x276)) + 1/sqrt(sqr(x45 - x77) + sqr(x145 - x177) + sqr(x245 - x277)) + 1/
     sqrt(sqr(x45 - x78) + sqr(x145 - x178) + sqr(x245 - x278)) + 1/sqrt(sqr(
     x45 - x79) + sqr(x145 - x179) + sqr(x245 - x279)) + 1/sqrt(sqr(x45 - x80)
      + sqr(x145 - x180) + sqr(x245 - x280)) + 1/sqrt(sqr(x45 - x81) + sqr(x145
      - x181) + sqr(x245 - x281)) + 1/sqrt(sqr(x45 - x82) + sqr(x145 - x182) + 
     sqr(x245 - x282)) + 1/sqrt(sqr(x45 - x83) + sqr(x145 - x183) + sqr(x245 - 
     x283)) + 1/sqrt(sqr(x45 - x84) + sqr(x145 - x184) + sqr(x245 - x284)) + 1/
     sqrt(sqr(x45 - x85) + sqr(x145 - x185) + sqr(x245 - x285)) + 1/sqrt(sqr(
     x45 - x86) + sqr(x145 - x186) + sqr(x245 - x286)) + 1/sqrt(sqr(x45 - x87)
      + sqr(x145 - x187) + sqr(x245 - x287)) + 1/sqrt(sqr(x45 - x88) + sqr(x145
      - x188) + sqr(x245 - x288)) + 1/sqrt(sqr(x45 - x89) + sqr(x145 - x189) + 
     sqr(x245 - x289)) + 1/sqrt(sqr(x45 - x90) + sqr(x145 - x190) + sqr(x245 - 
     x290)) + 1/sqrt(sqr(x45 - x91) + sqr(x145 - x191) + sqr(x245 - x291)) + 1/
     sqrt(sqr(x45 - x92) + sqr(x145 - x192) + sqr(x245 - x292)) + 1/sqrt(sqr(
     x45 - x93) + sqr(x145 - x193) + sqr(x245 - x293)) + 1/sqrt(sqr(x45 - x94)
      + sqr(x145 - x194) + sqr(x245 - x294)) + 1/sqrt(sqr(x45 - x95) + sqr(x145
      - x195) + sqr(x245 - x295)) + 1/sqrt(sqr(x45 - x96) + sqr(x145 - x196) + 
     sqr(x245 - x296)) + 1/sqrt(sqr(x45 - x97) + sqr(x145 - x197) + sqr(x245 - 
     x297)) + 1/sqrt(sqr(x45 - x98) + sqr(x145 - x198) + sqr(x245 - x298)) + 1/
     sqrt(sqr(x45 - x99) + sqr(x145 - x199) + sqr(x245 - x299)) + 1/sqrt(sqr(
     x45 - x100) + sqr(x145 - x200) + sqr(x245 - x300)) + 1/sqrt(sqr(x46 - x47)
      + sqr(x146 - x147) + sqr(x246 - x247)) + 1/sqrt(sqr(x46 - x48) + sqr(x146
      - x148) + sqr(x246 - x248)) + 1/sqrt(sqr(x46 - x49) + sqr(x146 - x149) + 
     sqr(x246 - x249)) + 1/sqrt(sqr(x46 - x50) + sqr(x146 - x150) + sqr(x246 - 
     x250)) + 1/sqrt(sqr(x46 - x51) + sqr(x146 - x151) + sqr(x246 - x251)) + 1/
     sqrt(sqr(x46 - x52) + sqr(x146 - x152) + sqr(x246 - x252)) + 1/sqrt(sqr(
     x46 - x53) + sqr(x146 - x153) + sqr(x246 - x253)) + 1/sqrt(sqr(x46 - x54)
      + sqr(x146 - x154) + sqr(x246 - x254)) + 1/sqrt(sqr(x46 - x55) + sqr(x146
      - x155) + sqr(x246 - x255)) + 1/sqrt(sqr(x46 - x56) + sqr(x146 - x156) + 
     sqr(x246 - x256)) + 1/sqrt(sqr(x46 - x57) + sqr(x146 - x157) + sqr(x246 - 
     x257)) + 1/sqrt(sqr(x46 - x58) + sqr(x146 - x158) + sqr(x246 - x258)) + 1/
     sqrt(sqr(x46 - x59) + sqr(x146 - x159) + sqr(x246 - x259)) + 1/sqrt(sqr(
     x46 - x60) + sqr(x146 - x160) + sqr(x246 - x260)) + 1/sqrt(sqr(x46 - x61)
      + sqr(x146 - x161) + sqr(x246 - x261)) + 1/sqrt(sqr(x46 - x62) + sqr(x146
      - x162) + sqr(x246 - x262)) + 1/sqrt(sqr(x46 - x63) + sqr(x146 - x163) + 
     sqr(x246 - x263)) + 1/sqrt(sqr(x46 - x64) + sqr(x146 - x164) + sqr(x246 - 
     x264)) + 1/sqrt(sqr(x46 - x65) + sqr(x146 - x165) + sqr(x246 - x265)) + 1/
     sqrt(sqr(x46 - x66) + sqr(x146 - x166) + sqr(x246 - x266)) + 1/sqrt(sqr(
     x46 - x67) + sqr(x146 - x167) + sqr(x246 - x267)) + 1/sqrt(sqr(x46 - x68)
      + sqr(x146 - x168) + sqr(x246 - x268)) + 1/sqrt(sqr(x46 - x69) + sqr(x146
      - x169) + sqr(x246 - x269)) + 1/sqrt(sqr(x46 - x70) + sqr(x146 - x170) + 
     sqr(x246 - x270)) + 1/sqrt(sqr(x46 - x71) + sqr(x146 - x171) + sqr(x246 - 
     x271)) + 1/sqrt(sqr(x46 - x72) + sqr(x146 - x172) + sqr(x246 - x272)) + 1/
     sqrt(sqr(x46 - x73) + sqr(x146 - x173) + sqr(x246 - x273)) + 1/sqrt(sqr(
     x46 - x74) + sqr(x146 - x174) + sqr(x246 - x274)) + 1/sqrt(sqr(x46 - x75)
      + sqr(x146 - x175) + sqr(x246 - x275)) + 1/sqrt(sqr(x46 - x76) + sqr(x146
      - x176) + sqr(x246 - x276)) + 1/sqrt(sqr(x46 - x77) + sqr(x146 - x177) + 
     sqr(x246 - x277)) + 1/sqrt(sqr(x46 - x78) + sqr(x146 - x178) + sqr(x246 - 
     x278)) + 1/sqrt(sqr(x46 - x79) + sqr(x146 - x179) + sqr(x246 - x279)) + 1/
     sqrt(sqr(x46 - x80) + sqr(x146 - x180) + sqr(x246 - x280)) + 1/sqrt(sqr(
     x46 - x81) + sqr(x146 - x181) + sqr(x246 - x281)) + 1/sqrt(sqr(x46 - x82)
      + sqr(x146 - x182) + sqr(x246 - x282)) + 1/sqrt(sqr(x46 - x83) + sqr(x146
      - x183) + sqr(x246 - x283)) + 1/sqrt(sqr(x46 - x84) + sqr(x146 - x184) + 
     sqr(x246 - x284)) + 1/sqrt(sqr(x46 - x85) + sqr(x146 - x185) + sqr(x246 - 
     x285)) + 1/sqrt(sqr(x46 - x86) + sqr(x146 - x186) + sqr(x246 - x286)) + 1/
     sqrt(sqr(x46 - x87) + sqr(x146 - x187) + sqr(x246 - x287)) + 1/sqrt(sqr(
     x46 - x88) + sqr(x146 - x188) + sqr(x246 - x288)) + 1/sqrt(sqr(x46 - x89)
      + sqr(x146 - x189) + sqr(x246 - x289)) + 1/sqrt(sqr(x46 - x90) + sqr(x146
      - x190) + sqr(x246 - x290)) + 1/sqrt(sqr(x46 - x91) + sqr(x146 - x191) + 
     sqr(x246 - x291)) + 1/sqrt(sqr(x46 - x92) + sqr(x146 - x192) + sqr(x246 - 
     x292)) + 1/sqrt(sqr(x46 - x93) + sqr(x146 - x193) + sqr(x246 - x293)) + 1/
     sqrt(sqr(x46 - x94) + sqr(x146 - x194) + sqr(x246 - x294)) + 1/sqrt(sqr(
     x46 - x95) + sqr(x146 - x195) + sqr(x246 - x295)) + 1/sqrt(sqr(x46 - x96)
      + sqr(x146 - x196) + sqr(x246 - x296)) + 1/sqrt(sqr(x46 - x97) + sqr(x146
      - x197) + sqr(x246 - x297)) + 1/sqrt(sqr(x46 - x98) + sqr(x146 - x198) + 
     sqr(x246 - x298)) + 1/sqrt(sqr(x46 - x99) + sqr(x146 - x199) + sqr(x246 - 
     x299)) + 1/sqrt(sqr(x46 - x100) + sqr(x146 - x200) + sqr(x246 - x300)) + 1
     /sqrt(sqr(x47 - x48) + sqr(x147 - x148) + sqr(x247 - x248)) + 1/sqrt(sqr(
     x47 - x49) + sqr(x147 - x149) + sqr(x247 - x249)) + 1/sqrt(sqr(x47 - x50)
      + sqr(x147 - x150) + sqr(x247 - x250)) + 1/sqrt(sqr(x47 - x51) + sqr(x147
      - x151) + sqr(x247 - x251)) + 1/sqrt(sqr(x47 - x52) + sqr(x147 - x152) + 
     sqr(x247 - x252)) + 1/sqrt(sqr(x47 - x53) + sqr(x147 - x153) + sqr(x247 - 
     x253)) + 1/sqrt(sqr(x47 - x54) + sqr(x147 - x154) + sqr(x247 - x254)) + 1/
     sqrt(sqr(x47 - x55) + sqr(x147 - x155) + sqr(x247 - x255)) + 1/sqrt(sqr(
     x47 - x56) + sqr(x147 - x156) + sqr(x247 - x256)) + 1/sqrt(sqr(x47 - x57)
      + sqr(x147 - x157) + sqr(x247 - x257)) + 1/sqrt(sqr(x47 - x58) + sqr(x147
      - x158) + sqr(x247 - x258)) + 1/sqrt(sqr(x47 - x59) + sqr(x147 - x159) + 
     sqr(x247 - x259)) + 1/sqrt(sqr(x47 - x60) + sqr(x147 - x160) + sqr(x247 - 
     x260)) + 1/sqrt(sqr(x47 - x61) + sqr(x147 - x161) + sqr(x247 - x261)) + 1/
     sqrt(sqr(x47 - x62) + sqr(x147 - x162) + sqr(x247 - x262)) + 1/sqrt(sqr(
     x47 - x63) + sqr(x147 - x163) + sqr(x247 - x263)) + 1/sqrt(sqr(x47 - x64)
      + sqr(x147 - x164) + sqr(x247 - x264)) + 1/sqrt(sqr(x47 - x65) + sqr(x147
      - x165) + sqr(x247 - x265)) + 1/sqrt(sqr(x47 - x66) + sqr(x147 - x166) + 
     sqr(x247 - x266)) + 1/sqrt(sqr(x47 - x67) + sqr(x147 - x167) + sqr(x247 - 
     x267)) + 1/sqrt(sqr(x47 - x68) + sqr(x147 - x168) + sqr(x247 - x268)) + 1/
     sqrt(sqr(x47 - x69) + sqr(x147 - x169) + sqr(x247 - x269)) + 1/sqrt(sqr(
     x47 - x70) + sqr(x147 - x170) + sqr(x247 - x270)) + 1/sqrt(sqr(x47 - x71)
      + sqr(x147 - x171) + sqr(x247 - x271)) + 1/sqrt(sqr(x47 - x72) + sqr(x147
      - x172) + sqr(x247 - x272)) + 1/sqrt(sqr(x47 - x73) + sqr(x147 - x173) + 
     sqr(x247 - x273)) + 1/sqrt(sqr(x47 - x74) + sqr(x147 - x174) + sqr(x247 - 
     x274)) + 1/sqrt(sqr(x47 - x75) + sqr(x147 - x175) + sqr(x247 - x275)) + 1/
     sqrt(sqr(x47 - x76) + sqr(x147 - x176) + sqr(x247 - x276)) + 1/sqrt(sqr(
     x47 - x77) + sqr(x147 - x177) + sqr(x247 - x277)) + 1/sqrt(sqr(x47 - x78)
      + sqr(x147 - x178) + sqr(x247 - x278)) + 1/sqrt(sqr(x47 - x79) + sqr(x147
      - x179) + sqr(x247 - x279)) + 1/sqrt(sqr(x47 - x80) + sqr(x147 - x180) + 
     sqr(x247 - x280)) + 1/sqrt(sqr(x47 - x81) + sqr(x147 - x181) + sqr(x247 - 
     x281)) + 1/sqrt(sqr(x47 - x82) + sqr(x147 - x182) + sqr(x247 - x282)) + 1/
     sqrt(sqr(x47 - x83) + sqr(x147 - x183) + sqr(x247 - x283)) + 1/sqrt(sqr(
     x47 - x84) + sqr(x147 - x184) + sqr(x247 - x284)) + 1/sqrt(sqr(x47 - x85)
      + sqr(x147 - x185) + sqr(x247 - x285)) + 1/sqrt(sqr(x47 - x86) + sqr(x147
      - x186) + sqr(x247 - x286)) + 1/sqrt(sqr(x47 - x87) + sqr(x147 - x187) + 
     sqr(x247 - x287)) + 1/sqrt(sqr(x47 - x88) + sqr(x147 - x188) + sqr(x247 - 
     x288)) + 1/sqrt(sqr(x47 - x89) + sqr(x147 - x189) + sqr(x247 - x289)) + 1/
     sqrt(sqr(x47 - x90) + sqr(x147 - x190) + sqr(x247 - x290)) + 1/sqrt(sqr(
     x47 - x91) + sqr(x147 - x191) + sqr(x247 - x291)) + 1/sqrt(sqr(x47 - x92)
      + sqr(x147 - x192) + sqr(x247 - x292)) + 1/sqrt(sqr(x47 - x93) + sqr(x147
      - x193) + sqr(x247 - x293)) + 1/sqrt(sqr(x47 - x94) + sqr(x147 - x194) + 
     sqr(x247 - x294)) + 1/sqrt(sqr(x47 - x95) + sqr(x147 - x195) + sqr(x247 - 
     x295)) + 1/sqrt(sqr(x47 - x96) + sqr(x147 - x196) + sqr(x247 - x296)) + 1/
     sqrt(sqr(x47 - x97) + sqr(x147 - x197) + sqr(x247 - x297)) + 1/sqrt(sqr(
     x47 - x98) + sqr(x147 - x198) + sqr(x247 - x298)) + 1/sqrt(sqr(x47 - x99)
      + sqr(x147 - x199) + sqr(x247 - x299)) + 1/sqrt(sqr(x47 - x100) + sqr(
     x147 - x200) + sqr(x247 - x300)) + 1/sqrt(sqr(x48 - x49) + sqr(x148 - x149
     ) + sqr(x248 - x249)) + 1/sqrt(sqr(x48 - x50) + sqr(x148 - x150) + sqr(
     x248 - x250)) + 1/sqrt(sqr(x48 - x51) + sqr(x148 - x151) + sqr(x248 - x251
     )) + 1/sqrt(sqr(x48 - x52) + sqr(x148 - x152) + sqr(x248 - x252)) + 1/
     sqrt(sqr(x48 - x53) + sqr(x148 - x153) + sqr(x248 - x253)) + 1/sqrt(sqr(
     x48 - x54) + sqr(x148 - x154) + sqr(x248 - x254)) + 1/sqrt(sqr(x48 - x55)
      + sqr(x148 - x155) + sqr(x248 - x255)) + 1/sqrt(sqr(x48 - x56) + sqr(x148
      - x156) + sqr(x248 - x256)) + 1/sqrt(sqr(x48 - x57) + sqr(x148 - x157) + 
     sqr(x248 - x257)) + 1/sqrt(sqr(x48 - x58) + sqr(x148 - x158) + sqr(x248 - 
     x258)) + 1/sqrt(sqr(x48 - x59) + sqr(x148 - x159) + sqr(x248 - x259)) + 1/
     sqrt(sqr(x48 - x60) + sqr(x148 - x160) + sqr(x248 - x260)) + 1/sqrt(sqr(
     x48 - x61) + sqr(x148 - x161) + sqr(x248 - x261)) + 1/sqrt(sqr(x48 - x62)
      + sqr(x148 - x162) + sqr(x248 - x262)) + 1/sqrt(sqr(x48 - x63) + sqr(x148
      - x163) + sqr(x248 - x263)) + 1/sqrt(sqr(x48 - x64) + sqr(x148 - x164) + 
     sqr(x248 - x264)) + 1/sqrt(sqr(x48 - x65) + sqr(x148 - x165) + sqr(x248 - 
     x265)) + 1/sqrt(sqr(x48 - x66) + sqr(x148 - x166) + sqr(x248 - x266)) + 1/
     sqrt(sqr(x48 - x67) + sqr(x148 - x167) + sqr(x248 - x267)) + 1/sqrt(sqr(
     x48 - x68) + sqr(x148 - x168) + sqr(x248 - x268)) + 1/sqrt(sqr(x48 - x69)
      + sqr(x148 - x169) + sqr(x248 - x269)) + 1/sqrt(sqr(x48 - x70) + sqr(x148
      - x170) + sqr(x248 - x270)) + 1/sqrt(sqr(x48 - x71) + sqr(x148 - x171) + 
     sqr(x248 - x271)) + 1/sqrt(sqr(x48 - x72) + sqr(x148 - x172) + sqr(x248 - 
     x272)) + 1/sqrt(sqr(x48 - x73) + sqr(x148 - x173) + sqr(x248 - x273)) + 1/
     sqrt(sqr(x48 - x74) + sqr(x148 - x174) + sqr(x248 - x274)) + 1/sqrt(sqr(
     x48 - x75) + sqr(x148 - x175) + sqr(x248 - x275)) + 1/sqrt(sqr(x48 - x76)
      + sqr(x148 - x176) + sqr(x248 - x276)) + 1/sqrt(sqr(x48 - x77) + sqr(x148
      - x177) + sqr(x248 - x277)) + 1/sqrt(sqr(x48 - x78) + sqr(x148 - x178) + 
     sqr(x248 - x278)) + 1/sqrt(sqr(x48 - x79) + sqr(x148 - x179) + sqr(x248 - 
     x279)) + 1/sqrt(sqr(x48 - x80) + sqr(x148 - x180) + sqr(x248 - x280)) + 1/
     sqrt(sqr(x48 - x81) + sqr(x148 - x181) + sqr(x248 - x281)) + 1/sqrt(sqr(
     x48 - x82) + sqr(x148 - x182) + sqr(x248 - x282)) + 1/sqrt(sqr(x48 - x83)
      + sqr(x148 - x183) + sqr(x248 - x283)) + 1/sqrt(sqr(x48 - x84) + sqr(x148
      - x184) + sqr(x248 - x284)) + 1/sqrt(sqr(x48 - x85) + sqr(x148 - x185) + 
     sqr(x248 - x285)) + 1/sqrt(sqr(x48 - x86) + sqr(x148 - x186) + sqr(x248 - 
     x286)) + 1/sqrt(sqr(x48 - x87) + sqr(x148 - x187) + sqr(x248 - x287)) + 1/
     sqrt(sqr(x48 - x88) + sqr(x148 - x188) + sqr(x248 - x288)) + 1/sqrt(sqr(
     x48 - x89) + sqr(x148 - x189) + sqr(x248 - x289)) + 1/sqrt(sqr(x48 - x90)
      + sqr(x148 - x190) + sqr(x248 - x290)) + 1/sqrt(sqr(x48 - x91) + sqr(x148
      - x191) + sqr(x248 - x291)) + 1/sqrt(sqr(x48 - x92) + sqr(x148 - x192) + 
     sqr(x248 - x292)) + 1/sqrt(sqr(x48 - x93) + sqr(x148 - x193) + sqr(x248 - 
     x293)) + 1/sqrt(sqr(x48 - x94) + sqr(x148 - x194) + sqr(x248 - x294)) + 1/
     sqrt(sqr(x48 - x95) + sqr(x148 - x195) + sqr(x248 - x295)) + 1/sqrt(sqr(
     x48 - x96) + sqr(x148 - x196) + sqr(x248 - x296)) + 1/sqrt(sqr(x48 - x97)
      + sqr(x148 - x197) + sqr(x248 - x297)) + 1/sqrt(sqr(x48 - x98) + sqr(x148
      - x198) + sqr(x248 - x298)) + 1/sqrt(sqr(x48 - x99) + sqr(x148 - x199) + 
     sqr(x248 - x299)) + 1/sqrt(sqr(x48 - x100) + sqr(x148 - x200) + sqr(x248
      - x300)) + 1/sqrt(sqr(x49 - x50) + sqr(x149 - x150) + sqr(x249 - x250))
      + 1/sqrt(sqr(x49 - x51) + sqr(x149 - x151) + sqr(x249 - x251)) + 1/sqrt(
     sqr(x49 - x52) + sqr(x149 - x152) + sqr(x249 - x252)) + 1/sqrt(sqr(x49 - 
     x53) + sqr(x149 - x153) + sqr(x249 - x253)) + 1/sqrt(sqr(x49 - x54) + sqr(
     x149 - x154) + sqr(x249 - x254)) + 1/sqrt(sqr(x49 - x55) + sqr(x149 - x155
     ) + sqr(x249 - x255)) + 1/sqrt(sqr(x49 - x56) + sqr(x149 - x156) + sqr(
     x249 - x256)) + 1/sqrt(sqr(x49 - x57) + sqr(x149 - x157) + sqr(x249 - x257
     )) + 1/sqrt(sqr(x49 - x58) + sqr(x149 - x158) + sqr(x249 - x258)) + 1/
     sqrt(sqr(x49 - x59) + sqr(x149 - x159) + sqr(x249 - x259)) + 1/sqrt(sqr(
     x49 - x60) + sqr(x149 - x160) + sqr(x249 - x260)) + 1/sqrt(sqr(x49 - x61)
      + sqr(x149 - x161) + sqr(x249 - x261)) + 1/sqrt(sqr(x49 - x62) + sqr(x149
      - x162) + sqr(x249 - x262)) + 1/sqrt(sqr(x49 - x63) + sqr(x149 - x163) + 
     sqr(x249 - x263)) + 1/sqrt(sqr(x49 - x64) + sqr(x149 - x164) + sqr(x249 - 
     x264)) + 1/sqrt(sqr(x49 - x65) + sqr(x149 - x165) + sqr(x249 - x265)) + 1/
     sqrt(sqr(x49 - x66) + sqr(x149 - x166) + sqr(x249 - x266)) + 1/sqrt(sqr(
     x49 - x67) + sqr(x149 - x167) + sqr(x249 - x267)) + 1/sqrt(sqr(x49 - x68)
      + sqr(x149 - x168) + sqr(x249 - x268)) + 1/sqrt(sqr(x49 - x69) + sqr(x149
      - x169) + sqr(x249 - x269)) + 1/sqrt(sqr(x49 - x70) + sqr(x149 - x170) + 
     sqr(x249 - x270)) + 1/sqrt(sqr(x49 - x71) + sqr(x149 - x171) + sqr(x249 - 
     x271)) + 1/sqrt(sqr(x49 - x72) + sqr(x149 - x172) + sqr(x249 - x272)) + 1/
     sqrt(sqr(x49 - x73) + sqr(x149 - x173) + sqr(x249 - x273)) + 1/sqrt(sqr(
     x49 - x74) + sqr(x149 - x174) + sqr(x249 - x274)) + 1/sqrt(sqr(x49 - x75)
      + sqr(x149 - x175) + sqr(x249 - x275)) + 1/sqrt(sqr(x49 - x76) + sqr(x149
      - x176) + sqr(x249 - x276)) + 1/sqrt(sqr(x49 - x77) + sqr(x149 - x177) + 
     sqr(x249 - x277)) + 1/sqrt(sqr(x49 - x78) + sqr(x149 - x178) + sqr(x249 - 
     x278)) + 1/sqrt(sqr(x49 - x79) + sqr(x149 - x179) + sqr(x249 - x279)) + 1/
     sqrt(sqr(x49 - x80) + sqr(x149 - x180) + sqr(x249 - x280)) + 1/sqrt(sqr(
     x49 - x81) + sqr(x149 - x181) + sqr(x249 - x281)) + 1/sqrt(sqr(x49 - x82)
      + sqr(x149 - x182) + sqr(x249 - x282)) + 1/sqrt(sqr(x49 - x83) + sqr(x149
      - x183) + sqr(x249 - x283)) + 1/sqrt(sqr(x49 - x84) + sqr(x149 - x184) + 
     sqr(x249 - x284)) + 1/sqrt(sqr(x49 - x85) + sqr(x149 - x185) + sqr(x249 - 
     x285)) + 1/sqrt(sqr(x49 - x86) + sqr(x149 - x186) + sqr(x249 - x286)) + 1/
     sqrt(sqr(x49 - x87) + sqr(x149 - x187) + sqr(x249 - x287)) + 1/sqrt(sqr(
     x49 - x88) + sqr(x149 - x188) + sqr(x249 - x288)) + 1/sqrt(sqr(x49 - x89)
      + sqr(x149 - x189) + sqr(x249 - x289)) + 1/sqrt(sqr(x49 - x90) + sqr(x149
      - x190) + sqr(x249 - x290)) + 1/sqrt(sqr(x49 - x91) + sqr(x149 - x191) + 
     sqr(x249 - x291)) + 1/sqrt(sqr(x49 - x92) + sqr(x149 - x192) + sqr(x249 - 
     x292)) + 1/sqrt(sqr(x49 - x93) + sqr(x149 - x193) + sqr(x249 - x293)) + 1/
     sqrt(sqr(x49 - x94) + sqr(x149 - x194) + sqr(x249 - x294)) + 1/sqrt(sqr(
     x49 - x95) + sqr(x149 - x195) + sqr(x249 - x295)) + 1/sqrt(sqr(x49 - x96)
      + sqr(x149 - x196) + sqr(x249 - x296)) + 1/sqrt(sqr(x49 - x97) + sqr(x149
      - x197) + sqr(x249 - x297)) + 1/sqrt(sqr(x49 - x98) + sqr(x149 - x198) + 
     sqr(x249 - x298)) + 1/sqrt(sqr(x49 - x99) + sqr(x149 - x199) + sqr(x249 - 
     x299)) + 1/sqrt(sqr(x49 - x100) + sqr(x149 - x200) + sqr(x249 - x300)) + 1
     /sqrt(sqr(x50 - x51) + sqr(x150 - x151) + sqr(x250 - x251)) + 1/sqrt(sqr(
     x50 - x52) + sqr(x150 - x152) + sqr(x250 - x252)) + 1/sqrt(sqr(x50 - x53)
      + sqr(x150 - x153) + sqr(x250 - x253)) + 1/sqrt(sqr(x50 - x54) + sqr(x150
      - x154) + sqr(x250 - x254)) + 1/sqrt(sqr(x50 - x55) + sqr(x150 - x155) + 
     sqr(x250 - x255)) + 1/sqrt(sqr(x50 - x56) + sqr(x150 - x156) + sqr(x250 - 
     x256)) + 1/sqrt(sqr(x50 - x57) + sqr(x150 - x157) + sqr(x250 - x257)) + 1/
     sqrt(sqr(x50 - x58) + sqr(x150 - x158) + sqr(x250 - x258)) + 1/sqrt(sqr(
     x50 - x59) + sqr(x150 - x159) + sqr(x250 - x259)) + 1/sqrt(sqr(x50 - x60)
      + sqr(x150 - x160) + sqr(x250 - x260)) + 1/sqrt(sqr(x50 - x61) + sqr(x150
      - x161) + sqr(x250 - x261)) + 1/sqrt(sqr(x50 - x62) + sqr(x150 - x162) + 
     sqr(x250 - x262)) + 1/sqrt(sqr(x50 - x63) + sqr(x150 - x163) + sqr(x250 - 
     x263)) + 1/sqrt(sqr(x50 - x64) + sqr(x150 - x164) + sqr(x250 - x264)) + 1/
     sqrt(sqr(x50 - x65) + sqr(x150 - x165) + sqr(x250 - x265)) + 1/sqrt(sqr(
     x50 - x66) + sqr(x150 - x166) + sqr(x250 - x266)) + 1/sqrt(sqr(x50 - x67)
      + sqr(x150 - x167) + sqr(x250 - x267)) + 1/sqrt(sqr(x50 - x68) + sqr(x150
      - x168) + sqr(x250 - x268)) + 1/sqrt(sqr(x50 - x69) + sqr(x150 - x169) + 
     sqr(x250 - x269)) + 1/sqrt(sqr(x50 - x70) + sqr(x150 - x170) + sqr(x250 - 
     x270)) + 1/sqrt(sqr(x50 - x71) + sqr(x150 - x171) + sqr(x250 - x271)) + 1/
     sqrt(sqr(x50 - x72) + sqr(x150 - x172) + sqr(x250 - x272)) + 1/sqrt(sqr(
     x50 - x73) + sqr(x150 - x173) + sqr(x250 - x273)) + 1/sqrt(sqr(x50 - x74)
      + sqr(x150 - x174) + sqr(x250 - x274)) + 1/sqrt(sqr(x50 - x75) + sqr(x150
      - x175) + sqr(x250 - x275)) + 1/sqrt(sqr(x50 - x76) + sqr(x150 - x176) + 
     sqr(x250 - x276)) + 1/sqrt(sqr(x50 - x77) + sqr(x150 - x177) + sqr(x250 - 
     x277)) + 1/sqrt(sqr(x50 - x78) + sqr(x150 - x178) + sqr(x250 - x278)) + 1/
     sqrt(sqr(x50 - x79) + sqr(x150 - x179) + sqr(x250 - x279)) + 1/sqrt(sqr(
     x50 - x80) + sqr(x150 - x180) + sqr(x250 - x280)) + 1/sqrt(sqr(x50 - x81)
      + sqr(x150 - x181) + sqr(x250 - x281)) + 1/sqrt(sqr(x50 - x82) + sqr(x150
      - x182) + sqr(x250 - x282)) + 1/sqrt(sqr(x50 - x83) + sqr(x150 - x183) + 
     sqr(x250 - x283)) + 1/sqrt(sqr(x50 - x84) + sqr(x150 - x184) + sqr(x250 - 
     x284)) + 1/sqrt(sqr(x50 - x85) + sqr(x150 - x185) + sqr(x250 - x285)) + 1/
     sqrt(sqr(x50 - x86) + sqr(x150 - x186) + sqr(x250 - x286)) + 1/sqrt(sqr(
     x50 - x87) + sqr(x150 - x187) + sqr(x250 - x287)) + 1/sqrt(sqr(x50 - x88)
      + sqr(x150 - x188) + sqr(x250 - x288)) + 1/sqrt(sqr(x50 - x89) + sqr(x150
      - x189) + sqr(x250 - x289)) + 1/sqrt(sqr(x50 - x90) + sqr(x150 - x190) + 
     sqr(x250 - x290)) + 1/sqrt(sqr(x50 - x91) + sqr(x150 - x191) + sqr(x250 - 
     x291)) + 1/sqrt(sqr(x50 - x92) + sqr(x150 - x192) + sqr(x250 - x292)) + 1/
     sqrt(sqr(x50 - x93) + sqr(x150 - x193) + sqr(x250 - x293)) + 1/sqrt(sqr(
     x50 - x94) + sqr(x150 - x194) + sqr(x250 - x294)) + 1/sqrt(sqr(x50 - x95)
      + sqr(x150 - x195) + sqr(x250 - x295)) + 1/sqrt(sqr(x50 - x96) + sqr(x150
      - x196) + sqr(x250 - x296)) + 1/sqrt(sqr(x50 - x97) + sqr(x150 - x197) + 
     sqr(x250 - x297)) + 1/sqrt(sqr(x50 - x98) + sqr(x150 - x198) + sqr(x250 - 
     x298)) + 1/sqrt(sqr(x50 - x99) + sqr(x150 - x199) + sqr(x250 - x299)) + 1/
     sqrt(sqr(x50 - x100) + sqr(x150 - x200) + sqr(x250 - x300)) + 1/sqrt(sqr(
     x51 - x52) + sqr(x151 - x152) + sqr(x251 - x252)) + 1/sqrt(sqr(x51 - x53)
      + sqr(x151 - x153) + sqr(x251 - x253)) + 1/sqrt(sqr(x51 - x54) + sqr(x151
      - x154) + sqr(x251 - x254)) + 1/sqrt(sqr(x51 - x55) + sqr(x151 - x155) + 
     sqr(x251 - x255)) + 1/sqrt(sqr(x51 - x56) + sqr(x151 - x156) + sqr(x251 - 
     x256)) + 1/sqrt(sqr(x51 - x57) + sqr(x151 - x157) + sqr(x251 - x257)) + 1/
     sqrt(sqr(x51 - x58) + sqr(x151 - x158) + sqr(x251 - x258)) + 1/sqrt(sqr(
     x51 - x59) + sqr(x151 - x159) + sqr(x251 - x259)) + 1/sqrt(sqr(x51 - x60)
      + sqr(x151 - x160) + sqr(x251 - x260)) + 1/sqrt(sqr(x51 - x61) + sqr(x151
      - x161) + sqr(x251 - x261)) + 1/sqrt(sqr(x51 - x62) + sqr(x151 - x162) + 
     sqr(x251 - x262)) + 1/sqrt(sqr(x51 - x63) + sqr(x151 - x163) + sqr(x251 - 
     x263)) + 1/sqrt(sqr(x51 - x64) + sqr(x151 - x164) + sqr(x251 - x264)) + 1/
     sqrt(sqr(x51 - x65) + sqr(x151 - x165) + sqr(x251 - x265)) + 1/sqrt(sqr(
     x51 - x66) + sqr(x151 - x166) + sqr(x251 - x266)) + 1/sqrt(sqr(x51 - x67)
      + sqr(x151 - x167) + sqr(x251 - x267)) + 1/sqrt(sqr(x51 - x68) + sqr(x151
      - x168) + sqr(x251 - x268)) + 1/sqrt(sqr(x51 - x69) + sqr(x151 - x169) + 
     sqr(x251 - x269)) + 1/sqrt(sqr(x51 - x70) + sqr(x151 - x170) + sqr(x251 - 
     x270)) + 1/sqrt(sqr(x51 - x71) + sqr(x151 - x171) + sqr(x251 - x271)) + 1/
     sqrt(sqr(x51 - x72) + sqr(x151 - x172) + sqr(x251 - x272)) + 1/sqrt(sqr(
     x51 - x73) + sqr(x151 - x173) + sqr(x251 - x273)) + 1/sqrt(sqr(x51 - x74)
      + sqr(x151 - x174) + sqr(x251 - x274)) + 1/sqrt(sqr(x51 - x75) + sqr(x151
      - x175) + sqr(x251 - x275)) + 1/sqrt(sqr(x51 - x76) + sqr(x151 - x176) + 
     sqr(x251 - x276)) + 1/sqrt(sqr(x51 - x77) + sqr(x151 - x177) + sqr(x251 - 
     x277)) + 1/sqrt(sqr(x51 - x78) + sqr(x151 - x178) + sqr(x251 - x278)) + 1/
     sqrt(sqr(x51 - x79) + sqr(x151 - x179) + sqr(x251 - x279)) + 1/sqrt(sqr(
     x51 - x80) + sqr(x151 - x180) + sqr(x251 - x280)) + 1/sqrt(sqr(x51 - x81)
      + sqr(x151 - x181) + sqr(x251 - x281)) + 1/sqrt(sqr(x51 - x82) + sqr(x151
      - x182) + sqr(x251 - x282)) + 1/sqrt(sqr(x51 - x83) + sqr(x151 - x183) + 
     sqr(x251 - x283)) + 1/sqrt(sqr(x51 - x84) + sqr(x151 - x184) + sqr(x251 - 
     x284)) + 1/sqrt(sqr(x51 - x85) + sqr(x151 - x185) + sqr(x251 - x285)) + 1/
     sqrt(sqr(x51 - x86) + sqr(x151 - x186) + sqr(x251 - x286)) + 1/sqrt(sqr(
     x51 - x87) + sqr(x151 - x187) + sqr(x251 - x287)) + 1/sqrt(sqr(x51 - x88)
      + sqr(x151 - x188) + sqr(x251 - x288)) + 1/sqrt(sqr(x51 - x89) + sqr(x151
      - x189) + sqr(x251 - x289)) + 1/sqrt(sqr(x51 - x90) + sqr(x151 - x190) + 
     sqr(x251 - x290)) + 1/sqrt(sqr(x51 - x91) + sqr(x151 - x191) + sqr(x251 - 
     x291)) + 1/sqrt(sqr(x51 - x92) + sqr(x151 - x192) + sqr(x251 - x292)) + 1/
     sqrt(sqr(x51 - x93) + sqr(x151 - x193) + sqr(x251 - x293)) + 1/sqrt(sqr(
     x51 - x94) + sqr(x151 - x194) + sqr(x251 - x294)) + 1/sqrt(sqr(x51 - x95)
      + sqr(x151 - x195) + sqr(x251 - x295)) + 1/sqrt(sqr(x51 - x96) + sqr(x151
      - x196) + sqr(x251 - x296)) + 1/sqrt(sqr(x51 - x97) + sqr(x151 - x197) + 
     sqr(x251 - x297)) + 1/sqrt(sqr(x51 - x98) + sqr(x151 - x198) + sqr(x251 - 
     x298)) + 1/sqrt(sqr(x51 - x99) + sqr(x151 - x199) + sqr(x251 - x299)) + 1/
     sqrt(sqr(x51 - x100) + sqr(x151 - x200) + sqr(x251 - x300)) + 1/sqrt(sqr(
     x52 - x53) + sqr(x152 - x153) + sqr(x252 - x253)) + 1/sqrt(sqr(x52 - x54)
      + sqr(x152 - x154) + sqr(x252 - x254)) + 1/sqrt(sqr(x52 - x55) + sqr(x152
      - x155) + sqr(x252 - x255)) + 1/sqrt(sqr(x52 - x56) + sqr(x152 - x156) + 
     sqr(x252 - x256)) + 1/sqrt(sqr(x52 - x57) + sqr(x152 - x157) + sqr(x252 - 
     x257)) + 1/sqrt(sqr(x52 - x58) + sqr(x152 - x158) + sqr(x252 - x258)) + 1/
     sqrt(sqr(x52 - x59) + sqr(x152 - x159) + sqr(x252 - x259)) + 1/sqrt(sqr(
     x52 - x60) + sqr(x152 - x160) + sqr(x252 - x260)) + 1/sqrt(sqr(x52 - x61)
      + sqr(x152 - x161) + sqr(x252 - x261)) + 1/sqrt(sqr(x52 - x62) + sqr(x152
      - x162) + sqr(x252 - x262)) + 1/sqrt(sqr(x52 - x63) + sqr(x152 - x163) + 
     sqr(x252 - x263)) + 1/sqrt(sqr(x52 - x64) + sqr(x152 - x164) + sqr(x252 - 
     x264)) + 1/sqrt(sqr(x52 - x65) + sqr(x152 - x165) + sqr(x252 - x265)) + 1/
     sqrt(sqr(x52 - x66) + sqr(x152 - x166) + sqr(x252 - x266)) + 1/sqrt(sqr(
     x52 - x67) + sqr(x152 - x167) + sqr(x252 - x267)) + 1/sqrt(sqr(x52 - x68)
      + sqr(x152 - x168) + sqr(x252 - x268)) + 1/sqrt(sqr(x52 - x69) + sqr(x152
      - x169) + sqr(x252 - x269)) + 1/sqrt(sqr(x52 - x70) + sqr(x152 - x170) + 
     sqr(x252 - x270)) + 1/sqrt(sqr(x52 - x71) + sqr(x152 - x171) + sqr(x252 - 
     x271)) + 1/sqrt(sqr(x52 - x72) + sqr(x152 - x172) + sqr(x252 - x272)) + 1/
     sqrt(sqr(x52 - x73) + sqr(x152 - x173) + sqr(x252 - x273)) + 1/sqrt(sqr(
     x52 - x74) + sqr(x152 - x174) + sqr(x252 - x274)) + 1/sqrt(sqr(x52 - x75)
      + sqr(x152 - x175) + sqr(x252 - x275)) + 1/sqrt(sqr(x52 - x76) + sqr(x152
      - x176) + sqr(x252 - x276)) + 1/sqrt(sqr(x52 - x77) + sqr(x152 - x177) + 
     sqr(x252 - x277)) + 1/sqrt(sqr(x52 - x78) + sqr(x152 - x178) + sqr(x252 - 
     x278)) + 1/sqrt(sqr(x52 - x79) + sqr(x152 - x179) + sqr(x252 - x279)) + 1/
     sqrt(sqr(x52 - x80) + sqr(x152 - x180) + sqr(x252 - x280)) + 1/sqrt(sqr(
     x52 - x81) + sqr(x152 - x181) + sqr(x252 - x281)) + 1/sqrt(sqr(x52 - x82)
      + sqr(x152 - x182) + sqr(x252 - x282)) + 1/sqrt(sqr(x52 - x83) + sqr(x152
      - x183) + sqr(x252 - x283)) + 1/sqrt(sqr(x52 - x84) + sqr(x152 - x184) + 
     sqr(x252 - x284)) + 1/sqrt(sqr(x52 - x85) + sqr(x152 - x185) + sqr(x252 - 
     x285)) + 1/sqrt(sqr(x52 - x86) + sqr(x152 - x186) + sqr(x252 - x286)) + 1/
     sqrt(sqr(x52 - x87) + sqr(x152 - x187) + sqr(x252 - x287)) + 1/sqrt(sqr(
     x52 - x88) + sqr(x152 - x188) + sqr(x252 - x288)) + 1/sqrt(sqr(x52 - x89)
      + sqr(x152 - x189) + sqr(x252 - x289)) + 1/sqrt(sqr(x52 - x90) + sqr(x152
      - x190) + sqr(x252 - x290)) + 1/sqrt(sqr(x52 - x91) + sqr(x152 - x191) + 
     sqr(x252 - x291)) + 1/sqrt(sqr(x52 - x92) + sqr(x152 - x192) + sqr(x252 - 
     x292)) + 1/sqrt(sqr(x52 - x93) + sqr(x152 - x193) + sqr(x252 - x293)) + 1/
     sqrt(sqr(x52 - x94) + sqr(x152 - x194) + sqr(x252 - x294)) + 1/sqrt(sqr(
     x52 - x95) + sqr(x152 - x195) + sqr(x252 - x295)) + 1/sqrt(sqr(x52 - x96)
      + sqr(x152 - x196) + sqr(x252 - x296)) + 1/sqrt(sqr(x52 - x97) + sqr(x152
      - x197) + sqr(x252 - x297)) + 1/sqrt(sqr(x52 - x98) + sqr(x152 - x198) + 
     sqr(x252 - x298)) + 1/sqrt(sqr(x52 - x99) + sqr(x152 - x199) + sqr(x252 - 
     x299)) + 1/sqrt(sqr(x52 - x100) + sqr(x152 - x200) + sqr(x252 - x300)) + 1
     /sqrt(sqr(x53 - x54) + sqr(x153 - x154) + sqr(x253 - x254)) + 1/sqrt(sqr(
     x53 - x55) + sqr(x153 - x155) + sqr(x253 - x255)) + 1/sqrt(sqr(x53 - x56)
      + sqr(x153 - x156) + sqr(x253 - x256)) + 1/sqrt(sqr(x53 - x57) + sqr(x153
      - x157) + sqr(x253 - x257)) + 1/sqrt(sqr(x53 - x58) + sqr(x153 - x158) + 
     sqr(x253 - x258)) + 1/sqrt(sqr(x53 - x59) + sqr(x153 - x159) + sqr(x253 - 
     x259)) + 1/sqrt(sqr(x53 - x60) + sqr(x153 - x160) + sqr(x253 - x260)) + 1/
     sqrt(sqr(x53 - x61) + sqr(x153 - x161) + sqr(x253 - x261)) + 1/sqrt(sqr(
     x53 - x62) + sqr(x153 - x162) + sqr(x253 - x262)) + 1/sqrt(sqr(x53 - x63)
      + sqr(x153 - x163) + sqr(x253 - x263)) + 1/sqrt(sqr(x53 - x64) + sqr(x153
      - x164) + sqr(x253 - x264)) + 1/sqrt(sqr(x53 - x65) + sqr(x153 - x165) + 
     sqr(x253 - x265)) + 1/sqrt(sqr(x53 - x66) + sqr(x153 - x166) + sqr(x253 - 
     x266)) + 1/sqrt(sqr(x53 - x67) + sqr(x153 - x167) + sqr(x253 - x267)) + 1/
     sqrt(sqr(x53 - x68) + sqr(x153 - x168) + sqr(x253 - x268)) + 1/sqrt(sqr(
     x53 - x69) + sqr(x153 - x169) + sqr(x253 - x269)) + 1/sqrt(sqr(x53 - x70)
      + sqr(x153 - x170) + sqr(x253 - x270)) + 1/sqrt(sqr(x53 - x71) + sqr(x153
      - x171) + sqr(x253 - x271)) + 1/sqrt(sqr(x53 - x72) + sqr(x153 - x172) + 
     sqr(x253 - x272)) + 1/sqrt(sqr(x53 - x73) + sqr(x153 - x173) + sqr(x253 - 
     x273)) + 1/sqrt(sqr(x53 - x74) + sqr(x153 - x174) + sqr(x253 - x274)) + 1/
     sqrt(sqr(x53 - x75) + sqr(x153 - x175) + sqr(x253 - x275)) + 1/sqrt(sqr(
     x53 - x76) + sqr(x153 - x176) + sqr(x253 - x276)) + 1/sqrt(sqr(x53 - x77)
      + sqr(x153 - x177) + sqr(x253 - x277)) + 1/sqrt(sqr(x53 - x78) + sqr(x153
      - x178) + sqr(x253 - x278)) + 1/sqrt(sqr(x53 - x79) + sqr(x153 - x179) + 
     sqr(x253 - x279)) + 1/sqrt(sqr(x53 - x80) + sqr(x153 - x180) + sqr(x253 - 
     x280)) + 1/sqrt(sqr(x53 - x81) + sqr(x153 - x181) + sqr(x253 - x281)) + 1/
     sqrt(sqr(x53 - x82) + sqr(x153 - x182) + sqr(x253 - x282)) + 1/sqrt(sqr(
     x53 - x83) + sqr(x153 - x183) + sqr(x253 - x283)) + 1/sqrt(sqr(x53 - x84)
      + sqr(x153 - x184) + sqr(x253 - x284)) + 1/sqrt(sqr(x53 - x85) + sqr(x153
      - x185) + sqr(x253 - x285)) + 1/sqrt(sqr(x53 - x86) + sqr(x153 - x186) + 
     sqr(x253 - x286)) + 1/sqrt(sqr(x53 - x87) + sqr(x153 - x187) + sqr(x253 - 
     x287)) + 1/sqrt(sqr(x53 - x88) + sqr(x153 - x188) + sqr(x253 - x288)) + 1/
     sqrt(sqr(x53 - x89) + sqr(x153 - x189) + sqr(x253 - x289)) + 1/sqrt(sqr(
     x53 - x90) + sqr(x153 - x190) + sqr(x253 - x290)) + 1/sqrt(sqr(x53 - x91)
      + sqr(x153 - x191) + sqr(x253 - x291)) + 1/sqrt(sqr(x53 - x92) + sqr(x153
      - x192) + sqr(x253 - x292)) + 1/sqrt(sqr(x53 - x93) + sqr(x153 - x193) + 
     sqr(x253 - x293)) + 1/sqrt(sqr(x53 - x94) + sqr(x153 - x194) + sqr(x253 - 
     x294)) + 1/sqrt(sqr(x53 - x95) + sqr(x153 - x195) + sqr(x253 - x295)) + 1/
     sqrt(sqr(x53 - x96) + sqr(x153 - x196) + sqr(x253 - x296)) + 1/sqrt(sqr(
     x53 - x97) + sqr(x153 - x197) + sqr(x253 - x297)) + 1/sqrt(sqr(x53 - x98)
      + sqr(x153 - x198) + sqr(x253 - x298)) + 1/sqrt(sqr(x53 - x99) + sqr(x153
      - x199) + sqr(x253 - x299)) + 1/sqrt(sqr(x53 - x100) + sqr(x153 - x200)
      + sqr(x253 - x300)) + 1/sqrt(sqr(x54 - x55) + sqr(x154 - x155) + sqr(x254
      - x255)) + 1/sqrt(sqr(x54 - x56) + sqr(x154 - x156) + sqr(x254 - x256))
      + 1/sqrt(sqr(x54 - x57) + sqr(x154 - x157) + sqr(x254 - x257)) + 1/sqrt(
     sqr(x54 - x58) + sqr(x154 - x158) + sqr(x254 - x258)) + 1/sqrt(sqr(x54 - 
     x59) + sqr(x154 - x159) + sqr(x254 - x259)) + 1/sqrt(sqr(x54 - x60) + sqr(
     x154 - x160) + sqr(x254 - x260)) + 1/sqrt(sqr(x54 - x61) + sqr(x154 - x161
     ) + sqr(x254 - x261)) + 1/sqrt(sqr(x54 - x62) + sqr(x154 - x162) + sqr(
     x254 - x262)) + 1/sqrt(sqr(x54 - x63) + sqr(x154 - x163) + sqr(x254 - x263
     )) + 1/sqrt(sqr(x54 - x64) + sqr(x154 - x164) + sqr(x254 - x264)) + 1/
     sqrt(sqr(x54 - x65) + sqr(x154 - x165) + sqr(x254 - x265)) + 1/sqrt(sqr(
     x54 - x66) + sqr(x154 - x166) + sqr(x254 - x266)) + 1/sqrt(sqr(x54 - x67)
      + sqr(x154 - x167) + sqr(x254 - x267)) + 1/sqrt(sqr(x54 - x68) + sqr(x154
      - x168) + sqr(x254 - x268)) + 1/sqrt(sqr(x54 - x69) + sqr(x154 - x169) + 
     sqr(x254 - x269)) + 1/sqrt(sqr(x54 - x70) + sqr(x154 - x170) + sqr(x254 - 
     x270)) + 1/sqrt(sqr(x54 - x71) + sqr(x154 - x171) + sqr(x254 - x271)) + 1/
     sqrt(sqr(x54 - x72) + sqr(x154 - x172) + sqr(x254 - x272)) + 1/sqrt(sqr(
     x54 - x73) + sqr(x154 - x173) + sqr(x254 - x273)) + 1/sqrt(sqr(x54 - x74)
      + sqr(x154 - x174) + sqr(x254 - x274)) + 1/sqrt(sqr(x54 - x75) + sqr(x154
      - x175) + sqr(x254 - x275)) + 1/sqrt(sqr(x54 - x76) + sqr(x154 - x176) + 
     sqr(x254 - x276)) + 1/sqrt(sqr(x54 - x77) + sqr(x154 - x177) + sqr(x254 - 
     x277)) + 1/sqrt(sqr(x54 - x78) + sqr(x154 - x178) + sqr(x254 - x278)) + 1/
     sqrt(sqr(x54 - x79) + sqr(x154 - x179) + sqr(x254 - x279)) + 1/sqrt(sqr(
     x54 - x80) + sqr(x154 - x180) + sqr(x254 - x280)) + 1/sqrt(sqr(x54 - x81)
      + sqr(x154 - x181) + sqr(x254 - x281)) + 1/sqrt(sqr(x54 - x82) + sqr(x154
      - x182) + sqr(x254 - x282)) + 1/sqrt(sqr(x54 - x83) + sqr(x154 - x183) + 
     sqr(x254 - x283)) + 1/sqrt(sqr(x54 - x84) + sqr(x154 - x184) + sqr(x254 - 
     x284)) + 1/sqrt(sqr(x54 - x85) + sqr(x154 - x185) + sqr(x254 - x285)) + 1/
     sqrt(sqr(x54 - x86) + sqr(x154 - x186) + sqr(x254 - x286)) + 1/sqrt(sqr(
     x54 - x87) + sqr(x154 - x187) + sqr(x254 - x287)) + 1/sqrt(sqr(x54 - x88)
      + sqr(x154 - x188) + sqr(x254 - x288)) + 1/sqrt(sqr(x54 - x89) + sqr(x154
      - x189) + sqr(x254 - x289)) + 1/sqrt(sqr(x54 - x90) + sqr(x154 - x190) + 
     sqr(x254 - x290)) + 1/sqrt(sqr(x54 - x91) + sqr(x154 - x191) + sqr(x254 - 
     x291)) + 1/sqrt(sqr(x54 - x92) + sqr(x154 - x192) + sqr(x254 - x292)) + 1/
     sqrt(sqr(x54 - x93) + sqr(x154 - x193) + sqr(x254 - x293)) + 1/sqrt(sqr(
     x54 - x94) + sqr(x154 - x194) + sqr(x254 - x294)) + 1/sqrt(sqr(x54 - x95)
      + sqr(x154 - x195) + sqr(x254 - x295)) + 1/sqrt(sqr(x54 - x96) + sqr(x154
      - x196) + sqr(x254 - x296)) + 1/sqrt(sqr(x54 - x97) + sqr(x154 - x197) + 
     sqr(x254 - x297)) + 1/sqrt(sqr(x54 - x98) + sqr(x154 - x198) + sqr(x254 - 
     x298)) + 1/sqrt(sqr(x54 - x99) + sqr(x154 - x199) + sqr(x254 - x299)) + 1/
     sqrt(sqr(x54 - x100) + sqr(x154 - x200) + sqr(x254 - x300)) + 1/sqrt(sqr(
     x55 - x56) + sqr(x155 - x156) + sqr(x255 - x256)) + 1/sqrt(sqr(x55 - x57)
      + sqr(x155 - x157) + sqr(x255 - x257)) + 1/sqrt(sqr(x55 - x58) + sqr(x155
      - x158) + sqr(x255 - x258)) + 1/sqrt(sqr(x55 - x59) + sqr(x155 - x159) + 
     sqr(x255 - x259)) + 1/sqrt(sqr(x55 - x60) + sqr(x155 - x160) + sqr(x255 - 
     x260)) + 1/sqrt(sqr(x55 - x61) + sqr(x155 - x161) + sqr(x255 - x261)) + 1/
     sqrt(sqr(x55 - x62) + sqr(x155 - x162) + sqr(x255 - x262)) + 1/sqrt(sqr(
     x55 - x63) + sqr(x155 - x163) + sqr(x255 - x263)) + 1/sqrt(sqr(x55 - x64)
      + sqr(x155 - x164) + sqr(x255 - x264)) + 1/sqrt(sqr(x55 - x65) + sqr(x155
      - x165) + sqr(x255 - x265)) + 1/sqrt(sqr(x55 - x66) + sqr(x155 - x166) + 
     sqr(x255 - x266)) + 1/sqrt(sqr(x55 - x67) + sqr(x155 - x167) + sqr(x255 - 
     x267)) + 1/sqrt(sqr(x55 - x68) + sqr(x155 - x168) + sqr(x255 - x268)) + 1/
     sqrt(sqr(x55 - x69) + sqr(x155 - x169) + sqr(x255 - x269)) + 1/sqrt(sqr(
     x55 - x70) + sqr(x155 - x170) + sqr(x255 - x270)) + 1/sqrt(sqr(x55 - x71)
      + sqr(x155 - x171) + sqr(x255 - x271)) + 1/sqrt(sqr(x55 - x72) + sqr(x155
      - x172) + sqr(x255 - x272)) + 1/sqrt(sqr(x55 - x73) + sqr(x155 - x173) + 
     sqr(x255 - x273)) + 1/sqrt(sqr(x55 - x74) + sqr(x155 - x174) + sqr(x255 - 
     x274)) + 1/sqrt(sqr(x55 - x75) + sqr(x155 - x175) + sqr(x255 - x275)) + 1/
     sqrt(sqr(x55 - x76) + sqr(x155 - x176) + sqr(x255 - x276)) + 1/sqrt(sqr(
     x55 - x77) + sqr(x155 - x177) + sqr(x255 - x277)) + 1/sqrt(sqr(x55 - x78)
      + sqr(x155 - x178) + sqr(x255 - x278)) + 1/sqrt(sqr(x55 - x79) + sqr(x155
      - x179) + sqr(x255 - x279)) + 1/sqrt(sqr(x55 - x80) + sqr(x155 - x180) + 
     sqr(x255 - x280)) + 1/sqrt(sqr(x55 - x81) + sqr(x155 - x181) + sqr(x255 - 
     x281)) + 1/sqrt(sqr(x55 - x82) + sqr(x155 - x182) + sqr(x255 - x282)) + 1/
     sqrt(sqr(x55 - x83) + sqr(x155 - x183) + sqr(x255 - x283)) + 1/sqrt(sqr(
     x55 - x84) + sqr(x155 - x184) + sqr(x255 - x284)) + 1/sqrt(sqr(x55 - x85)
      + sqr(x155 - x185) + sqr(x255 - x285)) + 1/sqrt(sqr(x55 - x86) + sqr(x155
      - x186) + sqr(x255 - x286)) + 1/sqrt(sqr(x55 - x87) + sqr(x155 - x187) + 
     sqr(x255 - x287)) + 1/sqrt(sqr(x55 - x88) + sqr(x155 - x188) + sqr(x255 - 
     x288)) + 1/sqrt(sqr(x55 - x89) + sqr(x155 - x189) + sqr(x255 - x289)) + 1/
     sqrt(sqr(x55 - x90) + sqr(x155 - x190) + sqr(x255 - x290)) + 1/sqrt(sqr(
     x55 - x91) + sqr(x155 - x191) + sqr(x255 - x291)) + 1/sqrt(sqr(x55 - x92)
      + sqr(x155 - x192) + sqr(x255 - x292)) + 1/sqrt(sqr(x55 - x93) + sqr(x155
      - x193) + sqr(x255 - x293)) + 1/sqrt(sqr(x55 - x94) + sqr(x155 - x194) + 
     sqr(x255 - x294)) + 1/sqrt(sqr(x55 - x95) + sqr(x155 - x195) + sqr(x255 - 
     x295)) + 1/sqrt(sqr(x55 - x96) + sqr(x155 - x196) + sqr(x255 - x296)) + 1/
     sqrt(sqr(x55 - x97) + sqr(x155 - x197) + sqr(x255 - x297)) + 1/sqrt(sqr(
     x55 - x98) + sqr(x155 - x198) + sqr(x255 - x298)) + 1/sqrt(sqr(x55 - x99)
      + sqr(x155 - x199) + sqr(x255 - x299)) + 1/sqrt(sqr(x55 - x100) + sqr(
     x155 - x200) + sqr(x255 - x300)) + 1/sqrt(sqr(x56 - x57) + sqr(x156 - x157
     ) + sqr(x256 - x257)) + 1/sqrt(sqr(x56 - x58) + sqr(x156 - x158) + sqr(
     x256 - x258)) + 1/sqrt(sqr(x56 - x59) + sqr(x156 - x159) + sqr(x256 - x259
     )) + 1/sqrt(sqr(x56 - x60) + sqr(x156 - x160) + sqr(x256 - x260)) + 1/
     sqrt(sqr(x56 - x61) + sqr(x156 - x161) + sqr(x256 - x261)) + 1/sqrt(sqr(
     x56 - x62) + sqr(x156 - x162) + sqr(x256 - x262)) + 1/sqrt(sqr(x56 - x63)
      + sqr(x156 - x163) + sqr(x256 - x263)) + 1/sqrt(sqr(x56 - x64) + sqr(x156
      - x164) + sqr(x256 - x264)) + 1/sqrt(sqr(x56 - x65) + sqr(x156 - x165) + 
     sqr(x256 - x265)) + 1/sqrt(sqr(x56 - x66) + sqr(x156 - x166) + sqr(x256 - 
     x266)) + 1/sqrt(sqr(x56 - x67) + sqr(x156 - x167) + sqr(x256 - x267)) + 1/
     sqrt(sqr(x56 - x68) + sqr(x156 - x168) + sqr(x256 - x268)) + 1/sqrt(sqr(
     x56 - x69) + sqr(x156 - x169) + sqr(x256 - x269)) + 1/sqrt(sqr(x56 - x70)
      + sqr(x156 - x170) + sqr(x256 - x270)) + 1/sqrt(sqr(x56 - x71) + sqr(x156
      - x171) + sqr(x256 - x271)) + 1/sqrt(sqr(x56 - x72) + sqr(x156 - x172) + 
     sqr(x256 - x272)) + 1/sqrt(sqr(x56 - x73) + sqr(x156 - x173) + sqr(x256 - 
     x273)) + 1/sqrt(sqr(x56 - x74) + sqr(x156 - x174) + sqr(x256 - x274)) + 1/
     sqrt(sqr(x56 - x75) + sqr(x156 - x175) + sqr(x256 - x275)) + 1/sqrt(sqr(
     x56 - x76) + sqr(x156 - x176) + sqr(x256 - x276)) + 1/sqrt(sqr(x56 - x77)
      + sqr(x156 - x177) + sqr(x256 - x277)) + 1/sqrt(sqr(x56 - x78) + sqr(x156
      - x178) + sqr(x256 - x278)) + 1/sqrt(sqr(x56 - x79) + sqr(x156 - x179) + 
     sqr(x256 - x279)) + 1/sqrt(sqr(x56 - x80) + sqr(x156 - x180) + sqr(x256 - 
     x280)) + 1/sqrt(sqr(x56 - x81) + sqr(x156 - x181) + sqr(x256 - x281)) + 1/
     sqrt(sqr(x56 - x82) + sqr(x156 - x182) + sqr(x256 - x282)) + 1/sqrt(sqr(
     x56 - x83) + sqr(x156 - x183) + sqr(x256 - x283)) + 1/sqrt(sqr(x56 - x84)
      + sqr(x156 - x184) + sqr(x256 - x284)) + 1/sqrt(sqr(x56 - x85) + sqr(x156
      - x185) + sqr(x256 - x285)) + 1/sqrt(sqr(x56 - x86) + sqr(x156 - x186) + 
     sqr(x256 - x286)) + 1/sqrt(sqr(x56 - x87) + sqr(x156 - x187) + sqr(x256 - 
     x287)) + 1/sqrt(sqr(x56 - x88) + sqr(x156 - x188) + sqr(x256 - x288)) + 1/
     sqrt(sqr(x56 - x89) + sqr(x156 - x189) + sqr(x256 - x289)) + 1/sqrt(sqr(
     x56 - x90) + sqr(x156 - x190) + sqr(x256 - x290)) + 1/sqrt(sqr(x56 - x91)
      + sqr(x156 - x191) + sqr(x256 - x291)) + 1/sqrt(sqr(x56 - x92) + sqr(x156
      - x192) + sqr(x256 - x292)) + 1/sqrt(sqr(x56 - x93) + sqr(x156 - x193) + 
     sqr(x256 - x293)) + 1/sqrt(sqr(x56 - x94) + sqr(x156 - x194) + sqr(x256 - 
     x294)) + 1/sqrt(sqr(x56 - x95) + sqr(x156 - x195) + sqr(x256 - x295)) + 1/
     sqrt(sqr(x56 - x96) + sqr(x156 - x196) + sqr(x256 - x296)) + 1/sqrt(sqr(
     x56 - x97) + sqr(x156 - x197) + sqr(x256 - x297)) + 1/sqrt(sqr(x56 - x98)
      + sqr(x156 - x198) + sqr(x256 - x298)) + 1/sqrt(sqr(x56 - x99) + sqr(x156
      - x199) + sqr(x256 - x299)) + 1/sqrt(sqr(x56 - x100) + sqr(x156 - x200)
      + sqr(x256 - x300)) + 1/sqrt(sqr(x57 - x58) + sqr(x157 - x158) + sqr(x257
      - x258)) + 1/sqrt(sqr(x57 - x59) + sqr(x157 - x159) + sqr(x257 - x259))
      + 1/sqrt(sqr(x57 - x60) + sqr(x157 - x160) + sqr(x257 - x260)) + 1/sqrt(
     sqr(x57 - x61) + sqr(x157 - x161) + sqr(x257 - x261)) + 1/sqrt(sqr(x57 - 
     x62) + sqr(x157 - x162) + sqr(x257 - x262)) + 1/sqrt(sqr(x57 - x63) + sqr(
     x157 - x163) + sqr(x257 - x263)) + 1/sqrt(sqr(x57 - x64) + sqr(x157 - x164
     ) + sqr(x257 - x264)) + 1/sqrt(sqr(x57 - x65) + sqr(x157 - x165) + sqr(
     x257 - x265)) + 1/sqrt(sqr(x57 - x66) + sqr(x157 - x166) + sqr(x257 - x266
     )) + 1/sqrt(sqr(x57 - x67) + sqr(x157 - x167) + sqr(x257 - x267)) + 1/
     sqrt(sqr(x57 - x68) + sqr(x157 - x168) + sqr(x257 - x268)) + 1/sqrt(sqr(
     x57 - x69) + sqr(x157 - x169) + sqr(x257 - x269)) + 1/sqrt(sqr(x57 - x70)
      + sqr(x157 - x170) + sqr(x257 - x270)) + 1/sqrt(sqr(x57 - x71) + sqr(x157
      - x171) + sqr(x257 - x271)) + 1/sqrt(sqr(x57 - x72) + sqr(x157 - x172) + 
     sqr(x257 - x272)) + 1/sqrt(sqr(x57 - x73) + sqr(x157 - x173) + sqr(x257 - 
     x273)) + 1/sqrt(sqr(x57 - x74) + sqr(x157 - x174) + sqr(x257 - x274)) + 1/
     sqrt(sqr(x57 - x75) + sqr(x157 - x175) + sqr(x257 - x275)) + 1/sqrt(sqr(
     x57 - x76) + sqr(x157 - x176) + sqr(x257 - x276)) + 1/sqrt(sqr(x57 - x77)
      + sqr(x157 - x177) + sqr(x257 - x277)) + 1/sqrt(sqr(x57 - x78) + sqr(x157
      - x178) + sqr(x257 - x278)) + 1/sqrt(sqr(x57 - x79) + sqr(x157 - x179) + 
     sqr(x257 - x279)) + 1/sqrt(sqr(x57 - x80) + sqr(x157 - x180) + sqr(x257 - 
     x280)) + 1/sqrt(sqr(x57 - x81) + sqr(x157 - x181) + sqr(x257 - x281)) + 1/
     sqrt(sqr(x57 - x82) + sqr(x157 - x182) + sqr(x257 - x282)) + 1/sqrt(sqr(
     x57 - x83) + sqr(x157 - x183) + sqr(x257 - x283)) + 1/sqrt(sqr(x57 - x84)
      + sqr(x157 - x184) + sqr(x257 - x284)) + 1/sqrt(sqr(x57 - x85) + sqr(x157
      - x185) + sqr(x257 - x285)) + 1/sqrt(sqr(x57 - x86) + sqr(x157 - x186) + 
     sqr(x257 - x286)) + 1/sqrt(sqr(x57 - x87) + sqr(x157 - x187) + sqr(x257 - 
     x287)) + 1/sqrt(sqr(x57 - x88) + sqr(x157 - x188) + sqr(x257 - x288)) + 1/
     sqrt(sqr(x57 - x89) + sqr(x157 - x189) + sqr(x257 - x289)) + 1/sqrt(sqr(
     x57 - x90) + sqr(x157 - x190) + sqr(x257 - x290)) + 1/sqrt(sqr(x57 - x91)
      + sqr(x157 - x191) + sqr(x257 - x291)) + 1/sqrt(sqr(x57 - x92) + sqr(x157
      - x192) + sqr(x257 - x292)) + 1/sqrt(sqr(x57 - x93) + sqr(x157 - x193) + 
     sqr(x257 - x293)) + 1/sqrt(sqr(x57 - x94) + sqr(x157 - x194) + sqr(x257 - 
     x294)) + 1/sqrt(sqr(x57 - x95) + sqr(x157 - x195) + sqr(x257 - x295)) + 1/
     sqrt(sqr(x57 - x96) + sqr(x157 - x196) + sqr(x257 - x296)) + 1/sqrt(sqr(
     x57 - x97) + sqr(x157 - x197) + sqr(x257 - x297)) + 1/sqrt(sqr(x57 - x98)
      + sqr(x157 - x198) + sqr(x257 - x298)) + 1/sqrt(sqr(x57 - x99) + sqr(x157
      - x199) + sqr(x257 - x299)) + 1/sqrt(sqr(x57 - x100) + sqr(x157 - x200)
      + sqr(x257 - x300)) + 1/sqrt(sqr(x58 - x59) + sqr(x158 - x159) + sqr(x258
      - x259)) + 1/sqrt(sqr(x58 - x60) + sqr(x158 - x160) + sqr(x258 - x260))
      + 1/sqrt(sqr(x58 - x61) + sqr(x158 - x161) + sqr(x258 - x261)) + 1/sqrt(
     sqr(x58 - x62) + sqr(x158 - x162) + sqr(x258 - x262)) + 1/sqrt(sqr(x58 - 
     x63) + sqr(x158 - x163) + sqr(x258 - x263)) + 1/sqrt(sqr(x58 - x64) + sqr(
     x158 - x164) + sqr(x258 - x264)) + 1/sqrt(sqr(x58 - x65) + sqr(x158 - x165
     ) + sqr(x258 - x265)) + 1/sqrt(sqr(x58 - x66) + sqr(x158 - x166) + sqr(
     x258 - x266)) + 1/sqrt(sqr(x58 - x67) + sqr(x158 - x167) + sqr(x258 - x267
     )) + 1/sqrt(sqr(x58 - x68) + sqr(x158 - x168) + sqr(x258 - x268)) + 1/
     sqrt(sqr(x58 - x69) + sqr(x158 - x169) + sqr(x258 - x269)) + 1/sqrt(sqr(
     x58 - x70) + sqr(x158 - x170) + sqr(x258 - x270)) + 1/sqrt(sqr(x58 - x71)
      + sqr(x158 - x171) + sqr(x258 - x271)) + 1/sqrt(sqr(x58 - x72) + sqr(x158
      - x172) + sqr(x258 - x272)) + 1/sqrt(sqr(x58 - x73) + sqr(x158 - x173) + 
     sqr(x258 - x273)) + 1/sqrt(sqr(x58 - x74) + sqr(x158 - x174) + sqr(x258 - 
     x274)) + 1/sqrt(sqr(x58 - x75) + sqr(x158 - x175) + sqr(x258 - x275)) + 1/
     sqrt(sqr(x58 - x76) + sqr(x158 - x176) + sqr(x258 - x276)) + 1/sqrt(sqr(
     x58 - x77) + sqr(x158 - x177) + sqr(x258 - x277)) + 1/sqrt(sqr(x58 - x78)
      + sqr(x158 - x178) + sqr(x258 - x278)) + 1/sqrt(sqr(x58 - x79) + sqr(x158
      - x179) + sqr(x258 - x279)) + 1/sqrt(sqr(x58 - x80) + sqr(x158 - x180) + 
     sqr(x258 - x280)) + 1/sqrt(sqr(x58 - x81) + sqr(x158 - x181) + sqr(x258 - 
     x281)) + 1/sqrt(sqr(x58 - x82) + sqr(x158 - x182) + sqr(x258 - x282)) + 1/
     sqrt(sqr(x58 - x83) + sqr(x158 - x183) + sqr(x258 - x283)) + 1/sqrt(sqr(
     x58 - x84) + sqr(x158 - x184) + sqr(x258 - x284)) + 1/sqrt(sqr(x58 - x85)
      + sqr(x158 - x185) + sqr(x258 - x285)) + 1/sqrt(sqr(x58 - x86) + sqr(x158
      - x186) + sqr(x258 - x286)) + 1/sqrt(sqr(x58 - x87) + sqr(x158 - x187) + 
     sqr(x258 - x287)) + 1/sqrt(sqr(x58 - x88) + sqr(x158 - x188) + sqr(x258 - 
     x288)) + 1/sqrt(sqr(x58 - x89) + sqr(x158 - x189) + sqr(x258 - x289)) + 1/
     sqrt(sqr(x58 - x90) + sqr(x158 - x190) + sqr(x258 - x290)) + 1/sqrt(sqr(
     x58 - x91) + sqr(x158 - x191) + sqr(x258 - x291)) + 1/sqrt(sqr(x58 - x92)
      + sqr(x158 - x192) + sqr(x258 - x292)) + 1/sqrt(sqr(x58 - x93) + sqr(x158
      - x193) + sqr(x258 - x293)) + 1/sqrt(sqr(x58 - x94) + sqr(x158 - x194) + 
     sqr(x258 - x294)) + 1/sqrt(sqr(x58 - x95) + sqr(x158 - x195) + sqr(x258 - 
     x295)) + 1/sqrt(sqr(x58 - x96) + sqr(x158 - x196) + sqr(x258 - x296)) + 1/
     sqrt(sqr(x58 - x97) + sqr(x158 - x197) + sqr(x258 - x297)) + 1/sqrt(sqr(
     x58 - x98) + sqr(x158 - x198) + sqr(x258 - x298)) + 1/sqrt(sqr(x58 - x99)
      + sqr(x158 - x199) + sqr(x258 - x299)) + 1/sqrt(sqr(x58 - x100) + sqr(
     x158 - x200) + sqr(x258 - x300)) + 1/sqrt(sqr(x59 - x60) + sqr(x159 - x160
     ) + sqr(x259 - x260)) + 1/sqrt(sqr(x59 - x61) + sqr(x159 - x161) + sqr(
     x259 - x261)) + 1/sqrt(sqr(x59 - x62) + sqr(x159 - x162) + sqr(x259 - x262
     )) + 1/sqrt(sqr(x59 - x63) + sqr(x159 - x163) + sqr(x259 - x263)) + 1/
     sqrt(sqr(x59 - x64) + sqr(x159 - x164) + sqr(x259 - x264)) + 1/sqrt(sqr(
     x59 - x65) + sqr(x159 - x165) + sqr(x259 - x265)) + 1/sqrt(sqr(x59 - x66)
      + sqr(x159 - x166) + sqr(x259 - x266)) + 1/sqrt(sqr(x59 - x67) + sqr(x159
      - x167) + sqr(x259 - x267)) + 1/sqrt(sqr(x59 - x68) + sqr(x159 - x168) + 
     sqr(x259 - x268)) + 1/sqrt(sqr(x59 - x69) + sqr(x159 - x169) + sqr(x259 - 
     x269)) + 1/sqrt(sqr(x59 - x70) + sqr(x159 - x170) + sqr(x259 - x270)) + 1/
     sqrt(sqr(x59 - x71) + sqr(x159 - x171) + sqr(x259 - x271)) + 1/sqrt(sqr(
     x59 - x72) + sqr(x159 - x172) + sqr(x259 - x272)) + 1/sqrt(sqr(x59 - x73)
      + sqr(x159 - x173) + sqr(x259 - x273)) + 1/sqrt(sqr(x59 - x74) + sqr(x159
      - x174) + sqr(x259 - x274)) + 1/sqrt(sqr(x59 - x75) + sqr(x159 - x175) + 
     sqr(x259 - x275)) + 1/sqrt(sqr(x59 - x76) + sqr(x159 - x176) + sqr(x259 - 
     x276)) + 1/sqrt(sqr(x59 - x77) + sqr(x159 - x177) + sqr(x259 - x277)) + 1/
     sqrt(sqr(x59 - x78) + sqr(x159 - x178) + sqr(x259 - x278)) + 1/sqrt(sqr(
     x59 - x79) + sqr(x159 - x179) + sqr(x259 - x279)) + 1/sqrt(sqr(x59 - x80)
      + sqr(x159 - x180) + sqr(x259 - x280)) + 1/sqrt(sqr(x59 - x81) + sqr(x159
      - x181) + sqr(x259 - x281)) + 1/sqrt(sqr(x59 - x82) + sqr(x159 - x182) + 
     sqr(x259 - x282)) + 1/sqrt(sqr(x59 - x83) + sqr(x159 - x183) + sqr(x259 - 
     x283)) + 1/sqrt(sqr(x59 - x84) + sqr(x159 - x184) + sqr(x259 - x284)) + 1/
     sqrt(sqr(x59 - x85) + sqr(x159 - x185) + sqr(x259 - x285)) + 1/sqrt(sqr(
     x59 - x86) + sqr(x159 - x186) + sqr(x259 - x286)) + 1/sqrt(sqr(x59 - x87)
      + sqr(x159 - x187) + sqr(x259 - x287)) + 1/sqrt(sqr(x59 - x88) + sqr(x159
      - x188) + sqr(x259 - x288)) + 1/sqrt(sqr(x59 - x89) + sqr(x159 - x189) + 
     sqr(x259 - x289)) + 1/sqrt(sqr(x59 - x90) + sqr(x159 - x190) + sqr(x259 - 
     x290)) + 1/sqrt(sqr(x59 - x91) + sqr(x159 - x191) + sqr(x259 - x291)) + 1/
     sqrt(sqr(x59 - x92) + sqr(x159 - x192) + sqr(x259 - x292)) + 1/sqrt(sqr(
     x59 - x93) + sqr(x159 - x193) + sqr(x259 - x293)) + 1/sqrt(sqr(x59 - x94)
      + sqr(x159 - x194) + sqr(x259 - x294)) + 1/sqrt(sqr(x59 - x95) + sqr(x159
      - x195) + sqr(x259 - x295)) + 1/sqrt(sqr(x59 - x96) + sqr(x159 - x196) + 
     sqr(x259 - x296)) + 1/sqrt(sqr(x59 - x97) + sqr(x159 - x197) + sqr(x259 - 
     x297)) + 1/sqrt(sqr(x59 - x98) + sqr(x159 - x198) + sqr(x259 - x298)) + 1/
     sqrt(sqr(x59 - x99) + sqr(x159 - x199) + sqr(x259 - x299)) + 1/sqrt(sqr(
     x59 - x100) + sqr(x159 - x200) + sqr(x259 - x300)) + 1/sqrt(sqr(x60 - x61)
      + sqr(x160 - x161) + sqr(x260 - x261)) + 1/sqrt(sqr(x60 - x62) + sqr(x160
      - x162) + sqr(x260 - x262)) + 1/sqrt(sqr(x60 - x63) + sqr(x160 - x163) + 
     sqr(x260 - x263)) + 1/sqrt(sqr(x60 - x64) + sqr(x160 - x164) + sqr(x260 - 
     x264)) + 1/sqrt(sqr(x60 - x65) + sqr(x160 - x165) + sqr(x260 - x265)) + 1/
     sqrt(sqr(x60 - x66) + sqr(x160 - x166) + sqr(x260 - x266)) + 1/sqrt(sqr(
     x60 - x67) + sqr(x160 - x167) + sqr(x260 - x267)) + 1/sqrt(sqr(x60 - x68)
      + sqr(x160 - x168) + sqr(x260 - x268)) + 1/sqrt(sqr(x60 - x69) + sqr(x160
      - x169) + sqr(x260 - x269)) + 1/sqrt(sqr(x60 - x70) + sqr(x160 - x170) + 
     sqr(x260 - x270)) + 1/sqrt(sqr(x60 - x71) + sqr(x160 - x171) + sqr(x260 - 
     x271)) + 1/sqrt(sqr(x60 - x72) + sqr(x160 - x172) + sqr(x260 - x272)) + 1/
     sqrt(sqr(x60 - x73) + sqr(x160 - x173) + sqr(x260 - x273)) + 1/sqrt(sqr(
     x60 - x74) + sqr(x160 - x174) + sqr(x260 - x274)) + 1/sqrt(sqr(x60 - x75)
      + sqr(x160 - x175) + sqr(x260 - x275)) + 1/sqrt(sqr(x60 - x76) + sqr(x160
      - x176) + sqr(x260 - x276)) + 1/sqrt(sqr(x60 - x77) + sqr(x160 - x177) + 
     sqr(x260 - x277)) + 1/sqrt(sqr(x60 - x78) + sqr(x160 - x178) + sqr(x260 - 
     x278)) + 1/sqrt(sqr(x60 - x79) + sqr(x160 - x179) + sqr(x260 - x279)) + 1/
     sqrt(sqr(x60 - x80) + sqr(x160 - x180) + sqr(x260 - x280)) + 1/sqrt(sqr(
     x60 - x81) + sqr(x160 - x181) + sqr(x260 - x281)) + 1/sqrt(sqr(x60 - x82)
      + sqr(x160 - x182) + sqr(x260 - x282)) + 1/sqrt(sqr(x60 - x83) + sqr(x160
      - x183) + sqr(x260 - x283)) + 1/sqrt(sqr(x60 - x84) + sqr(x160 - x184) + 
     sqr(x260 - x284)) + 1/sqrt(sqr(x60 - x85) + sqr(x160 - x185) + sqr(x260 - 
     x285)) + 1/sqrt(sqr(x60 - x86) + sqr(x160 - x186) + sqr(x260 - x286)) + 1/
     sqrt(sqr(x60 - x87) + sqr(x160 - x187) + sqr(x260 - x287)) + 1/sqrt(sqr(
     x60 - x88) + sqr(x160 - x188) + sqr(x260 - x288)) + 1/sqrt(sqr(x60 - x89)
      + sqr(x160 - x189) + sqr(x260 - x289)) + 1/sqrt(sqr(x60 - x90) + sqr(x160
      - x190) + sqr(x260 - x290)) + 1/sqrt(sqr(x60 - x91) + sqr(x160 - x191) + 
     sqr(x260 - x291)) + 1/sqrt(sqr(x60 - x92) + sqr(x160 - x192) + sqr(x260 - 
     x292)) + 1/sqrt(sqr(x60 - x93) + sqr(x160 - x193) + sqr(x260 - x293)) + 1/
     sqrt(sqr(x60 - x94) + sqr(x160 - x194) + sqr(x260 - x294)) + 1/sqrt(sqr(
     x60 - x95) + sqr(x160 - x195) + sqr(x260 - x295)) + 1/sqrt(sqr(x60 - x96)
      + sqr(x160 - x196) + sqr(x260 - x296)) + 1/sqrt(sqr(x60 - x97) + sqr(x160
      - x197) + sqr(x260 - x297)) + 1/sqrt(sqr(x60 - x98) + sqr(x160 - x198) + 
     sqr(x260 - x298)) + 1/sqrt(sqr(x60 - x99) + sqr(x160 - x199) + sqr(x260 - 
     x299)) + 1/sqrt(sqr(x60 - x100) + sqr(x160 - x200) + sqr(x260 - x300)) + 1
     /sqrt(sqr(x61 - x62) + sqr(x161 - x162) + sqr(x261 - x262)) + 1/sqrt(sqr(
     x61 - x63) + sqr(x161 - x163) + sqr(x261 - x263)) + 1/sqrt(sqr(x61 - x64)
      + sqr(x161 - x164) + sqr(x261 - x264)) + 1/sqrt(sqr(x61 - x65) + sqr(x161
      - x165) + sqr(x261 - x265)) + 1/sqrt(sqr(x61 - x66) + sqr(x161 - x166) + 
     sqr(x261 - x266)) + 1/sqrt(sqr(x61 - x67) + sqr(x161 - x167) + sqr(x261 - 
     x267)) + 1/sqrt(sqr(x61 - x68) + sqr(x161 - x168) + sqr(x261 - x268)) + 1/
     sqrt(sqr(x61 - x69) + sqr(x161 - x169) + sqr(x261 - x269)) + 1/sqrt(sqr(
     x61 - x70) + sqr(x161 - x170) + sqr(x261 - x270)) + 1/sqrt(sqr(x61 - x71)
      + sqr(x161 - x171) + sqr(x261 - x271)) + 1/sqrt(sqr(x61 - x72) + sqr(x161
      - x172) + sqr(x261 - x272)) + 1/sqrt(sqr(x61 - x73) + sqr(x161 - x173) + 
     sqr(x261 - x273)) + 1/sqrt(sqr(x61 - x74) + sqr(x161 - x174) + sqr(x261 - 
     x274)) + 1/sqrt(sqr(x61 - x75) + sqr(x161 - x175) + sqr(x261 - x275)) + 1/
     sqrt(sqr(x61 - x76) + sqr(x161 - x176) + sqr(x261 - x276)) + 1/sqrt(sqr(
     x61 - x77) + sqr(x161 - x177) + sqr(x261 - x277)) + 1/sqrt(sqr(x61 - x78)
      + sqr(x161 - x178) + sqr(x261 - x278)) + 1/sqrt(sqr(x61 - x79) + sqr(x161
      - x179) + sqr(x261 - x279)) + 1/sqrt(sqr(x61 - x80) + sqr(x161 - x180) + 
     sqr(x261 - x280)) + 1/sqrt(sqr(x61 - x81) + sqr(x161 - x181) + sqr(x261 - 
     x281)) + 1/sqrt(sqr(x61 - x82) + sqr(x161 - x182) + sqr(x261 - x282)) + 1/
     sqrt(sqr(x61 - x83) + sqr(x161 - x183) + sqr(x261 - x283)) + 1/sqrt(sqr(
     x61 - x84) + sqr(x161 - x184) + sqr(x261 - x284)) + 1/sqrt(sqr(x61 - x85)
      + sqr(x161 - x185) + sqr(x261 - x285)) + 1/sqrt(sqr(x61 - x86) + sqr(x161
      - x186) + sqr(x261 - x286)) + 1/sqrt(sqr(x61 - x87) + sqr(x161 - x187) + 
     sqr(x261 - x287)) + 1/sqrt(sqr(x61 - x88) + sqr(x161 - x188) + sqr(x261 - 
     x288)) + 1/sqrt(sqr(x61 - x89) + sqr(x161 - x189) + sqr(x261 - x289)) + 1/
     sqrt(sqr(x61 - x90) + sqr(x161 - x190) + sqr(x261 - x290)) + 1/sqrt(sqr(
     x61 - x91) + sqr(x161 - x191) + sqr(x261 - x291)) + 1/sqrt(sqr(x61 - x92)
      + sqr(x161 - x192) + sqr(x261 - x292)) + 1/sqrt(sqr(x61 - x93) + sqr(x161
      - x193) + sqr(x261 - x293)) + 1/sqrt(sqr(x61 - x94) + sqr(x161 - x194) + 
     sqr(x261 - x294)) + 1/sqrt(sqr(x61 - x95) + sqr(x161 - x195) + sqr(x261 - 
     x295)) + 1/sqrt(sqr(x61 - x96) + sqr(x161 - x196) + sqr(x261 - x296)) + 1/
     sqrt(sqr(x61 - x97) + sqr(x161 - x197) + sqr(x261 - x297)) + 1/sqrt(sqr(
     x61 - x98) + sqr(x161 - x198) + sqr(x261 - x298)) + 1/sqrt(sqr(x61 - x99)
      + sqr(x161 - x199) + sqr(x261 - x299)) + 1/sqrt(sqr(x61 - x100) + sqr(
     x161 - x200) + sqr(x261 - x300)) + 1/sqrt(sqr(x62 - x63) + sqr(x162 - x163
     ) + sqr(x262 - x263)) + 1/sqrt(sqr(x62 - x64) + sqr(x162 - x164) + sqr(
     x262 - x264)) + 1/sqrt(sqr(x62 - x65) + sqr(x162 - x165) + sqr(x262 - x265
     )) + 1/sqrt(sqr(x62 - x66) + sqr(x162 - x166) + sqr(x262 - x266)) + 1/
     sqrt(sqr(x62 - x67) + sqr(x162 - x167) + sqr(x262 - x267)) + 1/sqrt(sqr(
     x62 - x68) + sqr(x162 - x168) + sqr(x262 - x268)) + 1/sqrt(sqr(x62 - x69)
      + sqr(x162 - x169) + sqr(x262 - x269)) + 1/sqrt(sqr(x62 - x70) + sqr(x162
      - x170) + sqr(x262 - x270)) + 1/sqrt(sqr(x62 - x71) + sqr(x162 - x171) + 
     sqr(x262 - x271)) + 1/sqrt(sqr(x62 - x72) + sqr(x162 - x172) + sqr(x262 - 
     x272)) + 1/sqrt(sqr(x62 - x73) + sqr(x162 - x173) + sqr(x262 - x273)) + 1/
     sqrt(sqr(x62 - x74) + sqr(x162 - x174) + sqr(x262 - x274)) + 1/sqrt(sqr(
     x62 - x75) + sqr(x162 - x175) + sqr(x262 - x275)) + 1/sqrt(sqr(x62 - x76)
      + sqr(x162 - x176) + sqr(x262 - x276)) + 1/sqrt(sqr(x62 - x77) + sqr(x162
      - x177) + sqr(x262 - x277)) + 1/sqrt(sqr(x62 - x78) + sqr(x162 - x178) + 
     sqr(x262 - x278)) + 1/sqrt(sqr(x62 - x79) + sqr(x162 - x179) + sqr(x262 - 
     x279)) + 1/sqrt(sqr(x62 - x80) + sqr(x162 - x180) + sqr(x262 - x280)) + 1/
     sqrt(sqr(x62 - x81) + sqr(x162 - x181) + sqr(x262 - x281)) + 1/sqrt(sqr(
     x62 - x82) + sqr(x162 - x182) + sqr(x262 - x282)) + 1/sqrt(sqr(x62 - x83)
      + sqr(x162 - x183) + sqr(x262 - x283)) + 1/sqrt(sqr(x62 - x84) + sqr(x162
      - x184) + sqr(x262 - x284)) + 1/sqrt(sqr(x62 - x85) + sqr(x162 - x185) + 
     sqr(x262 - x285)) + 1/sqrt(sqr(x62 - x86) + sqr(x162 - x186) + sqr(x262 - 
     x286)) + 1/sqrt(sqr(x62 - x87) + sqr(x162 - x187) + sqr(x262 - x287)) + 1/
     sqrt(sqr(x62 - x88) + sqr(x162 - x188) + sqr(x262 - x288)) + 1/sqrt(sqr(
     x62 - x89) + sqr(x162 - x189) + sqr(x262 - x289)) + 1/sqrt(sqr(x62 - x90)
      + sqr(x162 - x190) + sqr(x262 - x290)) + 1/sqrt(sqr(x62 - x91) + sqr(x162
      - x191) + sqr(x262 - x291)) + 1/sqrt(sqr(x62 - x92) + sqr(x162 - x192) + 
     sqr(x262 - x292)) + 1/sqrt(sqr(x62 - x93) + sqr(x162 - x193) + sqr(x262 - 
     x293)) + 1/sqrt(sqr(x62 - x94) + sqr(x162 - x194) + sqr(x262 - x294)) + 1/
     sqrt(sqr(x62 - x95) + sqr(x162 - x195) + sqr(x262 - x295)) + 1/sqrt(sqr(
     x62 - x96) + sqr(x162 - x196) + sqr(x262 - x296)) + 1/sqrt(sqr(x62 - x97)
      + sqr(x162 - x197) + sqr(x262 - x297)) + 1/sqrt(sqr(x62 - x98) + sqr(x162
      - x198) + sqr(x262 - x298)) + 1/sqrt(sqr(x62 - x99) + sqr(x162 - x199) + 
     sqr(x262 - x299)) + 1/sqrt(sqr(x62 - x100) + sqr(x162 - x200) + sqr(x262
      - x300)) + 1/sqrt(sqr(x63 - x64) + sqr(x163 - x164) + sqr(x263 - x264))
      + 1/sqrt(sqr(x63 - x65) + sqr(x163 - x165) + sqr(x263 - x265)) + 1/sqrt(
     sqr(x63 - x66) + sqr(x163 - x166) + sqr(x263 - x266)) + 1/sqrt(sqr(x63 - 
     x67) + sqr(x163 - x167) + sqr(x263 - x267)) + 1/sqrt(sqr(x63 - x68) + sqr(
     x163 - x168) + sqr(x263 - x268)) + 1/sqrt(sqr(x63 - x69) + sqr(x163 - x169
     ) + sqr(x263 - x269)) + 1/sqrt(sqr(x63 - x70) + sqr(x163 - x170) + sqr(
     x263 - x270)) + 1/sqrt(sqr(x63 - x71) + sqr(x163 - x171) + sqr(x263 - x271
     )) + 1/sqrt(sqr(x63 - x72) + sqr(x163 - x172) + sqr(x263 - x272)) + 1/
     sqrt(sqr(x63 - x73) + sqr(x163 - x173) + sqr(x263 - x273)) + 1/sqrt(sqr(
     x63 - x74) + sqr(x163 - x174) + sqr(x263 - x274)) + 1/sqrt(sqr(x63 - x75)
      + sqr(x163 - x175) + sqr(x263 - x275)) + 1/sqrt(sqr(x63 - x76) + sqr(x163
      - x176) + sqr(x263 - x276)) + 1/sqrt(sqr(x63 - x77) + sqr(x163 - x177) + 
     sqr(x263 - x277)) + 1/sqrt(sqr(x63 - x78) + sqr(x163 - x178) + sqr(x263 - 
     x278)) + 1/sqrt(sqr(x63 - x79) + sqr(x163 - x179) + sqr(x263 - x279)) + 1/
     sqrt(sqr(x63 - x80) + sqr(x163 - x180) + sqr(x263 - x280)) + 1/sqrt(sqr(
     x63 - x81) + sqr(x163 - x181) + sqr(x263 - x281)) + 1/sqrt(sqr(x63 - x82)
      + sqr(x163 - x182) + sqr(x263 - x282)) + 1/sqrt(sqr(x63 - x83) + sqr(x163
      - x183) + sqr(x263 - x283)) + 1/sqrt(sqr(x63 - x84) + sqr(x163 - x184) + 
     sqr(x263 - x284)) + 1/sqrt(sqr(x63 - x85) + sqr(x163 - x185) + sqr(x263 - 
     x285)) + 1/sqrt(sqr(x63 - x86) + sqr(x163 - x186) + sqr(x263 - x286)) + 1/
     sqrt(sqr(x63 - x87) + sqr(x163 - x187) + sqr(x263 - x287)) + 1/sqrt(sqr(
     x63 - x88) + sqr(x163 - x188) + sqr(x263 - x288)) + 1/sqrt(sqr(x63 - x89)
      + sqr(x163 - x189) + sqr(x263 - x289)) + 1/sqrt(sqr(x63 - x90) + sqr(x163
      - x190) + sqr(x263 - x290)) + 1/sqrt(sqr(x63 - x91) + sqr(x163 - x191) + 
     sqr(x263 - x291)) + 1/sqrt(sqr(x63 - x92) + sqr(x163 - x192) + sqr(x263 - 
     x292)) + 1/sqrt(sqr(x63 - x93) + sqr(x163 - x193) + sqr(x263 - x293)) + 1/
     sqrt(sqr(x63 - x94) + sqr(x163 - x194) + sqr(x263 - x294)) + 1/sqrt(sqr(
     x63 - x95) + sqr(x163 - x195) + sqr(x263 - x295)) + 1/sqrt(sqr(x63 - x96)
      + sqr(x163 - x196) + sqr(x263 - x296)) + 1/sqrt(sqr(x63 - x97) + sqr(x163
      - x197) + sqr(x263 - x297)) + 1/sqrt(sqr(x63 - x98) + sqr(x163 - x198) + 
     sqr(x263 - x298)) + 1/sqrt(sqr(x63 - x99) + sqr(x163 - x199) + sqr(x263 - 
     x299)) + 1/sqrt(sqr(x63 - x100) + sqr(x163 - x200) + sqr(x263 - x300)) + 1
     /sqrt(sqr(x64 - x65) + sqr(x164 - x165) + sqr(x264 - x265)) + 1/sqrt(sqr(
     x64 - x66) + sqr(x164 - x166) + sqr(x264 - x266)) + 1/sqrt(sqr(x64 - x67)
      + sqr(x164 - x167) + sqr(x264 - x267)) + 1/sqrt(sqr(x64 - x68) + sqr(x164
      - x168) + sqr(x264 - x268)) + 1/sqrt(sqr(x64 - x69) + sqr(x164 - x169) + 
     sqr(x264 - x269)) + 1/sqrt(sqr(x64 - x70) + sqr(x164 - x170) + sqr(x264 - 
     x270)) + 1/sqrt(sqr(x64 - x71) + sqr(x164 - x171) + sqr(x264 - x271)) + 1/
     sqrt(sqr(x64 - x72) + sqr(x164 - x172) + sqr(x264 - x272)) + 1/sqrt(sqr(
     x64 - x73) + sqr(x164 - x173) + sqr(x264 - x273)) + 1/sqrt(sqr(x64 - x74)
      + sqr(x164 - x174) + sqr(x264 - x274)) + 1/sqrt(sqr(x64 - x75) + sqr(x164
      - x175) + sqr(x264 - x275)) + 1/sqrt(sqr(x64 - x76) + sqr(x164 - x176) + 
     sqr(x264 - x276)) + 1/sqrt(sqr(x64 - x77) + sqr(x164 - x177) + sqr(x264 - 
     x277)) + 1/sqrt(sqr(x64 - x78) + sqr(x164 - x178) + sqr(x264 - x278)) + 1/
     sqrt(sqr(x64 - x79) + sqr(x164 - x179) + sqr(x264 - x279)) + 1/sqrt(sqr(
     x64 - x80) + sqr(x164 - x180) + sqr(x264 - x280)) + 1/sqrt(sqr(x64 - x81)
      + sqr(x164 - x181) + sqr(x264 - x281)) + 1/sqrt(sqr(x64 - x82) + sqr(x164
      - x182) + sqr(x264 - x282)) + 1/sqrt(sqr(x64 - x83) + sqr(x164 - x183) + 
     sqr(x264 - x283)) + 1/sqrt(sqr(x64 - x84) + sqr(x164 - x184) + sqr(x264 - 
     x284)) + 1/sqrt(sqr(x64 - x85) + sqr(x164 - x185) + sqr(x264 - x285)) + 1/
     sqrt(sqr(x64 - x86) + sqr(x164 - x186) + sqr(x264 - x286)) + 1/sqrt(sqr(
     x64 - x87) + sqr(x164 - x187) + sqr(x264 - x287)) + 1/sqrt(sqr(x64 - x88)
      + sqr(x164 - x188) + sqr(x264 - x288)) + 1/sqrt(sqr(x64 - x89) + sqr(x164
      - x189) + sqr(x264 - x289)) + 1/sqrt(sqr(x64 - x90) + sqr(x164 - x190) + 
     sqr(x264 - x290)) + 1/sqrt(sqr(x64 - x91) + sqr(x164 - x191) + sqr(x264 - 
     x291)) + 1/sqrt(sqr(x64 - x92) + sqr(x164 - x192) + sqr(x264 - x292)) + 1/
     sqrt(sqr(x64 - x93) + sqr(x164 - x193) + sqr(x264 - x293)) + 1/sqrt(sqr(
     x64 - x94) + sqr(x164 - x194) + sqr(x264 - x294)) + 1/sqrt(sqr(x64 - x95)
      + sqr(x164 - x195) + sqr(x264 - x295)) + 1/sqrt(sqr(x64 - x96) + sqr(x164
      - x196) + sqr(x264 - x296)) + 1/sqrt(sqr(x64 - x97) + sqr(x164 - x197) + 
     sqr(x264 - x297)) + 1/sqrt(sqr(x64 - x98) + sqr(x164 - x198) + sqr(x264 - 
     x298)) + 1/sqrt(sqr(x64 - x99) + sqr(x164 - x199) + sqr(x264 - x299)) + 1/
     sqrt(sqr(x64 - x100) + sqr(x164 - x200) + sqr(x264 - x300)) + 1/sqrt(sqr(
     x65 - x66) + sqr(x165 - x166) + sqr(x265 - x266)) + 1/sqrt(sqr(x65 - x67)
      + sqr(x165 - x167) + sqr(x265 - x267)) + 1/sqrt(sqr(x65 - x68) + sqr(x165
      - x168) + sqr(x265 - x268)) + 1/sqrt(sqr(x65 - x69) + sqr(x165 - x169) + 
     sqr(x265 - x269)) + 1/sqrt(sqr(x65 - x70) + sqr(x165 - x170) + sqr(x265 - 
     x270)) + 1/sqrt(sqr(x65 - x71) + sqr(x165 - x171) + sqr(x265 - x271)) + 1/
     sqrt(sqr(x65 - x72) + sqr(x165 - x172) + sqr(x265 - x272)) + 1/sqrt(sqr(
     x65 - x73) + sqr(x165 - x173) + sqr(x265 - x273)) + 1/sqrt(sqr(x65 - x74)
      + sqr(x165 - x174) + sqr(x265 - x274)) + 1/sqrt(sqr(x65 - x75) + sqr(x165
      - x175) + sqr(x265 - x275)) + 1/sqrt(sqr(x65 - x76) + sqr(x165 - x176) + 
     sqr(x265 - x276)) + 1/sqrt(sqr(x65 - x77) + sqr(x165 - x177) + sqr(x265 - 
     x277)) + 1/sqrt(sqr(x65 - x78) + sqr(x165 - x178) + sqr(x265 - x278)) + 1/
     sqrt(sqr(x65 - x79) + sqr(x165 - x179) + sqr(x265 - x279)) + 1/sqrt(sqr(
     x65 - x80) + sqr(x165 - x180) + sqr(x265 - x280)) + 1/sqrt(sqr(x65 - x81)
      + sqr(x165 - x181) + sqr(x265 - x281)) + 1/sqrt(sqr(x65 - x82) + sqr(x165
      - x182) + sqr(x265 - x282)) + 1/sqrt(sqr(x65 - x83) + sqr(x165 - x183) + 
     sqr(x265 - x283)) + 1/sqrt(sqr(x65 - x84) + sqr(x165 - x184) + sqr(x265 - 
     x284)) + 1/sqrt(sqr(x65 - x85) + sqr(x165 - x185) + sqr(x265 - x285)) + 1/
     sqrt(sqr(x65 - x86) + sqr(x165 - x186) + sqr(x265 - x286)) + 1/sqrt(sqr(
     x65 - x87) + sqr(x165 - x187) + sqr(x265 - x287)) + 1/sqrt(sqr(x65 - x88)
      + sqr(x165 - x188) + sqr(x265 - x288)) + 1/sqrt(sqr(x65 - x89) + sqr(x165
      - x189) + sqr(x265 - x289)) + 1/sqrt(sqr(x65 - x90) + sqr(x165 - x190) + 
     sqr(x265 - x290)) + 1/sqrt(sqr(x65 - x91) + sqr(x165 - x191) + sqr(x265 - 
     x291)) + 1/sqrt(sqr(x65 - x92) + sqr(x165 - x192) + sqr(x265 - x292)) + 1/
     sqrt(sqr(x65 - x93) + sqr(x165 - x193) + sqr(x265 - x293)) + 1/sqrt(sqr(
     x65 - x94) + sqr(x165 - x194) + sqr(x265 - x294)) + 1/sqrt(sqr(x65 - x95)
      + sqr(x165 - x195) + sqr(x265 - x295)) + 1/sqrt(sqr(x65 - x96) + sqr(x165
      - x196) + sqr(x265 - x296)) + 1/sqrt(sqr(x65 - x97) + sqr(x165 - x197) + 
     sqr(x265 - x297)) + 1/sqrt(sqr(x65 - x98) + sqr(x165 - x198) + sqr(x265 - 
     x298)) + 1/sqrt(sqr(x65 - x99) + sqr(x165 - x199) + sqr(x265 - x299)) + 1/
     sqrt(sqr(x65 - x100) + sqr(x165 - x200) + sqr(x265 - x300)) + 1/sqrt(sqr(
     x66 - x67) + sqr(x166 - x167) + sqr(x266 - x267)) + 1/sqrt(sqr(x66 - x68)
      + sqr(x166 - x168) + sqr(x266 - x268)) + 1/sqrt(sqr(x66 - x69) + sqr(x166
      - x169) + sqr(x266 - x269)) + 1/sqrt(sqr(x66 - x70) + sqr(x166 - x170) + 
     sqr(x266 - x270)) + 1/sqrt(sqr(x66 - x71) + sqr(x166 - x171) + sqr(x266 - 
     x271)) + 1/sqrt(sqr(x66 - x72) + sqr(x166 - x172) + sqr(x266 - x272)) + 1/
     sqrt(sqr(x66 - x73) + sqr(x166 - x173) + sqr(x266 - x273)) + 1/sqrt(sqr(
     x66 - x74) + sqr(x166 - x174) + sqr(x266 - x274)) + 1/sqrt(sqr(x66 - x75)
      + sqr(x166 - x175) + sqr(x266 - x275)) + 1/sqrt(sqr(x66 - x76) + sqr(x166
      - x176) + sqr(x266 - x276)) + 1/sqrt(sqr(x66 - x77) + sqr(x166 - x177) + 
     sqr(x266 - x277)) + 1/sqrt(sqr(x66 - x78) + sqr(x166 - x178) + sqr(x266 - 
     x278)) + 1/sqrt(sqr(x66 - x79) + sqr(x166 - x179) + sqr(x266 - x279)) + 1/
     sqrt(sqr(x66 - x80) + sqr(x166 - x180) + sqr(x266 - x280)) + 1/sqrt(sqr(
     x66 - x81) + sqr(x166 - x181) + sqr(x266 - x281)) + 1/sqrt(sqr(x66 - x82)
      + sqr(x166 - x182) + sqr(x266 - x282)) + 1/sqrt(sqr(x66 - x83) + sqr(x166
      - x183) + sqr(x266 - x283)) + 1/sqrt(sqr(x66 - x84) + sqr(x166 - x184) + 
     sqr(x266 - x284)) + 1/sqrt(sqr(x66 - x85) + sqr(x166 - x185) + sqr(x266 - 
     x285)) + 1/sqrt(sqr(x66 - x86) + sqr(x166 - x186) + sqr(x266 - x286)) + 1/
     sqrt(sqr(x66 - x87) + sqr(x166 - x187) + sqr(x266 - x287)) + 1/sqrt(sqr(
     x66 - x88) + sqr(x166 - x188) + sqr(x266 - x288)) + 1/sqrt(sqr(x66 - x89)
      + sqr(x166 - x189) + sqr(x266 - x289)) + 1/sqrt(sqr(x66 - x90) + sqr(x166
      - x190) + sqr(x266 - x290)) + 1/sqrt(sqr(x66 - x91) + sqr(x166 - x191) + 
     sqr(x266 - x291)) + 1/sqrt(sqr(x66 - x92) + sqr(x166 - x192) + sqr(x266 - 
     x292)) + 1/sqrt(sqr(x66 - x93) + sqr(x166 - x193) + sqr(x266 - x293)) + 1/
     sqrt(sqr(x66 - x94) + sqr(x166 - x194) + sqr(x266 - x294)) + 1/sqrt(sqr(
     x66 - x95) + sqr(x166 - x195) + sqr(x266 - x295)) + 1/sqrt(sqr(x66 - x96)
      + sqr(x166 - x196) + sqr(x266 - x296)) + 1/sqrt(sqr(x66 - x97) + sqr(x166
      - x197) + sqr(x266 - x297)) + 1/sqrt(sqr(x66 - x98) + sqr(x166 - x198) + 
     sqr(x266 - x298)) + 1/sqrt(sqr(x66 - x99) + sqr(x166 - x199) + sqr(x266 - 
     x299)) + 1/sqrt(sqr(x66 - x100) + sqr(x166 - x200) + sqr(x266 - x300)) + 1
     /sqrt(sqr(x67 - x68) + sqr(x167 - x168) + sqr(x267 - x268)) + 1/sqrt(sqr(
     x67 - x69) + sqr(x167 - x169) + sqr(x267 - x269)) + 1/sqrt(sqr(x67 - x70)
      + sqr(x167 - x170) + sqr(x267 - x270)) + 1/sqrt(sqr(x67 - x71) + sqr(x167
      - x171) + sqr(x267 - x271)) + 1/sqrt(sqr(x67 - x72) + sqr(x167 - x172) + 
     sqr(x267 - x272)) + 1/sqrt(sqr(x67 - x73) + sqr(x167 - x173) + sqr(x267 - 
     x273)) + 1/sqrt(sqr(x67 - x74) + sqr(x167 - x174) + sqr(x267 - x274)) + 1/
     sqrt(sqr(x67 - x75) + sqr(x167 - x175) + sqr(x267 - x275)) + 1/sqrt(sqr(
     x67 - x76) + sqr(x167 - x176) + sqr(x267 - x276)) + 1/sqrt(sqr(x67 - x77)
      + sqr(x167 - x177) + sqr(x267 - x277)) + 1/sqrt(sqr(x67 - x78) + sqr(x167
      - x178) + sqr(x267 - x278)) + 1/sqrt(sqr(x67 - x79) + sqr(x167 - x179) + 
     sqr(x267 - x279)) + 1/sqrt(sqr(x67 - x80) + sqr(x167 - x180) + sqr(x267 - 
     x280)) + 1/sqrt(sqr(x67 - x81) + sqr(x167 - x181) + sqr(x267 - x281)) + 1/
     sqrt(sqr(x67 - x82) + sqr(x167 - x182) + sqr(x267 - x282)) + 1/sqrt(sqr(
     x67 - x83) + sqr(x167 - x183) + sqr(x267 - x283)) + 1/sqrt(sqr(x67 - x84)
      + sqr(x167 - x184) + sqr(x267 - x284)) + 1/sqrt(sqr(x67 - x85) + sqr(x167
      - x185) + sqr(x267 - x285)) + 1/sqrt(sqr(x67 - x86) + sqr(x167 - x186) + 
     sqr(x267 - x286)) + 1/sqrt(sqr(x67 - x87) + sqr(x167 - x187) + sqr(x267 - 
     x287)) + 1/sqrt(sqr(x67 - x88) + sqr(x167 - x188) + sqr(x267 - x288)) + 1/
     sqrt(sqr(x67 - x89) + sqr(x167 - x189) + sqr(x267 - x289)) + 1/sqrt(sqr(
     x67 - x90) + sqr(x167 - x190) + sqr(x267 - x290)) + 1/sqrt(sqr(x67 - x91)
      + sqr(x167 - x191) + sqr(x267 - x291)) + 1/sqrt(sqr(x67 - x92) + sqr(x167
      - x192) + sqr(x267 - x292)) + 1/sqrt(sqr(x67 - x93) + sqr(x167 - x193) + 
     sqr(x267 - x293)) + 1/sqrt(sqr(x67 - x94) + sqr(x167 - x194) + sqr(x267 - 
     x294)) + 1/sqrt(sqr(x67 - x95) + sqr(x167 - x195) + sqr(x267 - x295)) + 1/
     sqrt(sqr(x67 - x96) + sqr(x167 - x196) + sqr(x267 - x296)) + 1/sqrt(sqr(
     x67 - x97) + sqr(x167 - x197) + sqr(x267 - x297)) + 1/sqrt(sqr(x67 - x98)
      + sqr(x167 - x198) + sqr(x267 - x298)) + 1/sqrt(sqr(x67 - x99) + sqr(x167
      - x199) + sqr(x267 - x299)) + 1/sqrt(sqr(x67 - x100) + sqr(x167 - x200)
      + sqr(x267 - x300)) + 1/sqrt(sqr(x68 - x69) + sqr(x168 - x169) + sqr(x268
      - x269)) + 1/sqrt(sqr(x68 - x70) + sqr(x168 - x170) + sqr(x268 - x270))
      + 1/sqrt(sqr(x68 - x71) + sqr(x168 - x171) + sqr(x268 - x271)) + 1/sqrt(
     sqr(x68 - x72) + sqr(x168 - x172) + sqr(x268 - x272)) + 1/sqrt(sqr(x68 - 
     x73) + sqr(x168 - x173) + sqr(x268 - x273)) + 1/sqrt(sqr(x68 - x74) + sqr(
     x168 - x174) + sqr(x268 - x274)) + 1/sqrt(sqr(x68 - x75) + sqr(x168 - x175
     ) + sqr(x268 - x275)) + 1/sqrt(sqr(x68 - x76) + sqr(x168 - x176) + sqr(
     x268 - x276)) + 1/sqrt(sqr(x68 - x77) + sqr(x168 - x177) + sqr(x268 - x277
     )) + 1/sqrt(sqr(x68 - x78) + sqr(x168 - x178) + sqr(x268 - x278)) + 1/
     sqrt(sqr(x68 - x79) + sqr(x168 - x179) + sqr(x268 - x279)) + 1/sqrt(sqr(
     x68 - x80) + sqr(x168 - x180) + sqr(x268 - x280)) + 1/sqrt(sqr(x68 - x81)
      + sqr(x168 - x181) + sqr(x268 - x281)) + 1/sqrt(sqr(x68 - x82) + sqr(x168
      - x182) + sqr(x268 - x282)) + 1/sqrt(sqr(x68 - x83) + sqr(x168 - x183) + 
     sqr(x268 - x283)) + 1/sqrt(sqr(x68 - x84) + sqr(x168 - x184) + sqr(x268 - 
     x284)) + 1/sqrt(sqr(x68 - x85) + sqr(x168 - x185) + sqr(x268 - x285)) + 1/
     sqrt(sqr(x68 - x86) + sqr(x168 - x186) + sqr(x268 - x286)) + 1/sqrt(sqr(
     x68 - x87) + sqr(x168 - x187) + sqr(x268 - x287)) + 1/sqrt(sqr(x68 - x88)
      + sqr(x168 - x188) + sqr(x268 - x288)) + 1/sqrt(sqr(x68 - x89) + sqr(x168
      - x189) + sqr(x268 - x289)) + 1/sqrt(sqr(x68 - x90) + sqr(x168 - x190) + 
     sqr(x268 - x290)) + 1/sqrt(sqr(x68 - x91) + sqr(x168 - x191) + sqr(x268 - 
     x291)) + 1/sqrt(sqr(x68 - x92) + sqr(x168 - x192) + sqr(x268 - x292)) + 1/
     sqrt(sqr(x68 - x93) + sqr(x168 - x193) + sqr(x268 - x293)) + 1/sqrt(sqr(
     x68 - x94) + sqr(x168 - x194) + sqr(x268 - x294)) + 1/sqrt(sqr(x68 - x95)
      + sqr(x168 - x195) + sqr(x268 - x295)) + 1/sqrt(sqr(x68 - x96) + sqr(x168
      - x196) + sqr(x268 - x296)) + 1/sqrt(sqr(x68 - x97) + sqr(x168 - x197) + 
     sqr(x268 - x297)) + 1/sqrt(sqr(x68 - x98) + sqr(x168 - x198) + sqr(x268 - 
     x298)) + 1/sqrt(sqr(x68 - x99) + sqr(x168 - x199) + sqr(x268 - x299)) + 1/
     sqrt(sqr(x68 - x100) + sqr(x168 - x200) + sqr(x268 - x300)) + 1/sqrt(sqr(
     x69 - x70) + sqr(x169 - x170) + sqr(x269 - x270)) + 1/sqrt(sqr(x69 - x71)
      + sqr(x169 - x171) + sqr(x269 - x271)) + 1/sqrt(sqr(x69 - x72) + sqr(x169
      - x172) + sqr(x269 - x272)) + 1/sqrt(sqr(x69 - x73) + sqr(x169 - x173) + 
     sqr(x269 - x273)) + 1/sqrt(sqr(x69 - x74) + sqr(x169 - x174) + sqr(x269 - 
     x274)) + 1/sqrt(sqr(x69 - x75) + sqr(x169 - x175) + sqr(x269 - x275)) + 1/
     sqrt(sqr(x69 - x76) + sqr(x169 - x176) + sqr(x269 - x276)) + 1/sqrt(sqr(
     x69 - x77) + sqr(x169 - x177) + sqr(x269 - x277)) + 1/sqrt(sqr(x69 - x78)
      + sqr(x169 - x178) + sqr(x269 - x278)) + 1/sqrt(sqr(x69 - x79) + sqr(x169
      - x179) + sqr(x269 - x279)) + 1/sqrt(sqr(x69 - x80) + sqr(x169 - x180) + 
     sqr(x269 - x280)) + 1/sqrt(sqr(x69 - x81) + sqr(x169 - x181) + sqr(x269 - 
     x281)) + 1/sqrt(sqr(x69 - x82) + sqr(x169 - x182) + sqr(x269 - x282)) + 1/
     sqrt(sqr(x69 - x83) + sqr(x169 - x183) + sqr(x269 - x283)) + 1/sqrt(sqr(
     x69 - x84) + sqr(x169 - x184) + sqr(x269 - x284)) + 1/sqrt(sqr(x69 - x85)
      + sqr(x169 - x185) + sqr(x269 - x285)) + 1/sqrt(sqr(x69 - x86) + sqr(x169
      - x186) + sqr(x269 - x286)) + 1/sqrt(sqr(x69 - x87) + sqr(x169 - x187) + 
     sqr(x269 - x287)) + 1/sqrt(sqr(x69 - x88) + sqr(x169 - x188) + sqr(x269 - 
     x288)) + 1/sqrt(sqr(x69 - x89) + sqr(x169 - x189) + sqr(x269 - x289)) + 1/
     sqrt(sqr(x69 - x90) + sqr(x169 - x190) + sqr(x269 - x290)) + 1/sqrt(sqr(
     x69 - x91) + sqr(x169 - x191) + sqr(x269 - x291)) + 1/sqrt(sqr(x69 - x92)
      + sqr(x169 - x192) + sqr(x269 - x292)) + 1/sqrt(sqr(x69 - x93) + sqr(x169
      - x193) + sqr(x269 - x293)) + 1/sqrt(sqr(x69 - x94) + sqr(x169 - x194) + 
     sqr(x269 - x294)) + 1/sqrt(sqr(x69 - x95) + sqr(x169 - x195) + sqr(x269 - 
     x295)) + 1/sqrt(sqr(x69 - x96) + sqr(x169 - x196) + sqr(x269 - x296)) + 1/
     sqrt(sqr(x69 - x97) + sqr(x169 - x197) + sqr(x269 - x297)) + 1/sqrt(sqr(
     x69 - x98) + sqr(x169 - x198) + sqr(x269 - x298)) + 1/sqrt(sqr(x69 - x99)
      + sqr(x169 - x199) + sqr(x269 - x299)) + 1/sqrt(sqr(x69 - x100) + sqr(
     x169 - x200) + sqr(x269 - x300)) + 1/sqrt(sqr(x70 - x71) + sqr(x170 - x171
     ) + sqr(x270 - x271)) + 1/sqrt(sqr(x70 - x72) + sqr(x170 - x172) + sqr(
     x270 - x272)) + 1/sqrt(sqr(x70 - x73) + sqr(x170 - x173) + sqr(x270 - x273
     )) + 1/sqrt(sqr(x70 - x74) + sqr(x170 - x174) + sqr(x270 - x274)) + 1/
     sqrt(sqr(x70 - x75) + sqr(x170 - x175) + sqr(x270 - x275)) + 1/sqrt(sqr(
     x70 - x76) + sqr(x170 - x176) + sqr(x270 - x276)) + 1/sqrt(sqr(x70 - x77)
      + sqr(x170 - x177) + sqr(x270 - x277)) + 1/sqrt(sqr(x70 - x78) + sqr(x170
      - x178) + sqr(x270 - x278)) + 1/sqrt(sqr(x70 - x79) + sqr(x170 - x179) + 
     sqr(x270 - x279)) + 1/sqrt(sqr(x70 - x80) + sqr(x170 - x180) + sqr(x270 - 
     x280)) + 1/sqrt(sqr(x70 - x81) + sqr(x170 - x181) + sqr(x270 - x281)) + 1/
     sqrt(sqr(x70 - x82) + sqr(x170 - x182) + sqr(x270 - x282)) + 1/sqrt(sqr(
     x70 - x83) + sqr(x170 - x183) + sqr(x270 - x283)) + 1/sqrt(sqr(x70 - x84)
      + sqr(x170 - x184) + sqr(x270 - x284)) + 1/sqrt(sqr(x70 - x85) + sqr(x170
      - x185) + sqr(x270 - x285)) + 1/sqrt(sqr(x70 - x86) + sqr(x170 - x186) + 
     sqr(x270 - x286)) + 1/sqrt(sqr(x70 - x87) + sqr(x170 - x187) + sqr(x270 - 
     x287)) + 1/sqrt(sqr(x70 - x88) + sqr(x170 - x188) + sqr(x270 - x288)) + 1/
     sqrt(sqr(x70 - x89) + sqr(x170 - x189) + sqr(x270 - x289)) + 1/sqrt(sqr(
     x70 - x90) + sqr(x170 - x190) + sqr(x270 - x290)) + 1/sqrt(sqr(x70 - x91)
      + sqr(x170 - x191) + sqr(x270 - x291)) + 1/sqrt(sqr(x70 - x92) + sqr(x170
      - x192) + sqr(x270 - x292)) + 1/sqrt(sqr(x70 - x93) + sqr(x170 - x193) + 
     sqr(x270 - x293)) + 1/sqrt(sqr(x70 - x94) + sqr(x170 - x194) + sqr(x270 - 
     x294)) + 1/sqrt(sqr(x70 - x95) + sqr(x170 - x195) + sqr(x270 - x295)) + 1/
     sqrt(sqr(x70 - x96) + sqr(x170 - x196) + sqr(x270 - x296)) + 1/sqrt(sqr(
     x70 - x97) + sqr(x170 - x197) + sqr(x270 - x297)) + 1/sqrt(sqr(x70 - x98)
      + sqr(x170 - x198) + sqr(x270 - x298)) + 1/sqrt(sqr(x70 - x99) + sqr(x170
      - x199) + sqr(x270 - x299)) + 1/sqrt(sqr(x70 - x100) + sqr(x170 - x200)
      + sqr(x270 - x300)) + 1/sqrt(sqr(x71 - x72) + sqr(x171 - x172) + sqr(x271
      - x272)) + 1/sqrt(sqr(x71 - x73) + sqr(x171 - x173) + sqr(x271 - x273))
      + 1/sqrt(sqr(x71 - x74) + sqr(x171 - x174) + sqr(x271 - x274)) + 1/sqrt(
     sqr(x71 - x75) + sqr(x171 - x175) + sqr(x271 - x275)) + 1/sqrt(sqr(x71 - 
     x76) + sqr(x171 - x176) + sqr(x271 - x276)) + 1/sqrt(sqr(x71 - x77) + sqr(
     x171 - x177) + sqr(x271 - x277)) + 1/sqrt(sqr(x71 - x78) + sqr(x171 - x178
     ) + sqr(x271 - x278)) + 1/sqrt(sqr(x71 - x79) + sqr(x171 - x179) + sqr(
     x271 - x279)) + 1/sqrt(sqr(x71 - x80) + sqr(x171 - x180) + sqr(x271 - x280
     )) + 1/sqrt(sqr(x71 - x81) + sqr(x171 - x181) + sqr(x271 - x281)) + 1/
     sqrt(sqr(x71 - x82) + sqr(x171 - x182) + sqr(x271 - x282)) + 1/sqrt(sqr(
     x71 - x83) + sqr(x171 - x183) + sqr(x271 - x283)) + 1/sqrt(sqr(x71 - x84)
      + sqr(x171 - x184) + sqr(x271 - x284)) + 1/sqrt(sqr(x71 - x85) + sqr(x171
      - x185) + sqr(x271 - x285)) + 1/sqrt(sqr(x71 - x86) + sqr(x171 - x186) + 
     sqr(x271 - x286)) + 1/sqrt(sqr(x71 - x87) + sqr(x171 - x187) + sqr(x271 - 
     x287)) + 1/sqrt(sqr(x71 - x88) + sqr(x171 - x188) + sqr(x271 - x288)) + 1/
     sqrt(sqr(x71 - x89) + sqr(x171 - x189) + sqr(x271 - x289)) + 1/sqrt(sqr(
     x71 - x90) + sqr(x171 - x190) + sqr(x271 - x290)) + 1/sqrt(sqr(x71 - x91)
      + sqr(x171 - x191) + sqr(x271 - x291)) + 1/sqrt(sqr(x71 - x92) + sqr(x171
      - x192) + sqr(x271 - x292)) + 1/sqrt(sqr(x71 - x93) + sqr(x171 - x193) + 
     sqr(x271 - x293)) + 1/sqrt(sqr(x71 - x94) + sqr(x171 - x194) + sqr(x271 - 
     x294)) + 1/sqrt(sqr(x71 - x95) + sqr(x171 - x195) + sqr(x271 - x295)) + 1/
     sqrt(sqr(x71 - x96) + sqr(x171 - x196) + sqr(x271 - x296)) + 1/sqrt(sqr(
     x71 - x97) + sqr(x171 - x197) + sqr(x271 - x297)) + 1/sqrt(sqr(x71 - x98)
      + sqr(x171 - x198) + sqr(x271 - x298)) + 1/sqrt(sqr(x71 - x99) + sqr(x171
      - x199) + sqr(x271 - x299)) + 1/sqrt(sqr(x71 - x100) + sqr(x171 - x200)
      + sqr(x271 - x300)) + 1/sqrt(sqr(x72 - x73) + sqr(x172 - x173) + sqr(x272
      - x273)) + 1/sqrt(sqr(x72 - x74) + sqr(x172 - x174) + sqr(x272 - x274))
      + 1/sqrt(sqr(x72 - x75) + sqr(x172 - x175) + sqr(x272 - x275)) + 1/sqrt(
     sqr(x72 - x76) + sqr(x172 - x176) + sqr(x272 - x276)) + 1/sqrt(sqr(x72 - 
     x77) + sqr(x172 - x177) + sqr(x272 - x277)) + 1/sqrt(sqr(x72 - x78) + sqr(
     x172 - x178) + sqr(x272 - x278)) + 1/sqrt(sqr(x72 - x79) + sqr(x172 - x179
     ) + sqr(x272 - x279)) + 1/sqrt(sqr(x72 - x80) + sqr(x172 - x180) + sqr(
     x272 - x280)) + 1/sqrt(sqr(x72 - x81) + sqr(x172 - x181) + sqr(x272 - x281
     )) + 1/sqrt(sqr(x72 - x82) + sqr(x172 - x182) + sqr(x272 - x282)) + 1/
     sqrt(sqr(x72 - x83) + sqr(x172 - x183) + sqr(x272 - x283)) + 1/sqrt(sqr(
     x72 - x84) + sqr(x172 - x184) + sqr(x272 - x284)) + 1/sqrt(sqr(x72 - x85)
      + sqr(x172 - x185) + sqr(x272 - x285)) + 1/sqrt(sqr(x72 - x86) + sqr(x172
      - x186) + sqr(x272 - x286)) + 1/sqrt(sqr(x72 - x87) + sqr(x172 - x187) + 
     sqr(x272 - x287)) + 1/sqrt(sqr(x72 - x88) + sqr(x172 - x188) + sqr(x272 - 
     x288)) + 1/sqrt(sqr(x72 - x89) + sqr(x172 - x189) + sqr(x272 - x289)) + 1/
     sqrt(sqr(x72 - x90) + sqr(x172 - x190) + sqr(x272 - x290)) + 1/sqrt(sqr(
     x72 - x91) + sqr(x172 - x191) + sqr(x272 - x291)) + 1/sqrt(sqr(x72 - x92)
      + sqr(x172 - x192) + sqr(x272 - x292)) + 1/sqrt(sqr(x72 - x93) + sqr(x172
      - x193) + sqr(x272 - x293)) + 1/sqrt(sqr(x72 - x94) + sqr(x172 - x194) + 
     sqr(x272 - x294)) + 1/sqrt(sqr(x72 - x95) + sqr(x172 - x195) + sqr(x272 - 
     x295)) + 1/sqrt(sqr(x72 - x96) + sqr(x172 - x196) + sqr(x272 - x296)) + 1/
     sqrt(sqr(x72 - x97) + sqr(x172 - x197) + sqr(x272 - x297)) + 1/sqrt(sqr(
     x72 - x98) + sqr(x172 - x198) + sqr(x272 - x298)) + 1/sqrt(sqr(x72 - x99)
      + sqr(x172 - x199) + sqr(x272 - x299)) + 1/sqrt(sqr(x72 - x100) + sqr(
     x172 - x200) + sqr(x272 - x300)) + 1/sqrt(sqr(x73 - x74) + sqr(x173 - x174
     ) + sqr(x273 - x274)) + 1/sqrt(sqr(x73 - x75) + sqr(x173 - x175) + sqr(
     x273 - x275)) + 1/sqrt(sqr(x73 - x76) + sqr(x173 - x176) + sqr(x273 - x276
     )) + 1/sqrt(sqr(x73 - x77) + sqr(x173 - x177) + sqr(x273 - x277)) + 1/
     sqrt(sqr(x73 - x78) + sqr(x173 - x178) + sqr(x273 - x278)) + 1/sqrt(sqr(
     x73 - x79) + sqr(x173 - x179) + sqr(x273 - x279)) + 1/sqrt(sqr(x73 - x80)
      + sqr(x173 - x180) + sqr(x273 - x280)) + 1/sqrt(sqr(x73 - x81) + sqr(x173
      - x181) + sqr(x273 - x281)) + 1/sqrt(sqr(x73 - x82) + sqr(x173 - x182) + 
     sqr(x273 - x282)) + 1/sqrt(sqr(x73 - x83) + sqr(x173 - x183) + sqr(x273 - 
     x283)) + 1/sqrt(sqr(x73 - x84) + sqr(x173 - x184) + sqr(x273 - x284)) + 1/
     sqrt(sqr(x73 - x85) + sqr(x173 - x185) + sqr(x273 - x285)) + 1/sqrt(sqr(
     x73 - x86) + sqr(x173 - x186) + sqr(x273 - x286)) + 1/sqrt(sqr(x73 - x87)
      + sqr(x173 - x187) + sqr(x273 - x287)) + 1/sqrt(sqr(x73 - x88) + sqr(x173
      - x188) + sqr(x273 - x288)) + 1/sqrt(sqr(x73 - x89) + sqr(x173 - x189) + 
     sqr(x273 - x289)) + 1/sqrt(sqr(x73 - x90) + sqr(x173 - x190) + sqr(x273 - 
     x290)) + 1/sqrt(sqr(x73 - x91) + sqr(x173 - x191) + sqr(x273 - x291)) + 1/
     sqrt(sqr(x73 - x92) + sqr(x173 - x192) + sqr(x273 - x292)) + 1/sqrt(sqr(
     x73 - x93) + sqr(x173 - x193) + sqr(x273 - x293)) + 1/sqrt(sqr(x73 - x94)
      + sqr(x173 - x194) + sqr(x273 - x294)) + 1/sqrt(sqr(x73 - x95) + sqr(x173
      - x195) + sqr(x273 - x295)) + 1/sqrt(sqr(x73 - x96) + sqr(x173 - x196) + 
     sqr(x273 - x296)) + 1/sqrt(sqr(x73 - x97) + sqr(x173 - x197) + sqr(x273 - 
     x297)) + 1/sqrt(sqr(x73 - x98) + sqr(x173 - x198) + sqr(x273 - x298)) + 1/
     sqrt(sqr(x73 - x99) + sqr(x173 - x199) + sqr(x273 - x299)) + 1/sqrt(sqr(
     x73 - x100) + sqr(x173 - x200) + sqr(x273 - x300)) + 1/sqrt(sqr(x74 - x75)
      + sqr(x174 - x175) + sqr(x274 - x275)) + 1/sqrt(sqr(x74 - x76) + sqr(x174
      - x176) + sqr(x274 - x276)) + 1/sqrt(sqr(x74 - x77) + sqr(x174 - x177) + 
     sqr(x274 - x277)) + 1/sqrt(sqr(x74 - x78) + sqr(x174 - x178) + sqr(x274 - 
     x278)) + 1/sqrt(sqr(x74 - x79) + sqr(x174 - x179) + sqr(x274 - x279)) + 1/
     sqrt(sqr(x74 - x80) + sqr(x174 - x180) + sqr(x274 - x280)) + 1/sqrt(sqr(
     x74 - x81) + sqr(x174 - x181) + sqr(x274 - x281)) + 1/sqrt(sqr(x74 - x82)
      + sqr(x174 - x182) + sqr(x274 - x282)) + 1/sqrt(sqr(x74 - x83) + sqr(x174
      - x183) + sqr(x274 - x283)) + 1/sqrt(sqr(x74 - x84) + sqr(x174 - x184) + 
     sqr(x274 - x284)) + 1/sqrt(sqr(x74 - x85) + sqr(x174 - x185) + sqr(x274 - 
     x285)) + 1/sqrt(sqr(x74 - x86) + sqr(x174 - x186) + sqr(x274 - x286)) + 1/
     sqrt(sqr(x74 - x87) + sqr(x174 - x187) + sqr(x274 - x287)) + 1/sqrt(sqr(
     x74 - x88) + sqr(x174 - x188) + sqr(x274 - x288)) + 1/sqrt(sqr(x74 - x89)
      + sqr(x174 - x189) + sqr(x274 - x289)) + 1/sqrt(sqr(x74 - x90) + sqr(x174
      - x190) + sqr(x274 - x290)) + 1/sqrt(sqr(x74 - x91) + sqr(x174 - x191) + 
     sqr(x274 - x291)) + 1/sqrt(sqr(x74 - x92) + sqr(x174 - x192) + sqr(x274 - 
     x292)) + 1/sqrt(sqr(x74 - x93) + sqr(x174 - x193) + sqr(x274 - x293)) + 1/
     sqrt(sqr(x74 - x94) + sqr(x174 - x194) + sqr(x274 - x294)) + 1/sqrt(sqr(
     x74 - x95) + sqr(x174 - x195) + sqr(x274 - x295)) + 1/sqrt(sqr(x74 - x96)
      + sqr(x174 - x196) + sqr(x274 - x296)) + 1/sqrt(sqr(x74 - x97) + sqr(x174
      - x197) + sqr(x274 - x297)) + 1/sqrt(sqr(x74 - x98) + sqr(x174 - x198) + 
     sqr(x274 - x298)) + 1/sqrt(sqr(x74 - x99) + sqr(x174 - x199) + sqr(x274 - 
     x299)) + 1/sqrt(sqr(x74 - x100) + sqr(x174 - x200) + sqr(x274 - x300)) + 1
     /sqrt(sqr(x75 - x76) + sqr(x175 - x176) + sqr(x275 - x276)) + 1/sqrt(sqr(
     x75 - x77) + sqr(x175 - x177) + sqr(x275 - x277)) + 1/sqrt(sqr(x75 - x78)
      + sqr(x175 - x178) + sqr(x275 - x278)) + 1/sqrt(sqr(x75 - x79) + sqr(x175
      - x179) + sqr(x275 - x279)) + 1/sqrt(sqr(x75 - x80) + sqr(x175 - x180) + 
     sqr(x275 - x280)) + 1/sqrt(sqr(x75 - x81) + sqr(x175 - x181) + sqr(x275 - 
     x281)) + 1/sqrt(sqr(x75 - x82) + sqr(x175 - x182) + sqr(x275 - x282)) + 1/
     sqrt(sqr(x75 - x83) + sqr(x175 - x183) + sqr(x275 - x283)) + 1/sqrt(sqr(
     x75 - x84) + sqr(x175 - x184) + sqr(x275 - x284)) + 1/sqrt(sqr(x75 - x85)
      + sqr(x175 - x185) + sqr(x275 - x285)) + 1/sqrt(sqr(x75 - x86) + sqr(x175
      - x186) + sqr(x275 - x286)) + 1/sqrt(sqr(x75 - x87) + sqr(x175 - x187) + 
     sqr(x275 - x287)) + 1/sqrt(sqr(x75 - x88) + sqr(x175 - x188) + sqr(x275 - 
     x288)) + 1/sqrt(sqr(x75 - x89) + sqr(x175 - x189) + sqr(x275 - x289)) + 1/
     sqrt(sqr(x75 - x90) + sqr(x175 - x190) + sqr(x275 - x290)) + 1/sqrt(sqr(
     x75 - x91) + sqr(x175 - x191) + sqr(x275 - x291)) + 1/sqrt(sqr(x75 - x92)
      + sqr(x175 - x192) + sqr(x275 - x292)) + 1/sqrt(sqr(x75 - x93) + sqr(x175
      - x193) + sqr(x275 - x293)) + 1/sqrt(sqr(x75 - x94) + sqr(x175 - x194) + 
     sqr(x275 - x294)) + 1/sqrt(sqr(x75 - x95) + sqr(x175 - x195) + sqr(x275 - 
     x295)) + 1/sqrt(sqr(x75 - x96) + sqr(x175 - x196) + sqr(x275 - x296)) + 1/
     sqrt(sqr(x75 - x97) + sqr(x175 - x197) + sqr(x275 - x297)) + 1/sqrt(sqr(
     x75 - x98) + sqr(x175 - x198) + sqr(x275 - x298)) + 1/sqrt(sqr(x75 - x99)
      + sqr(x175 - x199) + sqr(x275 - x299)) + 1/sqrt(sqr(x75 - x100) + sqr(
     x175 - x200) + sqr(x275 - x300)) + 1/sqrt(sqr(x76 - x77) + sqr(x176 - x177
     ) + sqr(x276 - x277)) + 1/sqrt(sqr(x76 - x78) + sqr(x176 - x178) + sqr(
     x276 - x278)) + 1/sqrt(sqr(x76 - x79) + sqr(x176 - x179) + sqr(x276 - x279
     )) + 1/sqrt(sqr(x76 - x80) + sqr(x176 - x180) + sqr(x276 - x280)) + 1/
     sqrt(sqr(x76 - x81) + sqr(x176 - x181) + sqr(x276 - x281)) + 1/sqrt(sqr(
     x76 - x82) + sqr(x176 - x182) + sqr(x276 - x282)) + 1/sqrt(sqr(x76 - x83)
      + sqr(x176 - x183) + sqr(x276 - x283)) + 1/sqrt(sqr(x76 - x84) + sqr(x176
      - x184) + sqr(x276 - x284)) + 1/sqrt(sqr(x76 - x85) + sqr(x176 - x185) + 
     sqr(x276 - x285)) + 1/sqrt(sqr(x76 - x86) + sqr(x176 - x186) + sqr(x276 - 
     x286)) + 1/sqrt(sqr(x76 - x87) + sqr(x176 - x187) + sqr(x276 - x287)) + 1/
     sqrt(sqr(x76 - x88) + sqr(x176 - x188) + sqr(x276 - x288)) + 1/sqrt(sqr(
     x76 - x89) + sqr(x176 - x189) + sqr(x276 - x289)) + 1/sqrt(sqr(x76 - x90)
      + sqr(x176 - x190) + sqr(x276 - x290)) + 1/sqrt(sqr(x76 - x91) + sqr(x176
      - x191) + sqr(x276 - x291)) + 1/sqrt(sqr(x76 - x92) + sqr(x176 - x192) + 
     sqr(x276 - x292)) + 1/sqrt(sqr(x76 - x93) + sqr(x176 - x193) + sqr(x276 - 
     x293)) + 1/sqrt(sqr(x76 - x94) + sqr(x176 - x194) + sqr(x276 - x294)) + 1/
     sqrt(sqr(x76 - x95) + sqr(x176 - x195) + sqr(x276 - x295)) + 1/sqrt(sqr(
     x76 - x96) + sqr(x176 - x196) + sqr(x276 - x296)) + 1/sqrt(sqr(x76 - x97)
      + sqr(x176 - x197) + sqr(x276 - x297)) + 1/sqrt(sqr(x76 - x98) + sqr(x176
      - x198) + sqr(x276 - x298)) + 1/sqrt(sqr(x76 - x99) + sqr(x176 - x199) + 
     sqr(x276 - x299)) + 1/sqrt(sqr(x76 - x100) + sqr(x176 - x200) + sqr(x276
      - x300)) + 1/sqrt(sqr(x77 - x78) + sqr(x177 - x178) + sqr(x277 - x278))
      + 1/sqrt(sqr(x77 - x79) + sqr(x177 - x179) + sqr(x277 - x279)) + 1/sqrt(
     sqr(x77 - x80) + sqr(x177 - x180) + sqr(x277 - x280)) + 1/sqrt(sqr(x77 - 
     x81) + sqr(x177 - x181) + sqr(x277 - x281)) + 1/sqrt(sqr(x77 - x82) + sqr(
     x177 - x182) + sqr(x277 - x282)) + 1/sqrt(sqr(x77 - x83) + sqr(x177 - x183
     ) + sqr(x277 - x283)) + 1/sqrt(sqr(x77 - x84) + sqr(x177 - x184) + sqr(
     x277 - x284)) + 1/sqrt(sqr(x77 - x85) + sqr(x177 - x185) + sqr(x277 - x285
     )) + 1/sqrt(sqr(x77 - x86) + sqr(x177 - x186) + sqr(x277 - x286)) + 1/
     sqrt(sqr(x77 - x87) + sqr(x177 - x187) + sqr(x277 - x287)) + 1/sqrt(sqr(
     x77 - x88) + sqr(x177 - x188) + sqr(x277 - x288)) + 1/sqrt(sqr(x77 - x89)
      + sqr(x177 - x189) + sqr(x277 - x289)) + 1/sqrt(sqr(x77 - x90) + sqr(x177
      - x190) + sqr(x277 - x290)) + 1/sqrt(sqr(x77 - x91) + sqr(x177 - x191) + 
     sqr(x277 - x291)) + 1/sqrt(sqr(x77 - x92) + sqr(x177 - x192) + sqr(x277 - 
     x292)) + 1/sqrt(sqr(x77 - x93) + sqr(x177 - x193) + sqr(x277 - x293)) + 1/
     sqrt(sqr(x77 - x94) + sqr(x177 - x194) + sqr(x277 - x294)) + 1/sqrt(sqr(
     x77 - x95) + sqr(x177 - x195) + sqr(x277 - x295)) + 1/sqrt(sqr(x77 - x96)
      + sqr(x177 - x196) + sqr(x277 - x296)) + 1/sqrt(sqr(x77 - x97) + sqr(x177
      - x197) + sqr(x277 - x297)) + 1/sqrt(sqr(x77 - x98) + sqr(x177 - x198) + 
     sqr(x277 - x298)) + 1/sqrt(sqr(x77 - x99) + sqr(x177 - x199) + sqr(x277 - 
     x299)) + 1/sqrt(sqr(x77 - x100) + sqr(x177 - x200) + sqr(x277 - x300)) + 1
     /sqrt(sqr(x78 - x79) + sqr(x178 - x179) + sqr(x278 - x279)) + 1/sqrt(sqr(
     x78 - x80) + sqr(x178 - x180) + sqr(x278 - x280)) + 1/sqrt(sqr(x78 - x81)
      + sqr(x178 - x181) + sqr(x278 - x281)) + 1/sqrt(sqr(x78 - x82) + sqr(x178
      - x182) + sqr(x278 - x282)) + 1/sqrt(sqr(x78 - x83) + sqr(x178 - x183) + 
     sqr(x278 - x283)) + 1/sqrt(sqr(x78 - x84) + sqr(x178 - x184) + sqr(x278 - 
     x284)) + 1/sqrt(sqr(x78 - x85) + sqr(x178 - x185) + sqr(x278 - x285)) + 1/
     sqrt(sqr(x78 - x86) + sqr(x178 - x186) + sqr(x278 - x286)) + 1/sqrt(sqr(
     x78 - x87) + sqr(x178 - x187) + sqr(x278 - x287)) + 1/sqrt(sqr(x78 - x88)
      + sqr(x178 - x188) + sqr(x278 - x288)) + 1/sqrt(sqr(x78 - x89) + sqr(x178
      - x189) + sqr(x278 - x289)) + 1/sqrt(sqr(x78 - x90) + sqr(x178 - x190) + 
     sqr(x278 - x290)) + 1/sqrt(sqr(x78 - x91) + sqr(x178 - x191) + sqr(x278 - 
     x291)) + 1/sqrt(sqr(x78 - x92) + sqr(x178 - x192) + sqr(x278 - x292)) + 1/
     sqrt(sqr(x78 - x93) + sqr(x178 - x193) + sqr(x278 - x293)) + 1/sqrt(sqr(
     x78 - x94) + sqr(x178 - x194) + sqr(x278 - x294)) + 1/sqrt(sqr(x78 - x95)
      + sqr(x178 - x195) + sqr(x278 - x295)) + 1/sqrt(sqr(x78 - x96) + sqr(x178
      - x196) + sqr(x278 - x296)) + 1/sqrt(sqr(x78 - x97) + sqr(x178 - x197) + 
     sqr(x278 - x297)) + 1/sqrt(sqr(x78 - x98) + sqr(x178 - x198) + sqr(x278 - 
     x298)) + 1/sqrt(sqr(x78 - x99) + sqr(x178 - x199) + sqr(x278 - x299)) + 1/
     sqrt(sqr(x78 - x100) + sqr(x178 - x200) + sqr(x278 - x300)) + 1/sqrt(sqr(
     x79 - x80) + sqr(x179 - x180) + sqr(x279 - x280)) + 1/sqrt(sqr(x79 - x81)
      + sqr(x179 - x181) + sqr(x279 - x281)) + 1/sqrt(sqr(x79 - x82) + sqr(x179
      - x182) + sqr(x279 - x282)) + 1/sqrt(sqr(x79 - x83) + sqr(x179 - x183) + 
     sqr(x279 - x283)) + 1/sqrt(sqr(x79 - x84) + sqr(x179 - x184) + sqr(x279 - 
     x284)) + 1/sqrt(sqr(x79 - x85) + sqr(x179 - x185) + sqr(x279 - x285)) + 1/
     sqrt(sqr(x79 - x86) + sqr(x179 - x186) + sqr(x279 - x286)) + 1/sqrt(sqr(
     x79 - x87) + sqr(x179 - x187) + sqr(x279 - x287)) + 1/sqrt(sqr(x79 - x88)
      + sqr(x179 - x188) + sqr(x279 - x288)) + 1/sqrt(sqr(x79 - x89) + sqr(x179
      - x189) + sqr(x279 - x289)) + 1/sqrt(sqr(x79 - x90) + sqr(x179 - x190) + 
     sqr(x279 - x290)) + 1/sqrt(sqr(x79 - x91) + sqr(x179 - x191) + sqr(x279 - 
     x291)) + 1/sqrt(sqr(x79 - x92) + sqr(x179 - x192) + sqr(x279 - x292)) + 1/
     sqrt(sqr(x79 - x93) + sqr(x179 - x193) + sqr(x279 - x293)) + 1/sqrt(sqr(
     x79 - x94) + sqr(x179 - x194) + sqr(x279 - x294)) + 1/sqrt(sqr(x79 - x95)
      + sqr(x179 - x195) + sqr(x279 - x295)) + 1/sqrt(sqr(x79 - x96) + sqr(x179
      - x196) + sqr(x279 - x296)) + 1/sqrt(sqr(x79 - x97) + sqr(x179 - x197) + 
     sqr(x279 - x297)) + 1/sqrt(sqr(x79 - x98) + sqr(x179 - x198) + sqr(x279 - 
     x298)) + 1/sqrt(sqr(x79 - x99) + sqr(x179 - x199) + sqr(x279 - x299)) + 1/
     sqrt(sqr(x79 - x100) + sqr(x179 - x200) + sqr(x279 - x300)) + 1/sqrt(sqr(
     x80 - x81) + sqr(x180 - x181) + sqr(x280 - x281)) + 1/sqrt(sqr(x80 - x82)
      + sqr(x180 - x182) + sqr(x280 - x282)) + 1/sqrt(sqr(x80 - x83) + sqr(x180
      - x183) + sqr(x280 - x283)) + 1/sqrt(sqr(x80 - x84) + sqr(x180 - x184) + 
     sqr(x280 - x284)) + 1/sqrt(sqr(x80 - x85) + sqr(x180 - x185) + sqr(x280 - 
     x285)) + 1/sqrt(sqr(x80 - x86) + sqr(x180 - x186) + sqr(x280 - x286)) + 1/
     sqrt(sqr(x80 - x87) + sqr(x180 - x187) + sqr(x280 - x287)) + 1/sqrt(sqr(
     x80 - x88) + sqr(x180 - x188) + sqr(x280 - x288)) + 1/sqrt(sqr(x80 - x89)
      + sqr(x180 - x189) + sqr(x280 - x289)) + 1/sqrt(sqr(x80 - x90) + sqr(x180
      - x190) + sqr(x280 - x290)) + 1/sqrt(sqr(x80 - x91) + sqr(x180 - x191) + 
     sqr(x280 - x291)) + 1/sqrt(sqr(x80 - x92) + sqr(x180 - x192) + sqr(x280 - 
     x292)) + 1/sqrt(sqr(x80 - x93) + sqr(x180 - x193) + sqr(x280 - x293)) + 1/
     sqrt(sqr(x80 - x94) + sqr(x180 - x194) + sqr(x280 - x294)) + 1/sqrt(sqr(
     x80 - x95) + sqr(x180 - x195) + sqr(x280 - x295)) + 1/sqrt(sqr(x80 - x96)
      + sqr(x180 - x196) + sqr(x280 - x296)) + 1/sqrt(sqr(x80 - x97) + sqr(x180
      - x197) + sqr(x280 - x297)) + 1/sqrt(sqr(x80 - x98) + sqr(x180 - x198) + 
     sqr(x280 - x298)) + 1/sqrt(sqr(x80 - x99) + sqr(x180 - x199) + sqr(x280 - 
     x299)) + 1/sqrt(sqr(x80 - x100) + sqr(x180 - x200) + sqr(x280 - x300)) + 1
     /sqrt(sqr(x81 - x82) + sqr(x181 - x182) + sqr(x281 - x282)) + 1/sqrt(sqr(
     x81 - x83) + sqr(x181 - x183) + sqr(x281 - x283)) + 1/sqrt(sqr(x81 - x84)
      + sqr(x181 - x184) + sqr(x281 - x284)) + 1/sqrt(sqr(x81 - x85) + sqr(x181
      - x185) + sqr(x281 - x285)) + 1/sqrt(sqr(x81 - x86) + sqr(x181 - x186) + 
     sqr(x281 - x286)) + 1/sqrt(sqr(x81 - x87) + sqr(x181 - x187) + sqr(x281 - 
     x287)) + 1/sqrt(sqr(x81 - x88) + sqr(x181 - x188) + sqr(x281 - x288)) + 1/
     sqrt(sqr(x81 - x89) + sqr(x181 - x189) + sqr(x281 - x289)) + 1/sqrt(sqr(
     x81 - x90) + sqr(x181 - x190) + sqr(x281 - x290)) + 1/sqrt(sqr(x81 - x91)
      + sqr(x181 - x191) + sqr(x281 - x291)) + 1/sqrt(sqr(x81 - x92) + sqr(x181
      - x192) + sqr(x281 - x292)) + 1/sqrt(sqr(x81 - x93) + sqr(x181 - x193) + 
     sqr(x281 - x293)) + 1/sqrt(sqr(x81 - x94) + sqr(x181 - x194) + sqr(x281 - 
     x294)) + 1/sqrt(sqr(x81 - x95) + sqr(x181 - x195) + sqr(x281 - x295)) + 1/
     sqrt(sqr(x81 - x96) + sqr(x181 - x196) + sqr(x281 - x296)) + 1/sqrt(sqr(
     x81 - x97) + sqr(x181 - x197) + sqr(x281 - x297)) + 1/sqrt(sqr(x81 - x98)
      + sqr(x181 - x198) + sqr(x281 - x298)) + 1/sqrt(sqr(x81 - x99) + sqr(x181
      - x199) + sqr(x281 - x299)) + 1/sqrt(sqr(x81 - x100) + sqr(x181 - x200)
      + sqr(x281 - x300)) + 1/sqrt(sqr(x82 - x83) + sqr(x182 - x183) + sqr(x282
      - x283)) + 1/sqrt(sqr(x82 - x84) + sqr(x182 - x184) + sqr(x282 - x284))
      + 1/sqrt(sqr(x82 - x85) + sqr(x182 - x185) + sqr(x282 - x285)) + 1/sqrt(
     sqr(x82 - x86) + sqr(x182 - x186) + sqr(x282 - x286)) + 1/sqrt(sqr(x82 - 
     x87) + sqr(x182 - x187) + sqr(x282 - x287)) + 1/sqrt(sqr(x82 - x88) + sqr(
     x182 - x188) + sqr(x282 - x288)) + 1/sqrt(sqr(x82 - x89) + sqr(x182 - x189
     ) + sqr(x282 - x289)) + 1/sqrt(sqr(x82 - x90) + sqr(x182 - x190) + sqr(
     x282 - x290)) + 1/sqrt(sqr(x82 - x91) + sqr(x182 - x191) + sqr(x282 - x291
     )) + 1/sqrt(sqr(x82 - x92) + sqr(x182 - x192) + sqr(x282 - x292)) + 1/
     sqrt(sqr(x82 - x93) + sqr(x182 - x193) + sqr(x282 - x293)) + 1/sqrt(sqr(
     x82 - x94) + sqr(x182 - x194) + sqr(x282 - x294)) + 1/sqrt(sqr(x82 - x95)
      + sqr(x182 - x195) + sqr(x282 - x295)) + 1/sqrt(sqr(x82 - x96) + sqr(x182
      - x196) + sqr(x282 - x296)) + 1/sqrt(sqr(x82 - x97) + sqr(x182 - x197) + 
     sqr(x282 - x297)) + 1/sqrt(sqr(x82 - x98) + sqr(x182 - x198) + sqr(x282 - 
     x298)) + 1/sqrt(sqr(x82 - x99) + sqr(x182 - x199) + sqr(x282 - x299)) + 1/
     sqrt(sqr(x82 - x100) + sqr(x182 - x200) + sqr(x282 - x300)) + 1/sqrt(sqr(
     x83 - x84) + sqr(x183 - x184) + sqr(x283 - x284)) + 1/sqrt(sqr(x83 - x85)
      + sqr(x183 - x185) + sqr(x283 - x285)) + 1/sqrt(sqr(x83 - x86) + sqr(x183
      - x186) + sqr(x283 - x286)) + 1/sqrt(sqr(x83 - x87) + sqr(x183 - x187) + 
     sqr(x283 - x287)) + 1/sqrt(sqr(x83 - x88) + sqr(x183 - x188) + sqr(x283 - 
     x288)) + 1/sqrt(sqr(x83 - x89) + sqr(x183 - x189) + sqr(x283 - x289)) + 1/
     sqrt(sqr(x83 - x90) + sqr(x183 - x190) + sqr(x283 - x290)) + 1/sqrt(sqr(
     x83 - x91) + sqr(x183 - x191) + sqr(x283 - x291)) + 1/sqrt(sqr(x83 - x92)
      + sqr(x183 - x192) + sqr(x283 - x292)) + 1/sqrt(sqr(x83 - x93) + sqr(x183
      - x193) + sqr(x283 - x293)) + 1/sqrt(sqr(x83 - x94) + sqr(x183 - x194) + 
     sqr(x283 - x294)) + 1/sqrt(sqr(x83 - x95) + sqr(x183 - x195) + sqr(x283 - 
     x295)) + 1/sqrt(sqr(x83 - x96) + sqr(x183 - x196) + sqr(x283 - x296)) + 1/
     sqrt(sqr(x83 - x97) + sqr(x183 - x197) + sqr(x283 - x297)) + 1/sqrt(sqr(
     x83 - x98) + sqr(x183 - x198) + sqr(x283 - x298)) + 1/sqrt(sqr(x83 - x99)
      + sqr(x183 - x199) + sqr(x283 - x299)) + 1/sqrt(sqr(x83 - x100) + sqr(
     x183 - x200) + sqr(x283 - x300)) + 1/sqrt(sqr(x84 - x85) + sqr(x184 - x185
     ) + sqr(x284 - x285)) + 1/sqrt(sqr(x84 - x86) + sqr(x184 - x186) + sqr(
     x284 - x286)) + 1/sqrt(sqr(x84 - x87) + sqr(x184 - x187) + sqr(x284 - x287
     )) + 1/sqrt(sqr(x84 - x88) + sqr(x184 - x188) + sqr(x284 - x288)) + 1/
     sqrt(sqr(x84 - x89) + sqr(x184 - x189) + sqr(x284 - x289)) + 1/sqrt(sqr(
     x84 - x90) + sqr(x184 - x190) + sqr(x284 - x290)) + 1/sqrt(sqr(x84 - x91)
      + sqr(x184 - x191) + sqr(x284 - x291)) + 1/sqrt(sqr(x84 - x92) + sqr(x184
      - x192) + sqr(x284 - x292)) + 1/sqrt(sqr(x84 - x93) + sqr(x184 - x193) + 
     sqr(x284 - x293)) + 1/sqrt(sqr(x84 - x94) + sqr(x184 - x194) + sqr(x284 - 
     x294)) + 1/sqrt(sqr(x84 - x95) + sqr(x184 - x195) + sqr(x284 - x295)) + 1/
     sqrt(sqr(x84 - x96) + sqr(x184 - x196) + sqr(x284 - x296)) + 1/sqrt(sqr(
     x84 - x97) + sqr(x184 - x197) + sqr(x284 - x297)) + 1/sqrt(sqr(x84 - x98)
      + sqr(x184 - x198) + sqr(x284 - x298)) + 1/sqrt(sqr(x84 - x99) + sqr(x184
      - x199) + sqr(x284 - x299)) + 1/sqrt(sqr(x84 - x100) + sqr(x184 - x200)
      + sqr(x284 - x300)) + 1/sqrt(sqr(x85 - x86) + sqr(x185 - x186) + sqr(x285
      - x286)) + 1/sqrt(sqr(x85 - x87) + sqr(x185 - x187) + sqr(x285 - x287))
      + 1/sqrt(sqr(x85 - x88) + sqr(x185 - x188) + sqr(x285 - x288)) + 1/sqrt(
     sqr(x85 - x89) + sqr(x185 - x189) + sqr(x285 - x289)) + 1/sqrt(sqr(x85 - 
     x90) + sqr(x185 - x190) + sqr(x285 - x290)) + 1/sqrt(sqr(x85 - x91) + sqr(
     x185 - x191) + sqr(x285 - x291)) + 1/sqrt(sqr(x85 - x92) + sqr(x185 - x192
     ) + sqr(x285 - x292)) + 1/sqrt(sqr(x85 - x93) + sqr(x185 - x193) + sqr(
     x285 - x293)) + 1/sqrt(sqr(x85 - x94) + sqr(x185 - x194) + sqr(x285 - x294
     )) + 1/sqrt(sqr(x85 - x95) + sqr(x185 - x195) + sqr(x285 - x295)) + 1/
     sqrt(sqr(x85 - x96) + sqr(x185 - x196) + sqr(x285 - x296)) + 1/sqrt(sqr(
     x85 - x97) + sqr(x185 - x197) + sqr(x285 - x297)) + 1/sqrt(sqr(x85 - x98)
      + sqr(x185 - x198) + sqr(x285 - x298)) + 1/sqrt(sqr(x85 - x99) + sqr(x185
      - x199) + sqr(x285 - x299)) + 1/sqrt(sqr(x85 - x100) + sqr(x185 - x200)
      + sqr(x285 - x300)) + 1/sqrt(sqr(x86 - x87) + sqr(x186 - x187) + sqr(x286
      - x287)) + 1/sqrt(sqr(x86 - x88) + sqr(x186 - x188) + sqr(x286 - x288))
      + 1/sqrt(sqr(x86 - x89) + sqr(x186 - x189) + sqr(x286 - x289)) + 1/sqrt(
     sqr(x86 - x90) + sqr(x186 - x190) + sqr(x286 - x290)) + 1/sqrt(sqr(x86 - 
     x91) + sqr(x186 - x191) + sqr(x286 - x291)) + 1/sqrt(sqr(x86 - x92) + sqr(
     x186 - x192) + sqr(x286 - x292)) + 1/sqrt(sqr(x86 - x93) + sqr(x186 - x193
     ) + sqr(x286 - x293)) + 1/sqrt(sqr(x86 - x94) + sqr(x186 - x194) + sqr(
     x286 - x294)) + 1/sqrt(sqr(x86 - x95) + sqr(x186 - x195) + sqr(x286 - x295
     )) + 1/sqrt(sqr(x86 - x96) + sqr(x186 - x196) + sqr(x286 - x296)) + 1/
     sqrt(sqr(x86 - x97) + sqr(x186 - x197) + sqr(x286 - x297)) + 1/sqrt(sqr(
     x86 - x98) + sqr(x186 - x198) + sqr(x286 - x298)) + 1/sqrt(sqr(x86 - x99)
      + sqr(x186 - x199) + sqr(x286 - x299)) + 1/sqrt(sqr(x86 - x100) + sqr(
     x186 - x200) + sqr(x286 - x300)) + 1/sqrt(sqr(x87 - x88) + sqr(x187 - x188
     ) + sqr(x287 - x288)) + 1/sqrt(sqr(x87 - x89) + sqr(x187 - x189) + sqr(
     x287 - x289)) + 1/sqrt(sqr(x87 - x90) + sqr(x187 - x190) + sqr(x287 - x290
     )) + 1/sqrt(sqr(x87 - x91) + sqr(x187 - x191) + sqr(x287 - x291)) + 1/
     sqrt(sqr(x87 - x92) + sqr(x187 - x192) + sqr(x287 - x292)) + 1/sqrt(sqr(
     x87 - x93) + sqr(x187 - x193) + sqr(x287 - x293)) + 1/sqrt(sqr(x87 - x94)
      + sqr(x187 - x194) + sqr(x287 - x294)) + 1/sqrt(sqr(x87 - x95) + sqr(x187
      - x195) + sqr(x287 - x295)) + 1/sqrt(sqr(x87 - x96) + sqr(x187 - x196) + 
     sqr(x287 - x296)) + 1/sqrt(sqr(x87 - x97) + sqr(x187 - x197) + sqr(x287 - 
     x297)) + 1/sqrt(sqr(x87 - x98) + sqr(x187 - x198) + sqr(x287 - x298)) + 1/
     sqrt(sqr(x87 - x99) + sqr(x187 - x199) + sqr(x287 - x299)) + 1/sqrt(sqr(
     x87 - x100) + sqr(x187 - x200) + sqr(x287 - x300)) + 1/sqrt(sqr(x88 - x89)
      + sqr(x188 - x189) + sqr(x288 - x289)) + 1/sqrt(sqr(x88 - x90) + sqr(x188
      - x190) + sqr(x288 - x290)) + 1/sqrt(sqr(x88 - x91) + sqr(x188 - x191) + 
     sqr(x288 - x291)) + 1/sqrt(sqr(x88 - x92) + sqr(x188 - x192) + sqr(x288 - 
     x292)) + 1/sqrt(sqr(x88 - x93) + sqr(x188 - x193) + sqr(x288 - x293)) + 1/
     sqrt(sqr(x88 - x94) + sqr(x188 - x194) + sqr(x288 - x294)) + 1/sqrt(sqr(
     x88 - x95) + sqr(x188 - x195) + sqr(x288 - x295)) + 1/sqrt(sqr(x88 - x96)
      + sqr(x188 - x196) + sqr(x288 - x296)) + 1/sqrt(sqr(x88 - x97) + sqr(x188
      - x197) + sqr(x288 - x297)) + 1/sqrt(sqr(x88 - x98) + sqr(x188 - x198) + 
     sqr(x288 - x298)) + 1/sqrt(sqr(x88 - x99) + sqr(x188 - x199) + sqr(x288 - 
     x299)) + 1/sqrt(sqr(x88 - x100) + sqr(x188 - x200) + sqr(x288 - x300)) + 1
     /sqrt(sqr(x89 - x90) + sqr(x189 - x190) + sqr(x289 - x290)) + 1/sqrt(sqr(
     x89 - x91) + sqr(x189 - x191) + sqr(x289 - x291)) + 1/sqrt(sqr(x89 - x92)
      + sqr(x189 - x192) + sqr(x289 - x292)) + 1/sqrt(sqr(x89 - x93) + sqr(x189
      - x193) + sqr(x289 - x293)) + 1/sqrt(sqr(x89 - x94) + sqr(x189 - x194) + 
     sqr(x289 - x294)) + 1/sqrt(sqr(x89 - x95) + sqr(x189 - x195) + sqr(x289 - 
     x295)) + 1/sqrt(sqr(x89 - x96) + sqr(x189 - x196) + sqr(x289 - x296)) + 1/
     sqrt(sqr(x89 - x97) + sqr(x189 - x197) + sqr(x289 - x297)) + 1/sqrt(sqr(
     x89 - x98) + sqr(x189 - x198) + sqr(x289 - x298)) + 1/sqrt(sqr(x89 - x99)
      + sqr(x189 - x199) + sqr(x289 - x299)) + 1/sqrt(sqr(x89 - x100) + sqr(
     x189 - x200) + sqr(x289 - x300)) + 1/sqrt(sqr(x90 - x91) + sqr(x190 - x191
     ) + sqr(x290 - x291)) + 1/sqrt(sqr(x90 - x92) + sqr(x190 - x192) + sqr(
     x290 - x292)) + 1/sqrt(sqr(x90 - x93) + sqr(x190 - x193) + sqr(x290 - x293
     )) + 1/sqrt(sqr(x90 - x94) + sqr(x190 - x194) + sqr(x290 - x294)) + 1/
     sqrt(sqr(x90 - x95) + sqr(x190 - x195) + sqr(x290 - x295)) + 1/sqrt(sqr(
     x90 - x96) + sqr(x190 - x196) + sqr(x290 - x296)) + 1/sqrt(sqr(x90 - x97)
      + sqr(x190 - x197) + sqr(x290 - x297)) + 1/sqrt(sqr(x90 - x98) + sqr(x190
      - x198) + sqr(x290 - x298)) + 1/sqrt(sqr(x90 - x99) + sqr(x190 - x199) + 
     sqr(x290 - x299)) + 1/sqrt(sqr(x90 - x100) + sqr(x190 - x200) + sqr(x290
      - x300)) + 1/sqrt(sqr(x91 - x92) + sqr(x191 - x192) + sqr(x291 - x292))
      + 1/sqrt(sqr(x91 - x93) + sqr(x191 - x193) + sqr(x291 - x293)) + 1/sqrt(
     sqr(x91 - x94) + sqr(x191 - x194) + sqr(x291 - x294)) + 1/sqrt(sqr(x91 - 
     x95) + sqr(x191 - x195) + sqr(x291 - x295)) + 1/sqrt(sqr(x91 - x96) + sqr(
     x191 - x196) + sqr(x291 - x296)) + 1/sqrt(sqr(x91 - x97) + sqr(x191 - x197
     ) + sqr(x291 - x297)) + 1/sqrt(sqr(x91 - x98) + sqr(x191 - x198) + sqr(
     x291 - x298)) + 1/sqrt(sqr(x91 - x99) + sqr(x191 - x199) + sqr(x291 - x299
     )) + 1/sqrt(sqr(x91 - x100) + sqr(x191 - x200) + sqr(x291 - x300)) + 1/
     sqrt(sqr(x92 - x93) + sqr(x192 - x193) + sqr(x292 - x293)) + 1/sqrt(sqr(
     x92 - x94) + sqr(x192 - x194) + sqr(x292 - x294)) + 1/sqrt(sqr(x92 - x95)
      + sqr(x192 - x195) + sqr(x292 - x295)) + 1/sqrt(sqr(x92 - x96) + sqr(x192
      - x196) + sqr(x292 - x296)) + 1/sqrt(sqr(x92 - x97) + sqr(x192 - x197) + 
     sqr(x292 - x297)) + 1/sqrt(sqr(x92 - x98) + sqr(x192 - x198) + sqr(x292 - 
     x298)) + 1/sqrt(sqr(x92 - x99) + sqr(x192 - x199) + sqr(x292 - x299)) + 1/
     sqrt(sqr(x92 - x100) + sqr(x192 - x200) + sqr(x292 - x300)) + 1/sqrt(sqr(
     x93 - x94) + sqr(x193 - x194) + sqr(x293 - x294)) + 1/sqrt(sqr(x93 - x95)
      + sqr(x193 - x195) + sqr(x293 - x295)) + 1/sqrt(sqr(x93 - x96) + sqr(x193
      - x196) + sqr(x293 - x296)) + 1/sqrt(sqr(x93 - x97) + sqr(x193 - x197) + 
     sqr(x293 - x297)) + 1/sqrt(sqr(x93 - x98) + sqr(x193 - x198) + sqr(x293 - 
     x298)) + 1/sqrt(sqr(x93 - x99) + sqr(x193 - x199) + sqr(x293 - x299)) + 1/
     sqrt(sqr(x93 - x100) + sqr(x193 - x200) + sqr(x293 - x300)) + 1/sqrt(sqr(
     x94 - x95) + sqr(x194 - x195) + sqr(x294 - x295)) + 1/sqrt(sqr(x94 - x96)
      + sqr(x194 - x196) + sqr(x294 - x296)) + 1/sqrt(sqr(x94 - x97) + sqr(x194
      - x197) + sqr(x294 - x297)) + 1/sqrt(sqr(x94 - x98) + sqr(x194 - x198) + 
     sqr(x294 - x298)) + 1/sqrt(sqr(x94 - x99) + sqr(x194 - x199) + sqr(x294 - 
     x299)) + 1/sqrt(sqr(x94 - x100) + sqr(x194 - x200) + sqr(x294 - x300)) + 1
     /sqrt(sqr(x95 - x96) + sqr(x195 - x196) + sqr(x295 - x296)) + 1/sqrt(sqr(
     x95 - x97) + sqr(x195 - x197) + sqr(x295 - x297)) + 1/sqrt(sqr(x95 - x98)
      + sqr(x195 - x198) + sqr(x295 - x298)) + 1/sqrt(sqr(x95 - x99) + sqr(x195
      - x199) + sqr(x295 - x299)) + 1/sqrt(sqr(x95 - x100) + sqr(x195 - x200)
      + sqr(x295 - x300)) + 1/sqrt(sqr(x96 - x97) + sqr(x196 - x197) + sqr(x296
      - x297)) + 1/sqrt(sqr(x96 - x98) + sqr(x196 - x198) + sqr(x296 - x298))
      + 1/sqrt(sqr(x96 - x99) + sqr(x196 - x199) + sqr(x296 - x299)) + 1/sqrt(
     sqr(x96 - x100) + sqr(x196 - x200) + sqr(x296 - x300)) + 1/sqrt(sqr(x97 - 
     x98) + sqr(x197 - x198) + sqr(x297 - x298)) + 1/sqrt(sqr(x97 - x99) + sqr(
     x197 - x199) + sqr(x297 - x299)) + 1/sqrt(sqr(x97 - x100) + sqr(x197 - 
     x200) + sqr(x297 - x300)) + 1/sqrt(sqr(x98 - x99) + sqr(x198 - x199) + 
     sqr(x298 - x299)) + 1/sqrt(sqr(x98 - x100) + sqr(x198 - x200) + sqr(x298
      - x300)) + 1/sqrt(sqr(x99 - x100) + sqr(x199 - x200) + sqr(x299 - x300)))
      + objvar =E= 0;

e2.. sqr(x1) + sqr(x101) + sqr(x201) =E= 1;

e3.. sqr(x2) + sqr(x102) + sqr(x202) =E= 1;

e4.. sqr(x3) + sqr(x103) + sqr(x203) =E= 1;

e5.. sqr(x4) + sqr(x104) + sqr(x204) =E= 1;

e6.. sqr(x5) + sqr(x105) + sqr(x205) =E= 1;

e7.. sqr(x6) + sqr(x106) + sqr(x206) =E= 1;

e8.. sqr(x7) + sqr(x107) + sqr(x207) =E= 1;

e9.. sqr(x8) + sqr(x108) + sqr(x208) =E= 1;

e10.. sqr(x9) + sqr(x109) + sqr(x209) =E= 1;

e11.. sqr(x10) + sqr(x110) + sqr(x210) =E= 1;

e12.. sqr(x11) + sqr(x111) + sqr(x211) =E= 1;

e13.. sqr(x12) + sqr(x112) + sqr(x212) =E= 1;

e14.. sqr(x13) + sqr(x113) + sqr(x213) =E= 1;

e15.. sqr(x14) + sqr(x114) + sqr(x214) =E= 1;

e16.. sqr(x15) + sqr(x115) + sqr(x215) =E= 1;

e17.. sqr(x16) + sqr(x116) + sqr(x216) =E= 1;

e18.. sqr(x17) + sqr(x117) + sqr(x217) =E= 1;

e19.. sqr(x18) + sqr(x118) + sqr(x218) =E= 1;

e20.. sqr(x19) + sqr(x119) + sqr(x219) =E= 1;

e21.. sqr(x20) + sqr(x120) + sqr(x220) =E= 1;

e22.. sqr(x21) + sqr(x121) + sqr(x221) =E= 1;

e23.. sqr(x22) + sqr(x122) + sqr(x222) =E= 1;

e24.. sqr(x23) + sqr(x123) + sqr(x223) =E= 1;

e25.. sqr(x24) + sqr(x124) + sqr(x224) =E= 1;

e26.. sqr(x25) + sqr(x125) + sqr(x225) =E= 1;

e27.. sqr(x26) + sqr(x126) + sqr(x226) =E= 1;

e28.. sqr(x27) + sqr(x127) + sqr(x227) =E= 1;

e29.. sqr(x28) + sqr(x128) + sqr(x228) =E= 1;

e30.. sqr(x29) + sqr(x129) + sqr(x229) =E= 1;

e31.. sqr(x30) + sqr(x130) + sqr(x230) =E= 1;

e32.. sqr(x31) + sqr(x131) + sqr(x231) =E= 1;

e33.. sqr(x32) + sqr(x132) + sqr(x232) =E= 1;

e34.. sqr(x33) + sqr(x133) + sqr(x233) =E= 1;

e35.. sqr(x34) + sqr(x134) + sqr(x234) =E= 1;

e36.. sqr(x35) + sqr(x135) + sqr(x235) =E= 1;

e37.. sqr(x36) + sqr(x136) + sqr(x236) =E= 1;

e38.. sqr(x37) + sqr(x137) + sqr(x237) =E= 1;

e39.. sqr(x38) + sqr(x138) + sqr(x238) =E= 1;

e40.. sqr(x39) + sqr(x139) + sqr(x239) =E= 1;

e41.. sqr(x40) + sqr(x140) + sqr(x240) =E= 1;

e42.. sqr(x41) + sqr(x141) + sqr(x241) =E= 1;

e43.. sqr(x42) + sqr(x142) + sqr(x242) =E= 1;

e44.. sqr(x43) + sqr(x143) + sqr(x243) =E= 1;

e45.. sqr(x44) + sqr(x144) + sqr(x244) =E= 1;

e46.. sqr(x45) + sqr(x145) + sqr(x245) =E= 1;

e47.. sqr(x46) + sqr(x146) + sqr(x246) =E= 1;

e48.. sqr(x47) + sqr(x147) + sqr(x247) =E= 1;

e49.. sqr(x48) + sqr(x148) + sqr(x248) =E= 1;

e50.. sqr(x49) + sqr(x149) + sqr(x249) =E= 1;

e51.. sqr(x50) + sqr(x150) + sqr(x250) =E= 1;

e52.. sqr(x51) + sqr(x151) + sqr(x251) =E= 1;

e53.. sqr(x52) + sqr(x152) + sqr(x252) =E= 1;

e54.. sqr(x53) + sqr(x153) + sqr(x253) =E= 1;

e55.. sqr(x54) + sqr(x154) + sqr(x254) =E= 1;

e56.. sqr(x55) + sqr(x155) + sqr(x255) =E= 1;

e57.. sqr(x56) + sqr(x156) + sqr(x256) =E= 1;

e58.. sqr(x57) + sqr(x157) + sqr(x257) =E= 1;

e59.. sqr(x58) + sqr(x158) + sqr(x258) =E= 1;

e60.. sqr(x59) + sqr(x159) + sqr(x259) =E= 1;

e61.. sqr(x60) + sqr(x160) + sqr(x260) =E= 1;

e62.. sqr(x61) + sqr(x161) + sqr(x261) =E= 1;

e63.. sqr(x62) + sqr(x162) + sqr(x262) =E= 1;

e64.. sqr(x63) + sqr(x163) + sqr(x263) =E= 1;

e65.. sqr(x64) + sqr(x164) + sqr(x264) =E= 1;

e66.. sqr(x65) + sqr(x165) + sqr(x265) =E= 1;

e67.. sqr(x66) + sqr(x166) + sqr(x266) =E= 1;

e68.. sqr(x67) + sqr(x167) + sqr(x267) =E= 1;

e69.. sqr(x68) + sqr(x168) + sqr(x268) =E= 1;

e70.. sqr(x69) + sqr(x169) + sqr(x269) =E= 1;

e71.. sqr(x70) + sqr(x170) + sqr(x270) =E= 1;

e72.. sqr(x71) + sqr(x171) + sqr(x271) =E= 1;

e73.. sqr(x72) + sqr(x172) + sqr(x272) =E= 1;

e74.. sqr(x73) + sqr(x173) + sqr(x273) =E= 1;

e75.. sqr(x74) + sqr(x174) + sqr(x274) =E= 1;

e76.. sqr(x75) + sqr(x175) + sqr(x275) =E= 1;

e77.. sqr(x76) + sqr(x176) + sqr(x276) =E= 1;

e78.. sqr(x77) + sqr(x177) + sqr(x277) =E= 1;

e79.. sqr(x78) + sqr(x178) + sqr(x278) =E= 1;

e80.. sqr(x79) + sqr(x179) + sqr(x279) =E= 1;

e81.. sqr(x80) + sqr(x180) + sqr(x280) =E= 1;

e82.. sqr(x81) + sqr(x181) + sqr(x281) =E= 1;

e83.. sqr(x82) + sqr(x182) + sqr(x282) =E= 1;

e84.. sqr(x83) + sqr(x183) + sqr(x283) =E= 1;

e85.. sqr(x84) + sqr(x184) + sqr(x284) =E= 1;

e86.. sqr(x85) + sqr(x185) + sqr(x285) =E= 1;

e87.. sqr(x86) + sqr(x186) + sqr(x286) =E= 1;

e88.. sqr(x87) + sqr(x187) + sqr(x287) =E= 1;

e89.. sqr(x88) + sqr(x188) + sqr(x288) =E= 1;

e90.. sqr(x89) + sqr(x189) + sqr(x289) =E= 1;

e91.. sqr(x90) + sqr(x190) + sqr(x290) =E= 1;

e92.. sqr(x91) + sqr(x191) + sqr(x291) =E= 1;

e93.. sqr(x92) + sqr(x192) + sqr(x292) =E= 1;

e94.. sqr(x93) + sqr(x193) + sqr(x293) =E= 1;

e95.. sqr(x94) + sqr(x194) + sqr(x294) =E= 1;

e96.. sqr(x95) + sqr(x195) + sqr(x295) =E= 1;

e97.. sqr(x96) + sqr(x196) + sqr(x296) =E= 1;

e98.. sqr(x97) + sqr(x197) + sqr(x297) =E= 1;

e99.. sqr(x98) + sqr(x198) + sqr(x298) =E= 1;

e100.. sqr(x99) + sqr(x199) + sqr(x299) =E= 1;

e101.. sqr(x100) + sqr(x200) + sqr(x300) =E= 1;

* set non default bounds


* set non default levels

x1.l = 0.0759140641625179; 
x2.l = 0.0104385305972472; 
x3.l = -0.904938768390451; 
x4.l = -0.315192973992159; 
x5.l = -0.240934796116591; 
x6.l = 0.105701991387514; 
x7.l = -0.555945903443464; 
x8.l = 0.472107806075579; 
x9.l = 0.420268646079822; 
x10.l = -0.198715916070701; 
x11.l = 0.970560086987761; 
x12.l = -0.361329975963445; 
x13.l = 0.93515791351861; 
x14.l = 0.0710086150481024; 
x15.l = 0.508946309598417; 
x16.l = -0.103156389556193; 
x17.l = 0.30113156862238; 
x18.l = -0.000407026097831631; 
x19.l = -0.113171383752258; 
x20.l = -0.874872904025307; 
x21.l = -0.199733074036207; 
x22.l = -0.555934180259995; 
x23.l = 0.576811441855282; 
x24.l = 0.333342891885449; 
x25.l = -0.292936013151405; 
x26.l = 0.464441990250285; 
x27.l = 0.120168819756208; 
x28.l = -0.0712678949072569; 
x29.l = 0.101886624124867; 
x30.l = -0.0561059617345528; 
x31.l = 0.733517086127594; 
x32.l = -0.943571297903555; 
x33.l = 0.485781496544883; 
x34.l = 0.665582197621628; 
x35.l = -0.0800865125520374; 
x36.l = -0.223085888341227; 
x37.l = -0.398509404751853; 
x38.l = -0.150269423256043; 
x39.l = -0.690579132094653; 
x40.l = -0.371118758212519; 
x41.l = -0.0356702253042783; 
x42.l = 0.485303876646472; 
x43.l = -0.334324319886788; 
x44.l = 0.617789454938002; 
x45.l = -0.111231228318284; 
x46.l = 0.244532994334527; 
x47.l = -0.489684393163415; 
x48.l = -0.53892921200627; 
x49.l = 0.0874339476766216; 
x50.l = -0.265098731510511; 
x51.l = -0.391994567521353; 
x52.l = 0.00969835922503502; 
x53.l = -0.316722714638543; 
x54.l = -0.206675728622541; 
x55.l = 0.474394256074147; 
x56.l = 0.65753175501824; 
x57.l = -0.427868457330811; 
x58.l = -0.448578680871589; 
x59.l = 0.921833307090655; 
x60.l = 0.214993252905991; 
x61.l = 0.417843732360289; 
x62.l = 0.422345958322715; 
x63.l = -0.0744389537251622; 
x64.l = 0.000110094474593814; 
x65.l = 0.242401573784182; 
x66.l = 0.264092739235554; 
x67.l = -0.853401901822611; 
x68.l = -0.280842326782305; 
x69.l = -0.569623221593292; 
x70.l = -0.219822722021365; 
x71.l = 0.0437215430013408; 
x72.l = 0.0134648571273171; 
x73.l = 0.682027801813548; 
x74.l = 0.908767974437634; 
x75.l = -0.0243177773836207; 
x76.l = 0.206348807117791; 
x77.l = -0.305584332655679; 
x78.l = 0.054585202224532; 
x79.l = -0.00386242966787484; 
x80.l = 0.445679512886492; 
x81.l = 0.0229582965139545; 
x82.l = 0.52977012935084; 
x83.l = -0.0235330036731071; 
x84.l = -0.0522645015043014; 
x85.l = 0.2869360709423; 
x86.l = 0.435442244840519; 
x87.l = -0.0411374559223998; 
x88.l = -0.235811577820418; 
x89.l = -0.0674915716744184; 
x90.l = 0.84729667385326; 
x91.l = 0.955699038519421; 
x92.l = -0.497498247552517; 
x93.l = -0.630672603739648; 
x94.l = 0.0645082377794522; 
x95.l = -0.790320094508276; 
x96.l = 0.807062226072817; 
x97.l = 0.419334539361219; 
x98.l = -0.0903578309338201; 
x99.l = 0.885135348423329; 
x100.l = -0.872671851013326; 
x101.l = 0.141751169078374; 
x102.l = -0.0157255295855361; 
x103.l = -0.296393796831228; 
x104.l = 0.94697274708007; 
x105.l = 0.887009956359383; 
x106.l = 0.642602154956149; 
x107.l = 0.766910105330104; 
x108.l = -0.598708448780157; 
x109.l = 0.188531950742667; 
x110.l = -0.000263034920305364; 
x111.l = -0.0114796390222423; 
x112.l = -0.194914355410612; 
x113.l = -0.0521541993752358; 
x114.l = -0.920703207114064; 
x115.l = 0.546720370292597; 
x116.l = -0.124246970568879; 
x117.l = 0.471345219878857; 
x118.l = 0.804393353141668; 
x119.l = -0.202615070141796; 
x120.l = 0.376267686166261; 
x121.l = 0.242363708159109; 
x122.l = 0.750784054867855; 
x123.l = 0.625894467617121; 
x124.l = 0.459424737550021; 
x125.l = -0.183622463612684; 
x126.l = -0.833704217611716; 
x127.l = 0.99210197308674; 
x128.l = -0.121786636497007; 
x129.l = -0.621590091170154; 
x130.l = 0.160060753896124; 
x131.l = 0.610649581441146; 
x132.l = -0.014140054357154; 
x133.l = 0.76730892497227; 
x134.l = -0.687153078859633; 
x135.l = 0.840767804746787; 
x136.l = 0.97457908179857; 
x137.l = -0.267021927395446; 
x138.l = -0.868058001147143; 
x139.l = -0.719362922858756; 
x140.l = 0.0859031091371188; 
x141.l = 0.0216107255420895; 
x142.l = 0.442682679605842; 
x143.l = 0.783190520452667; 
x144.l = 0.186034008545698; 
x145.l = 0.178852800151373; 
x146.l = 0.537967808544408; 
x147.l = -0.637288128041146; 
x148.l = -0.21630293124995; 
x149.l = -0.693452265730543; 
x150.l = 0.855860934629189; 
x151.l = -0.627279904194212; 
x152.l = -0.26501884689065; 
x153.l = -0.32661682781697; 
x154.l = 0.956631587590244; 
x155.l = 0.286318207476243; 
x156.l = 0.493783580445396; 
x157.l = -0.525562048399146; 
x158.l = -0.131270640114704; 
x159.l = 0.185019559715658; 
x160.l = -0.788595280478127; 
x161.l = 0.205569453465492; 
x162.l = 0.837481766744152; 
x163.l = -0.012093468862852; 
x164.l = -0.0843749904635074; 
x165.l = 0.499750902854646; 
x166.l = 0.057536891899047; 
x167.l = -0.505650303140241; 
x168.l = -0.26784280158438; 
x169.l = 0.475092901891882; 
x170.l = 0.270134272396608; 
x171.l = 0.998373879863709; 
x172.l = 0.598759476910532; 
x173.l = 0.730899421503749; 
x174.l = -0.403813531249506; 
x175.l = 0.0228537735176156; 
x176.l = -0.968785419007647; 
x177.l = 0.939803501910217; 
x178.l = 0.0549176729597715; 
x179.l = -0.545978549901445; 
x180.l = 0.207101533212971; 
x181.l = 0.0738267703024814; 
x182.l = 0.0168681342241776; 
x183.l = 0.189996700230853; 
x184.l = 4.87737747163262E-5; 
x185.l = 0.401719254748565; 
x186.l = 0.843690160621888; 
x187.l = 0.0741236473465487; 
x188.l = 0.527504718264207; 
x189.l = 0.138677245494364; 
x190.l = -0.195121845069233; 
x191.l = -0.0384384046628331; 
x192.l = 0.530428925306202; 
x193.l = 0.647632261927561; 
x194.l = -0.464159896230423; 
x195.l = 0.599748839467125; 
x196.l = -0.490418404115164; 
x197.l = 0.391692848671465; 
x198.l = -0.987594445913028; 
x199.l = 0.321299826796459; 
x200.l = -0.453663563130607; 
x201.l = 0.986987163506823; 
x202.l = 0.999821856531565; 
x203.l = 0.305346594321832; 
x204.l = -0.0624179896632703; 
x205.l = -0.393908315905597; 
x206.l = 0.758873875859769; 
x207.l = 0.320582349462662; 
x208.l = 0.647041275964494; 
x209.l = 0.887597864278299; 
x210.l = -0.980057098088072; 
x211.l = 0.240585401540137; 
x212.l = 0.91183827651899; 
x213.l = 0.350370684091932; 
x214.l = 0.383749112049562; 
x215.l = 0.664883817409687; 
x216.l = -0.98687458656011; 
x217.l = 0.828947201018482; 
x218.l = 0.5940969346422; 
x219.l = 0.972696957562341; 
x220.l = 0.304991852595136; 
x221.l = 0.949403250522881; 
x222.l = 0.356735882936983; 
x223.l = 0.524923495331569; 
x224.l = 0.823293038326294; 
x225.l = 0.938334313054664; 
x226.l = -0.298715441898791; 
x227.l = -0.0359601134007982; 
x228.l = 0.989994395098393; 
x229.l = -0.776688402374799; 
x230.l = -0.985511377975945; 
x231.l = -0.298428840839214; 
x232.l = -0.330867442694772; 
x233.l = 0.418632716438302; 
x234.l = -0.291240423744526; 
x235.l = -0.535439678216437; 
x236.l = -0.0206954039260544; 
x237.l = 0.877433498684855; 
x238.l = -0.473174816615088; 
x239.l = -0.0749496332979922; 
x240.l = 0.924603441018567; 
x241.l = -0.999129927270866; 
x242.l = 0.753997475121036; 
x243.l = -0.524251712257879; 
x244.l = -0.764020639139955; 
x245.l = -0.977568048641535; 
x246.l = 0.806718198413621; 
x247.l = 0.595040365815622; 
x248.l = 0.814105856986044; 
x249.l = 0.715177782056223; 
x250.l = -0.444099902192253; 
x251.l = -0.672948869400824; 
x252.l = 0.964194457887564; 
x253.l = 0.890510061604456; 
x254.l = 0.205283094342692; 
x255.l = 0.832449382167737; 
x256.l = -0.569060424581746; 
x257.l = -0.735331977071476; 
x258.l = 0.884050443193928; 
x259.l = 0.340574685584426; 
x260.l = -0.57610362332876; 
x261.l = -0.884956391653918; 
x262.l = -0.346768196147747; 
x263.l = -0.997152240221706; 
x264.l = 0.996434066490849; 
x265.l = 0.831559085166483; 
x266.l = 0.962779585966414; 
x267.l = -0.126581850593724; 
x268.l = 0.921622385322173; 
x269.l = -0.670683323181388; 
x270.l = 0.937392898287518; 
x271.l = 0.0365789923790462; 
x272.l = -0.800815700665494; 
x273.l = 0.0249822576815119; 
x274.l = -0.105239729267634; 
x275.l = 0.999443020256346; 
x276.l = -0.137386250109834; 
x277.l = 0.15293002789732; 
x278.l = -0.9969977456819; 
x279.l = 0.837790251008315; 
x280.l = 0.870906841593345; 
x281.l = 0.997006782628825; 
x282.l = 0.847973511434991; 
x283.l = 0.981502649838251; 
x284.l = 0.998633275784272; 
x285.l = -0.869648970307246; 
x286.l = -0.313969686877671; 
x287.l = 0.996400218097265; 
x288.l = 0.816168899171516; 
x289.l = -0.988035176162778; 
x290.l = 0.493979566433653; 
x291.l = -0.29182501061429; 
x292.l = 0.686396859608698; 
x293.l = -0.427579840734855; 
x294.l = 0.883399274388401; 
x295.l = 0.125281593916531; 
x296.l = 0.328847004169911; 
x297.l = -0.818984283364673; 
x298.l = -0.128423801495959; 
x299.l = 0.336603381254672; 
x300.l = -0.180646649392169; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
