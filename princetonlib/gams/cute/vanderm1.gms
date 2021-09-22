*  NLP written by GAMS Convert at 10/06/06 11:53:53
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        200        2       99       99        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        102      102        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*      10299      399     9900        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,objvar,x102;

Negative Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100;

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
          ,e195,e196,e197,e198,e199,e200;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25
      + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
      + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
      + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + x61
      + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72 + x73
      + x74 + x75 + x76 + x77 + x78 + x79 + x80 + x81 + x82 + x83 + x84 + x85
      + x86 + x87 + x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96 + x97
      + x98 + x99 + x100 =E= 50.5;

e2.. sqr((-33.835) + sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6)
      + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13)
      + sqr(x14) + sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(
     x20) + sqr(x21) + sqr(x22) + sqr(x23) + sqr(x24) + sqr(x25) + sqr(x26) + 
     sqr(x27) + sqr(x28) + sqr(x29) + sqr(x30) + sqr(x31) + sqr(x32) + sqr(x33)
      + sqr(x34) + sqr(x35) + sqr(x36) + sqr(x37) + sqr(x38) + sqr(x39) + sqr(
     x40) + sqr(x41) + sqr(x42) + sqr(x43) + sqr(x44) + sqr(x45) + sqr(x46) + 
     sqr(x47) + sqr(x48) + sqr(x49) + sqr(x50) + sqr(x51) + sqr(x52) + sqr(x53)
      + sqr(x54) + sqr(x55) + sqr(x56) + sqr(x57) + sqr(x58) + sqr(x59) + sqr(
     x60) + sqr(x61) + sqr(x62) + sqr(x63) + sqr(x64) + sqr(x65) + sqr(x66) + 
     sqr(x67) + sqr(x68) + sqr(x69) + sqr(x70) + sqr(x71) + sqr(x72) + sqr(x73)
      + sqr(x74) + sqr(x75) + sqr(x76) + sqr(x77) + sqr(x78) + sqr(x79) + sqr(
     x80) + sqr(x81) + sqr(x82) + sqr(x83) + sqr(x84) + sqr(x85) + sqr(x86) + 
     sqr(x87) + sqr(x88) + sqr(x89) + sqr(x90) + sqr(x91) + sqr(x92) + sqr(x93)
      + sqr(x94) + sqr(x95) + sqr(x96) + sqr(x97) + sqr(x98) + sqr(x99) + sqr(
     x100)) - x102 =L= 0;

e3.. sqr((-25.5025) + POWER(x1,3) + POWER(x2,3) + POWER(x3,3) + POWER(x4,3) + 
     POWER(x5,3) + POWER(x6,3) + POWER(x7,3) + POWER(x8,3) + POWER(x9,3) + 
     POWER(x10,3) + POWER(x11,3) + POWER(x12,3) + POWER(x13,3) + POWER(x14,3)
      + POWER(x15,3) + POWER(x16,3) + POWER(x17,3) + POWER(x18,3) + POWER(x19,3
     ) + POWER(x20,3) + POWER(x21,3) + POWER(x22,3) + POWER(x23,3) + POWER(x24,
     3) + POWER(x25,3) + POWER(x26,3) + POWER(x27,3) + POWER(x28,3) + POWER(x29
     ,3) + POWER(x30,3) + POWER(x31,3) + POWER(x32,3) + POWER(x33,3) + POWER(
     x34,3) + POWER(x35,3) + POWER(x36,3) + POWER(x37,3) + POWER(x38,3) + 
     POWER(x39,3) + POWER(x40,3) + POWER(x41,3) + POWER(x42,3) + POWER(x43,3)
      + POWER(x44,3) + POWER(x45,3) + POWER(x46,3) + POWER(x47,3) + POWER(x48,3
     ) + POWER(x49,3) + POWER(x50,3) + POWER(x51,3) + POWER(x52,3) + POWER(x53,
     3) + POWER(x54,3) + POWER(x55,3) + POWER(x56,3) + POWER(x57,3) + POWER(x58
     ,3) + POWER(x59,3) + POWER(x60,3) + POWER(x61,3) + POWER(x62,3) + POWER(
     x63,3) + POWER(x64,3) + POWER(x65,3) + POWER(x66,3) + POWER(x67,3) + 
     POWER(x68,3) + POWER(x69,3) + POWER(x70,3) + POWER(x71,3) + POWER(x72,3)
      + POWER(x73,3) + POWER(x74,3) + POWER(x75,3) + POWER(x76,3) + POWER(x77,3
     ) + POWER(x78,3) + POWER(x79,3) + POWER(x80,3) + POWER(x81,3) + POWER(x82,
     3) + POWER(x83,3) + POWER(x84,3) + POWER(x85,3) + POWER(x86,3) + POWER(x87
     ,3) + POWER(x88,3) + POWER(x89,3) + POWER(x90,3) + POWER(x91,3) + POWER(
     x92,3) + POWER(x93,3) + POWER(x94,3) + POWER(x95,3) + POWER(x96,3) + 
     POWER(x97,3) + POWER(x98,3) + POWER(x99,3) + POWER(x100,3)) - x102 =L= 0;

e4.. sqr((-20.5033333) + POWER(x1,4) + POWER(x2,4) + POWER(x3,4) + POWER(x4,4)
      + POWER(x5,4) + POWER(x6,4) + POWER(x7,4) + POWER(x8,4) + POWER(x9,4) + 
     POWER(x10,4) + POWER(x11,4) + POWER(x12,4) + POWER(x13,4) + POWER(x14,4)
      + POWER(x15,4) + POWER(x16,4) + POWER(x17,4) + POWER(x18,4) + POWER(x19,4
     ) + POWER(x20,4) + POWER(x21,4) + POWER(x22,4) + POWER(x23,4) + POWER(x24,
     4) + POWER(x25,4) + POWER(x26,4) + POWER(x27,4) + POWER(x28,4) + POWER(x29
     ,4) + POWER(x30,4) + POWER(x31,4) + POWER(x32,4) + POWER(x33,4) + POWER(
     x34,4) + POWER(x35,4) + POWER(x36,4) + POWER(x37,4) + POWER(x38,4) + 
     POWER(x39,4) + POWER(x40,4) + POWER(x41,4) + POWER(x42,4) + POWER(x43,4)
      + POWER(x44,4) + POWER(x45,4) + POWER(x46,4) + POWER(x47,4) + POWER(x48,4
     ) + POWER(x49,4) + POWER(x50,4) + POWER(x51,4) + POWER(x52,4) + POWER(x53,
     4) + POWER(x54,4) + POWER(x55,4) + POWER(x56,4) + POWER(x57,4) + POWER(x58
     ,4) + POWER(x59,4) + POWER(x60,4) + POWER(x61,4) + POWER(x62,4) + POWER(
     x63,4) + POWER(x64,4) + POWER(x65,4) + POWER(x66,4) + POWER(x67,4) + 
     POWER(x68,4) + POWER(x69,4) + POWER(x70,4) + POWER(x71,4) + POWER(x72,4)
      + POWER(x73,4) + POWER(x74,4) + POWER(x75,4) + POWER(x76,4) + POWER(x77,4
     ) + POWER(x78,4) + POWER(x79,4) + POWER(x80,4) + POWER(x81,4) + POWER(x82,
     4) + POWER(x83,4) + POWER(x84,4) + POWER(x85,4) + POWER(x86,4) + POWER(x87
     ,4) + POWER(x88,4) + POWER(x89,4) + POWER(x90,4) + POWER(x91,4) + POWER(
     x92,4) + POWER(x93,4) + POWER(x94,4) + POWER(x95,4) + POWER(x96,4) + 
     POWER(x97,4) + POWER(x98,4) + POWER(x99,4) + POWER(x100,4)) - x102 =L= 0;

e5.. sqr((-17.17083325) + POWER(x1,5) + POWER(x2,5) + POWER(x3,5) + POWER(x4,5)
      + POWER(x5,5) + POWER(x6,5) + POWER(x7,5) + POWER(x8,5) + POWER(x9,5) + 
     POWER(x10,5) + POWER(x11,5) + POWER(x12,5) + POWER(x13,5) + POWER(x14,5)
      + POWER(x15,5) + POWER(x16,5) + POWER(x17,5) + POWER(x18,5) + POWER(x19,5
     ) + POWER(x20,5) + POWER(x21,5) + POWER(x22,5) + POWER(x23,5) + POWER(x24,
     5) + POWER(x25,5) + POWER(x26,5) + POWER(x27,5) + POWER(x28,5) + POWER(x29
     ,5) + POWER(x30,5) + POWER(x31,5) + POWER(x32,5) + POWER(x33,5) + POWER(
     x34,5) + POWER(x35,5) + POWER(x36,5) + POWER(x37,5) + POWER(x38,5) + 
     POWER(x39,5) + POWER(x40,5) + POWER(x41,5) + POWER(x42,5) + POWER(x43,5)
      + POWER(x44,5) + POWER(x45,5) + POWER(x46,5) + POWER(x47,5) + POWER(x48,5
     ) + POWER(x49,5) + POWER(x50,5) + POWER(x51,5) + POWER(x52,5) + POWER(x53,
     5) + POWER(x54,5) + POWER(x55,5) + POWER(x56,5) + POWER(x57,5) + POWER(x58
     ,5) + POWER(x59,5) + POWER(x60,5) + POWER(x61,5) + POWER(x62,5) + POWER(
     x63,5) + POWER(x64,5) + POWER(x65,5) + POWER(x66,5) + POWER(x67,5) + 
     POWER(x68,5) + POWER(x69,5) + POWER(x70,5) + POWER(x71,5) + POWER(x72,5)
      + POWER(x73,5) + POWER(x74,5) + POWER(x75,5) + POWER(x76,5) + POWER(x77,5
     ) + POWER(x78,5) + POWER(x79,5) + POWER(x80,5) + POWER(x81,5) + POWER(x82,
     5) + POWER(x83,5) + POWER(x84,5) + POWER(x85,5) + POWER(x86,5) + POWER(x87
     ,5) + POWER(x88,5) + POWER(x89,5) + POWER(x90,5) + POWER(x91,5) + POWER(
     x92,5) + POWER(x93,5) + POWER(x94,5) + POWER(x95,5) + POWER(x96,5) + 
     POWER(x97,5) + POWER(x98,5) + POWER(x99,5) + POWER(x100,5)) - x102 =L= 0;

e6.. sqr((-14.79071411905) + POWER(x1,6) + POWER(x2,6) + POWER(x3,6) + POWER(x4
     ,6) + POWER(x5,6) + POWER(x6,6) + POWER(x7,6) + POWER(x8,6) + POWER(x9,6)
      + POWER(x10,6) + POWER(x11,6) + POWER(x12,6) + POWER(x13,6) + POWER(x14,6
     ) + POWER(x15,6) + POWER(x16,6) + POWER(x17,6) + POWER(x18,6) + POWER(x19,
     6) + POWER(x20,6) + POWER(x21,6) + POWER(x22,6) + POWER(x23,6) + POWER(x24
     ,6) + POWER(x25,6) + POWER(x26,6) + POWER(x27,6) + POWER(x28,6) + POWER(
     x29,6) + POWER(x30,6) + POWER(x31,6) + POWER(x32,6) + POWER(x33,6) + 
     POWER(x34,6) + POWER(x35,6) + POWER(x36,6) + POWER(x37,6) + POWER(x38,6)
      + POWER(x39,6) + POWER(x40,6) + POWER(x41,6) + POWER(x42,6) + POWER(x43,6
     ) + POWER(x44,6) + POWER(x45,6) + POWER(x46,6) + POWER(x47,6) + POWER(x48,
     6) + POWER(x49,6) + POWER(x50,6) + POWER(x51,6) + POWER(x52,6) + POWER(x53
     ,6) + POWER(x54,6) + POWER(x55,6) + POWER(x56,6) + POWER(x57,6) + POWER(
     x58,6) + POWER(x59,6) + POWER(x60,6) + POWER(x61,6) + POWER(x62,6) + 
     POWER(x63,6) + POWER(x64,6) + POWER(x65,6) + POWER(x66,6) + POWER(x67,6)
      + POWER(x68,6) + POWER(x69,6) + POWER(x70,6) + POWER(x71,6) + POWER(x72,6
     ) + POWER(x73,6) + POWER(x74,6) + POWER(x75,6) + POWER(x76,6) + POWER(x77,
     6) + POWER(x78,6) + POWER(x79,6) + POWER(x80,6) + POWER(x81,6) + POWER(x82
     ,6) + POWER(x83,6) + POWER(x84,6) + POWER(x85,6) + POWER(x86,6) + POWER(
     x87,6) + POWER(x88,6) + POWER(x89,6) + POWER(x90,6) + POWER(x91,6) + 
     POWER(x92,6) + POWER(x93,6) + POWER(x94,6) + POWER(x95,6) + POWER(x96,6)
      + POWER(x97,6) + POWER(x98,6) + POWER(x99,6) + POWER(x100,6)) - x102
      =L= 0;

e7.. sqr((-13.005833041675) + POWER(x1,7) + POWER(x2,7) + POWER(x3,7) + POWER(
     x4,7) + POWER(x5,7) + POWER(x6,7) + POWER(x7,7) + POWER(x8,7) + POWER(x9,7
     ) + POWER(x10,7) + POWER(x11,7) + POWER(x12,7) + POWER(x13,7) + POWER(x14,
     7) + POWER(x15,7) + POWER(x16,7) + POWER(x17,7) + POWER(x18,7) + POWER(x19
     ,7) + POWER(x20,7) + POWER(x21,7) + POWER(x22,7) + POWER(x23,7) + POWER(
     x24,7) + POWER(x25,7) + POWER(x26,7) + POWER(x27,7) + POWER(x28,7) + 
     POWER(x29,7) + POWER(x30,7) + POWER(x31,7) + POWER(x32,7) + POWER(x33,7)
      + POWER(x34,7) + POWER(x35,7) + POWER(x36,7) + POWER(x37,7) + POWER(x38,7
     ) + POWER(x39,7) + POWER(x40,7) + POWER(x41,7) + POWER(x42,7) + POWER(x43,
     7) + POWER(x44,7) + POWER(x45,7) + POWER(x46,7) + POWER(x47,7) + POWER(x48
     ,7) + POWER(x49,7) + POWER(x50,7) + POWER(x51,7) + POWER(x52,7) + POWER(
     x53,7) + POWER(x54,7) + POWER(x55,7) + POWER(x56,7) + POWER(x57,7) + 
     POWER(x58,7) + POWER(x59,7) + POWER(x60,7) + POWER(x61,7) + POWER(x62,7)
      + POWER(x63,7) + POWER(x64,7) + POWER(x65,7) + POWER(x66,7) + POWER(x67,7
     ) + POWER(x68,7) + POWER(x69,7) + POWER(x70,7) + POWER(x71,7) + POWER(x72,
     7) + POWER(x73,7) + POWER(x74,7) + POWER(x75,7) + POWER(x76,7) + POWER(x77
     ,7) + POWER(x78,7) + POWER(x79,7) + POWER(x80,7) + POWER(x81,7) + POWER(
     x82,7) + POWER(x83,7) + POWER(x84,7) + POWER(x85,7) + POWER(x86,7) + 
     POWER(x87,7) + POWER(x88,7) + POWER(x89,7) + POWER(x90,7) + POWER(x91,7)
      + POWER(x92,7) + POWER(x93,7) + POWER(x94,7) + POWER(x95,7) + POWER(x96,7
     ) + POWER(x97,7) + POWER(x98,7) + POWER(x99,7) + POWER(x100,7)) - x102
      =L= 0;

e8.. sqr((-11.6177773111333) + POWER(x1,8) + POWER(x2,8) + POWER(x3,8) + POWER(
     x4,8) + POWER(x5,8) + POWER(x6,8) + POWER(x7,8) + POWER(x8,8) + POWER(x9,8
     ) + POWER(x10,8) + POWER(x11,8) + POWER(x12,8) + POWER(x13,8) + POWER(x14,
     8) + POWER(x15,8) + POWER(x16,8) + POWER(x17,8) + POWER(x18,8) + POWER(x19
     ,8) + POWER(x20,8) + POWER(x21,8) + POWER(x22,8) + POWER(x23,8) + POWER(
     x24,8) + POWER(x25,8) + POWER(x26,8) + POWER(x27,8) + POWER(x28,8) + 
     POWER(x29,8) + POWER(x30,8) + POWER(x31,8) + POWER(x32,8) + POWER(x33,8)
      + POWER(x34,8) + POWER(x35,8) + POWER(x36,8) + POWER(x37,8) + POWER(x38,8
     ) + POWER(x39,8) + POWER(x40,8) + POWER(x41,8) + POWER(x42,8) + POWER(x43,
     8) + POWER(x44,8) + POWER(x45,8) + POWER(x46,8) + POWER(x47,8) + POWER(x48
     ,8) + POWER(x49,8) + POWER(x50,8) + POWER(x51,8) + POWER(x52,8) + POWER(
     x53,8) + POWER(x54,8) + POWER(x55,8) + POWER(x56,8) + POWER(x57,8) + 
     POWER(x58,8) + POWER(x59,8) + POWER(x60,8) + POWER(x61,8) + POWER(x62,8)
      + POWER(x63,8) + POWER(x64,8) + POWER(x65,8) + POWER(x66,8) + POWER(x67,8
     ) + POWER(x68,8) + POWER(x69,8) + POWER(x70,8) + POWER(x71,8) + POWER(x72,
     8) + POWER(x73,8) + POWER(x74,8) + POWER(x75,8) + POWER(x76,8) + POWER(x77
     ,8) + POWER(x78,8) + POWER(x79,8) + POWER(x80,8) + POWER(x81,8) + POWER(
     x82,8) + POWER(x83,8) + POWER(x84,8) + POWER(x85,8) + POWER(x86,8) + 
     POWER(x87,8) + POWER(x88,8) + POWER(x89,8) + POWER(x90,8) + POWER(x91,8)
      + POWER(x92,8) + POWER(x93,8) + POWER(x94,8) + POWER(x95,8) + POWER(x96,8
     ) + POWER(x97,8) + POWER(x98,8) + POWER(x99,8) + POWER(x100,8)) - x102
      =L= 0;

e9.. sqr((-10.50749930005) + POWER(x1,9) + POWER(x2,9) + POWER(x3,9) + POWER(x4
     ,9) + POWER(x5,9) + POWER(x6,9) + POWER(x7,9) + POWER(x8,9) + POWER(x9,9)
      + POWER(x10,9) + POWER(x11,9) + POWER(x12,9) + POWER(x13,9) + POWER(x14,9
     ) + POWER(x15,9) + POWER(x16,9) + POWER(x17,9) + POWER(x18,9) + POWER(x19,
     9) + POWER(x20,9) + POWER(x21,9) + POWER(x22,9) + POWER(x23,9) + POWER(x24
     ,9) + POWER(x25,9) + POWER(x26,9) + POWER(x27,9) + POWER(x28,9) + POWER(
     x29,9) + POWER(x30,9) + POWER(x31,9) + POWER(x32,9) + POWER(x33,9) + 
     POWER(x34,9) + POWER(x35,9) + POWER(x36,9) + POWER(x37,9) + POWER(x38,9)
      + POWER(x39,9) + POWER(x40,9) + POWER(x41,9) + POWER(x42,9) + POWER(x43,9
     ) + POWER(x44,9) + POWER(x45,9) + POWER(x46,9) + POWER(x47,9) + POWER(x48,
     9) + POWER(x49,9) + POWER(x50,9) + POWER(x51,9) + POWER(x52,9) + POWER(x53
     ,9) + POWER(x54,9) + POWER(x55,9) + POWER(x56,9) + POWER(x57,9) + POWER(
     x58,9) + POWER(x59,9) + POWER(x60,9) + POWER(x61,9) + POWER(x62,9) + 
     POWER(x63,9) + POWER(x64,9) + POWER(x65,9) + POWER(x66,9) + POWER(x67,9)
      + POWER(x68,9) + POWER(x69,9) + POWER(x70,9) + POWER(x71,9) + POWER(x72,9
     ) + POWER(x73,9) + POWER(x74,9) + POWER(x75,9) + POWER(x76,9) + POWER(x77,
     9) + POWER(x78,9) + POWER(x79,9) + POWER(x80,9) + POWER(x81,9) + POWER(x82
     ,9) + POWER(x83,9) + POWER(x84,9) + POWER(x85,9) + POWER(x86,9) + POWER(
     x87,9) + POWER(x88,9) + POWER(x89,9) + POWER(x90,9) + POWER(x91,9) + 
     POWER(x92,9) + POWER(x93,9) + POWER(x94,9) + POWER(x95,9) + POWER(x96,9)
      + POWER(x97,9) + POWER(x98,9) + POWER(x99,9) + POWER(x100,9)) - x102
      =L= 0;

e10.. sqr((-9.59924142434242) + POWER(x1,10) + POWER(x2,10) + POWER(x3,10) + 
      POWER(x4,10) + POWER(x5,10) + POWER(x6,10) + POWER(x7,10) + POWER(x8,10)
       + POWER(x9,10) + POWER(x10,10) + POWER(x11,10) + POWER(x12,10) + POWER(
      x13,10) + POWER(x14,10) + POWER(x15,10) + POWER(x16,10) + POWER(x17,10)
       + POWER(x18,10) + POWER(x19,10) + POWER(x20,10) + POWER(x21,10) + POWER(
      x22,10) + POWER(x23,10) + POWER(x24,10) + POWER(x25,10) + POWER(x26,10)
       + POWER(x27,10) + POWER(x28,10) + POWER(x29,10) + POWER(x30,10) + POWER(
      x31,10) + POWER(x32,10) + POWER(x33,10) + POWER(x34,10) + POWER(x35,10)
       + POWER(x36,10) + POWER(x37,10) + POWER(x38,10) + POWER(x39,10) + POWER(
      x40,10) + POWER(x41,10) + POWER(x42,10) + POWER(x43,10) + POWER(x44,10)
       + POWER(x45,10) + POWER(x46,10) + POWER(x47,10) + POWER(x48,10) + POWER(
      x49,10) + POWER(x50,10) + POWER(x51,10) + POWER(x52,10) + POWER(x53,10)
       + POWER(x54,10) + POWER(x55,10) + POWER(x56,10) + POWER(x57,10) + POWER(
      x58,10) + POWER(x59,10) + POWER(x60,10) + POWER(x61,10) + POWER(x62,10)
       + POWER(x63,10) + POWER(x64,10) + POWER(x65,10) + POWER(x66,10) + POWER(
      x67,10) + POWER(x68,10) + POWER(x69,10) + POWER(x70,10) + POWER(x71,10)
       + POWER(x72,10) + POWER(x73,10) + POWER(x74,10) + POWER(x75,10) + POWER(
      x76,10) + POWER(x77,10) + POWER(x78,10) + POWER(x79,10) + POWER(x80,10)
       + POWER(x81,10) + POWER(x82,10) + POWER(x83,10) + POWER(x84,10) + POWER(
      x85,10) + POWER(x86,10) + POWER(x87,10) + POWER(x88,10) + POWER(x89,10)
       + POWER(x90,10) + POWER(x91,10) + POWER(x92,10) + POWER(x93,10) + POWER(
      x94,10) + POWER(x95,10) + POWER(x96,10) + POWER(x97,10) + POWER(x98,10)
       + POWER(x99,10) + POWER(x100,10)) - x102 =L= 0;

e11.. sqr((-8.84249862518332) + POWER(x1,11) + POWER(x2,11) + POWER(x3,11) + 
      POWER(x4,11) + POWER(x5,11) + POWER(x6,11) + POWER(x7,11) + POWER(x8,11)
       + POWER(x9,11) + POWER(x10,11) + POWER(x11,11) + POWER(x12,11) + POWER(
      x13,11) + POWER(x14,11) + POWER(x15,11) + POWER(x16,11) + POWER(x17,11)
       + POWER(x18,11) + POWER(x19,11) + POWER(x20,11) + POWER(x21,11) + POWER(
      x22,11) + POWER(x23,11) + POWER(x24,11) + POWER(x25,11) + POWER(x26,11)
       + POWER(x27,11) + POWER(x28,11) + POWER(x29,11) + POWER(x30,11) + POWER(
      x31,11) + POWER(x32,11) + POWER(x33,11) + POWER(x34,11) + POWER(x35,11)
       + POWER(x36,11) + POWER(x37,11) + POWER(x38,11) + POWER(x39,11) + POWER(
      x40,11) + POWER(x41,11) + POWER(x42,11) + POWER(x43,11) + POWER(x44,11)
       + POWER(x45,11) + POWER(x46,11) + POWER(x47,11) + POWER(x48,11) + POWER(
      x49,11) + POWER(x50,11) + POWER(x51,11) + POWER(x52,11) + POWER(x53,11)
       + POWER(x54,11) + POWER(x55,11) + POWER(x56,11) + POWER(x57,11) + POWER(
      x58,11) + POWER(x59,11) + POWER(x60,11) + POWER(x61,11) + POWER(x62,11)
       + POWER(x63,11) + POWER(x64,11) + POWER(x65,11) + POWER(x66,11) + POWER(
      x67,11) + POWER(x68,11) + POWER(x69,11) + POWER(x70,11) + POWER(x71,11)
       + POWER(x72,11) + POWER(x73,11) + POWER(x74,11) + POWER(x75,11) + POWER(
      x76,11) + POWER(x77,11) + POWER(x78,11) + POWER(x79,11) + POWER(x80,11)
       + POWER(x81,11) + POWER(x82,11) + POWER(x83,11) + POWER(x84,11) + POWER(
      x85,11) + POWER(x86,11) + POWER(x87,11) + POWER(x88,11) + POWER(x89,11)
       + POWER(x90,11) + POWER(x91,11) + POWER(x92,11) + POWER(x93,11) + POWER(
      x94,11) + POWER(x95,11) + POWER(x96,11) + POWER(x97,11) + POWER(x98,11)
       + POWER(x99,11) + POWER(x100,11)) - x102 =L= 0;

e12.. sqr((-8.20230585928861) + POWER(x1,12) + POWER(x2,12) + POWER(x3,12) + 
      POWER(x4,12) + POWER(x5,12) + POWER(x6,12) + POWER(x7,12) + POWER(x8,12)
       + POWER(x9,12) + POWER(x10,12) + POWER(x11,12) + POWER(x12,12) + POWER(
      x13,12) + POWER(x14,12) + POWER(x15,12) + POWER(x16,12) + POWER(x17,12)
       + POWER(x18,12) + POWER(x19,12) + POWER(x20,12) + POWER(x21,12) + POWER(
      x22,12) + POWER(x23,12) + POWER(x24,12) + POWER(x25,12) + POWER(x26,12)
       + POWER(x27,12) + POWER(x28,12) + POWER(x29,12) + POWER(x30,12) + POWER(
      x31,12) + POWER(x32,12) + POWER(x33,12) + POWER(x34,12) + POWER(x35,12)
       + POWER(x36,12) + POWER(x37,12) + POWER(x38,12) + POWER(x39,12) + POWER(
      x40,12) + POWER(x41,12) + POWER(x42,12) + POWER(x43,12) + POWER(x44,12)
       + POWER(x45,12) + POWER(x46,12) + POWER(x47,12) + POWER(x48,12) + POWER(
      x49,12) + POWER(x50,12) + POWER(x51,12) + POWER(x52,12) + POWER(x53,12)
       + POWER(x54,12) + POWER(x55,12) + POWER(x56,12) + POWER(x57,12) + POWER(
      x58,12) + POWER(x59,12) + POWER(x60,12) + POWER(x61,12) + POWER(x62,12)
       + POWER(x63,12) + POWER(x64,12) + POWER(x65,12) + POWER(x66,12) + POWER(
      x67,12) + POWER(x68,12) + POWER(x69,12) + POWER(x70,12) + POWER(x71,12)
       + POWER(x72,12) + POWER(x73,12) + POWER(x74,12) + POWER(x75,12) + POWER(
      x76,12) + POWER(x77,12) + POWER(x78,12) + POWER(x79,12) + POWER(x80,12)
       + POWER(x81,12) + POWER(x82,12) + POWER(x83,12) + POWER(x84,12) + POWER(
      x85,12) + POWER(x86,12) + POWER(x87,12) + POWER(x88,12) + POWER(x89,12)
       + POWER(x90,12) + POWER(x91,12) + POWER(x92,12) + POWER(x93,12) + POWER(
      x94,12) + POWER(x95,12) + POWER(x96,12) + POWER(x97,12) + POWER(x98,12)
       + POWER(x99,12) + POWER(x100,12)) - x102 =L= 0;

e13.. sqr((-7.65368809336779) + POWER(x1,13) + POWER(x2,13) + POWER(x3,13) + 
      POWER(x4,13) + POWER(x5,13) + POWER(x6,13) + POWER(x7,13) + POWER(x8,13)
       + POWER(x9,13) + POWER(x10,13) + POWER(x11,13) + POWER(x12,13) + POWER(
      x13,13) + POWER(x14,13) + POWER(x15,13) + POWER(x16,13) + POWER(x17,13)
       + POWER(x18,13) + POWER(x19,13) + POWER(x20,13) + POWER(x21,13) + POWER(
      x22,13) + POWER(x23,13) + POWER(x24,13) + POWER(x25,13) + POWER(x26,13)
       + POWER(x27,13) + POWER(x28,13) + POWER(x29,13) + POWER(x30,13) + POWER(
      x31,13) + POWER(x32,13) + POWER(x33,13) + POWER(x34,13) + POWER(x35,13)
       + POWER(x36,13) + POWER(x37,13) + POWER(x38,13) + POWER(x39,13) + POWER(
      x40,13) + POWER(x41,13) + POWER(x42,13) + POWER(x43,13) + POWER(x44,13)
       + POWER(x45,13) + POWER(x46,13) + POWER(x47,13) + POWER(x48,13) + POWER(
      x49,13) + POWER(x50,13) + POWER(x51,13) + POWER(x52,13) + POWER(x53,13)
       + POWER(x54,13) + POWER(x55,13) + POWER(x56,13) + POWER(x57,13) + POWER(
      x58,13) + POWER(x59,13) + POWER(x60,13) + POWER(x61,13) + POWER(x62,13)
       + POWER(x63,13) + POWER(x64,13) + POWER(x65,13) + POWER(x66,13) + POWER(
      x67,13) + POWER(x68,13) + POWER(x69,13) + POWER(x70,13) + POWER(x71,13)
       + POWER(x72,13) + POWER(x73,13) + POWER(x74,13) + POWER(x75,13) + POWER(
      x76,13) + POWER(x77,13) + POWER(x78,13) + POWER(x79,13) + POWER(x80,13)
       + POWER(x81,13) + POWER(x82,13) + POWER(x83,13) + POWER(x84,13) + POWER(
      x85,13) + POWER(x86,13) + POWER(x87,13) + POWER(x88,13) + POWER(x89,13)
       + POWER(x90,13) + POWER(x91,13) + POWER(x92,13) + POWER(x93,13) + POWER(
      x94,13) + POWER(x95,13) + POWER(x96,13) + POWER(x97,13) + POWER(x98,13)
       + POWER(x99,13) + POWER(x100,13)) - x102 =L= 0;

e14.. sqr((-7.1783303007943) + POWER(x1,14) + POWER(x2,14) + POWER(x3,14) + 
      POWER(x4,14) + POWER(x5,14) + POWER(x6,14) + POWER(x7,14) + POWER(x8,14)
       + POWER(x9,14) + POWER(x10,14) + POWER(x11,14) + POWER(x12,14) + POWER(
      x13,14) + POWER(x14,14) + POWER(x15,14) + POWER(x16,14) + POWER(x17,14)
       + POWER(x18,14) + POWER(x19,14) + POWER(x20,14) + POWER(x21,14) + POWER(
      x22,14) + POWER(x23,14) + POWER(x24,14) + POWER(x25,14) + POWER(x26,14)
       + POWER(x27,14) + POWER(x28,14) + POWER(x29,14) + POWER(x30,14) + POWER(
      x31,14) + POWER(x32,14) + POWER(x33,14) + POWER(x34,14) + POWER(x35,14)
       + POWER(x36,14) + POWER(x37,14) + POWER(x38,14) + POWER(x39,14) + POWER(
      x40,14) + POWER(x41,14) + POWER(x42,14) + POWER(x43,14) + POWER(x44,14)
       + POWER(x45,14) + POWER(x46,14) + POWER(x47,14) + POWER(x48,14) + POWER(
      x49,14) + POWER(x50,14) + POWER(x51,14) + POWER(x52,14) + POWER(x53,14)
       + POWER(x54,14) + POWER(x55,14) + POWER(x56,14) + POWER(x57,14) + POWER(
      x58,14) + POWER(x59,14) + POWER(x60,14) + POWER(x61,14) + POWER(x62,14)
       + POWER(x63,14) + POWER(x64,14) + POWER(x65,14) + POWER(x66,14) + POWER(
      x67,14) + POWER(x68,14) + POWER(x69,14) + POWER(x70,14) + POWER(x71,14)
       + POWER(x72,14) + POWER(x73,14) + POWER(x74,14) + POWER(x75,14) + POWER(
      x76,14) + POWER(x77,14) + POWER(x78,14) + POWER(x79,14) + POWER(x80,14)
       + POWER(x81,14) + POWER(x82,14) + POWER(x83,14) + POWER(x84,14) + POWER(
      x85,14) + POWER(x86,14) + POWER(x87,14) + POWER(x88,14) + POWER(x89,14)
       + POWER(x90,14) + POWER(x91,14) + POWER(x92,14) + POWER(x93,14) + POWER(
      x94,14) + POWER(x95,14) + POWER(x96,14) + POWER(x97,14) + POWER(x98,14)
       + POWER(x99,14) + POWER(x100,14)) - x102 =L= 0;

e15.. sqr((-6.76249620952473) + POWER(x1,15) + POWER(x2,15) + POWER(x3,15) + 
      POWER(x4,15) + POWER(x5,15) + POWER(x6,15) + POWER(x7,15) + POWER(x8,15)
       + POWER(x9,15) + POWER(x10,15) + POWER(x11,15) + POWER(x12,15) + POWER(
      x13,15) + POWER(x14,15) + POWER(x15,15) + POWER(x16,15) + POWER(x17,15)
       + POWER(x18,15) + POWER(x19,15) + POWER(x20,15) + POWER(x21,15) + POWER(
      x22,15) + POWER(x23,15) + POWER(x24,15) + POWER(x25,15) + POWER(x26,15)
       + POWER(x27,15) + POWER(x28,15) + POWER(x29,15) + POWER(x30,15) + POWER(
      x31,15) + POWER(x32,15) + POWER(x33,15) + POWER(x34,15) + POWER(x35,15)
       + POWER(x36,15) + POWER(x37,15) + POWER(x38,15) + POWER(x39,15) + POWER(
      x40,15) + POWER(x41,15) + POWER(x42,15) + POWER(x43,15) + POWER(x44,15)
       + POWER(x45,15) + POWER(x46,15) + POWER(x47,15) + POWER(x48,15) + POWER(
      x49,15) + POWER(x50,15) + POWER(x51,15) + POWER(x52,15) + POWER(x53,15)
       + POWER(x54,15) + POWER(x55,15) + POWER(x56,15) + POWER(x57,15) + POWER(
      x58,15) + POWER(x59,15) + POWER(x60,15) + POWER(x61,15) + POWER(x62,15)
       + POWER(x63,15) + POWER(x64,15) + POWER(x65,15) + POWER(x66,15) + POWER(
      x67,15) + POWER(x68,15) + POWER(x69,15) + POWER(x70,15) + POWER(x71,15)
       + POWER(x72,15) + POWER(x73,15) + POWER(x74,15) + POWER(x75,15) + POWER(
      x76,15) + POWER(x77,15) + POWER(x78,15) + POWER(x79,15) + POWER(x80,15)
       + POWER(x81,15) + POWER(x82,15) + POWER(x83,15) + POWER(x84,15) + POWER(
      x85,15) + POWER(x86,15) + POWER(x87,15) + POWER(x88,15) + POWER(x89,15)
       + POWER(x90,15) + POWER(x91,15) + POWER(x92,15) + POWER(x93,15) + POWER(
      x94,15) + POWER(x95,15) + POWER(x96,15) + POWER(x97,15) + POWER(x98,15)
       + POWER(x99,15) + POWER(x100,15)) - x102 =L= 0;

e16.. sqr((-6.39568160957599) + POWER(x1,16) + POWER(x2,16) + POWER(x3,16) + 
      POWER(x4,16) + POWER(x5,16) + POWER(x6,16) + POWER(x7,16) + POWER(x8,16)
       + POWER(x9,16) + POWER(x10,16) + POWER(x11,16) + POWER(x12,16) + POWER(
      x13,16) + POWER(x14,16) + POWER(x15,16) + POWER(x16,16) + POWER(x17,16)
       + POWER(x18,16) + POWER(x19,16) + POWER(x20,16) + POWER(x21,16) + POWER(
      x22,16) + POWER(x23,16) + POWER(x24,16) + POWER(x25,16) + POWER(x26,16)
       + POWER(x27,16) + POWER(x28,16) + POWER(x29,16) + POWER(x30,16) + POWER(
      x31,16) + POWER(x32,16) + POWER(x33,16) + POWER(x34,16) + POWER(x35,16)
       + POWER(x36,16) + POWER(x37,16) + POWER(x38,16) + POWER(x39,16) + POWER(
      x40,16) + POWER(x41,16) + POWER(x42,16) + POWER(x43,16) + POWER(x44,16)
       + POWER(x45,16) + POWER(x46,16) + POWER(x47,16) + POWER(x48,16) + POWER(
      x49,16) + POWER(x50,16) + POWER(x51,16) + POWER(x52,16) + POWER(x53,16)
       + POWER(x54,16) + POWER(x55,16) + POWER(x56,16) + POWER(x57,16) + POWER(
      x58,16) + POWER(x59,16) + POWER(x60,16) + POWER(x61,16) + POWER(x62,16)
       + POWER(x63,16) + POWER(x64,16) + POWER(x65,16) + POWER(x66,16) + POWER(
      x67,16) + POWER(x68,16) + POWER(x69,16) + POWER(x70,16) + POWER(x71,16)
       + POWER(x72,16) + POWER(x73,16) + POWER(x74,16) + POWER(x75,16) + POWER(
      x76,16) + POWER(x77,16) + POWER(x78,16) + POWER(x79,16) + POWER(x80,16)
       + POWER(x81,16) + POWER(x82,16) + POWER(x83,16) + POWER(x84,16) + POWER(
      x85,16) + POWER(x86,16) + POWER(x87,16) + POWER(x88,16) + POWER(x89,16)
       + POWER(x90,16) + POWER(x91,16) + POWER(x92,16) + POWER(x93,16) + POWER(
      x94,16) + POWER(x95,16) + POWER(x96,16) + POWER(x97,16) + POWER(x98,16)
       + POWER(x99,16) + POWER(x100,16)) - x102 =L= 0;

e17.. sqr((-6.0697165580103) + POWER(x1,17) + POWER(x2,17) + POWER(x3,17) + 
      POWER(x4,17) + POWER(x5,17) + POWER(x6,17) + POWER(x7,17) + POWER(x8,17)
       + POWER(x9,17) + POWER(x10,17) + POWER(x11,17) + POWER(x12,17) + POWER(
      x13,17) + POWER(x14,17) + POWER(x15,17) + POWER(x16,17) + POWER(x17,17)
       + POWER(x18,17) + POWER(x19,17) + POWER(x20,17) + POWER(x21,17) + POWER(
      x22,17) + POWER(x23,17) + POWER(x24,17) + POWER(x25,17) + POWER(x26,17)
       + POWER(x27,17) + POWER(x28,17) + POWER(x29,17) + POWER(x30,17) + POWER(
      x31,17) + POWER(x32,17) + POWER(x33,17) + POWER(x34,17) + POWER(x35,17)
       + POWER(x36,17) + POWER(x37,17) + POWER(x38,17) + POWER(x39,17) + POWER(
      x40,17) + POWER(x41,17) + POWER(x42,17) + POWER(x43,17) + POWER(x44,17)
       + POWER(x45,17) + POWER(x46,17) + POWER(x47,17) + POWER(x48,17) + POWER(
      x49,17) + POWER(x50,17) + POWER(x51,17) + POWER(x52,17) + POWER(x53,17)
       + POWER(x54,17) + POWER(x55,17) + POWER(x56,17) + POWER(x57,17) + POWER(
      x58,17) + POWER(x59,17) + POWER(x60,17) + POWER(x61,17) + POWER(x62,17)
       + POWER(x63,17) + POWER(x64,17) + POWER(x65,17) + POWER(x66,17) + POWER(
      x67,17) + POWER(x68,17) + POWER(x69,17) + POWER(x70,17) + POWER(x71,17)
       + POWER(x72,17) + POWER(x73,17) + POWER(x74,17) + POWER(x75,17) + POWER(
      x76,17) + POWER(x77,17) + POWER(x78,17) + POWER(x79,17) + POWER(x80,17)
       + POWER(x81,17) + POWER(x82,17) + POWER(x83,17) + POWER(x84,17) + POWER(
      x85,17) + POWER(x86,17) + POWER(x87,17) + POWER(x88,17) + POWER(x89,17)
       + POWER(x90,17) + POWER(x91,17) + POWER(x92,17) + POWER(x93,17) + POWER(
      x94,17) + POWER(x95,17) + POWER(x96,17) + POWER(x97,17) + POWER(x98,17)
       + POWER(x99,17) + POWER(x100,17)) - x102 =L= 0;

e18.. sqr((-5.77815109813552) + POWER(x1,18) + POWER(x2,18) + POWER(x3,18) + 
      POWER(x4,18) + POWER(x5,18) + POWER(x6,18) + POWER(x7,18) + POWER(x8,18)
       + POWER(x9,18) + POWER(x10,18) + POWER(x11,18) + POWER(x12,18) + POWER(
      x13,18) + POWER(x14,18) + POWER(x15,18) + POWER(x16,18) + POWER(x17,18)
       + POWER(x18,18) + POWER(x19,18) + POWER(x20,18) + POWER(x21,18) + POWER(
      x22,18) + POWER(x23,18) + POWER(x24,18) + POWER(x25,18) + POWER(x26,18)
       + POWER(x27,18) + POWER(x28,18) + POWER(x29,18) + POWER(x30,18) + POWER(
      x31,18) + POWER(x32,18) + POWER(x33,18) + POWER(x34,18) + POWER(x35,18)
       + POWER(x36,18) + POWER(x37,18) + POWER(x38,18) + POWER(x39,18) + POWER(
      x40,18) + POWER(x41,18) + POWER(x42,18) + POWER(x43,18) + POWER(x44,18)
       + POWER(x45,18) + POWER(x46,18) + POWER(x47,18) + POWER(x48,18) + POWER(
      x49,18) + POWER(x50,18) + POWER(x51,18) + POWER(x52,18) + POWER(x53,18)
       + POWER(x54,18) + POWER(x55,18) + POWER(x56,18) + POWER(x57,18) + POWER(
      x58,18) + POWER(x59,18) + POWER(x60,18) + POWER(x61,18) + POWER(x62,18)
       + POWER(x63,18) + POWER(x64,18) + POWER(x65,18) + POWER(x66,18) + POWER(
      x67,18) + POWER(x68,18) + POWER(x69,18) + POWER(x70,18) + POWER(x71,18)
       + POWER(x72,18) + POWER(x73,18) + POWER(x74,18) + POWER(x75,18) + POWER(
      x76,18) + POWER(x77,18) + POWER(x78,18) + POWER(x79,18) + POWER(x80,18)
       + POWER(x81,18) + POWER(x82,18) + POWER(x83,18) + POWER(x84,18) + POWER(
      x85,18) + POWER(x86,18) + POWER(x87,18) + POWER(x88,18) + POWER(x89,18)
       + POWER(x90,18) + POWER(x91,18) + POWER(x92,18) + POWER(x93,18) + POWER(
      x94,18) + POWER(x95,18) + POWER(x96,18) + POWER(x97,18) + POWER(x98,18)
       + POWER(x99,18) + POWER(x100,18)) - x102 =L= 0;

e19.. sqr((-5.51582526294552) + POWER(x1,19) + POWER(x2,19) + POWER(x3,19) + 
      POWER(x4,19) + POWER(x5,19) + POWER(x6,19) + POWER(x7,19) + POWER(x8,19)
       + POWER(x9,19) + POWER(x10,19) + POWER(x11,19) + POWER(x12,19) + POWER(
      x13,19) + POWER(x14,19) + POWER(x15,19) + POWER(x16,19) + POWER(x17,19)
       + POWER(x18,19) + POWER(x19,19) + POWER(x20,19) + POWER(x21,19) + POWER(
      x22,19) + POWER(x23,19) + POWER(x24,19) + POWER(x25,19) + POWER(x26,19)
       + POWER(x27,19) + POWER(x28,19) + POWER(x29,19) + POWER(x30,19) + POWER(
      x31,19) + POWER(x32,19) + POWER(x33,19) + POWER(x34,19) + POWER(x35,19)
       + POWER(x36,19) + POWER(x37,19) + POWER(x38,19) + POWER(x39,19) + POWER(
      x40,19) + POWER(x41,19) + POWER(x42,19) + POWER(x43,19) + POWER(x44,19)
       + POWER(x45,19) + POWER(x46,19) + POWER(x47,19) + POWER(x48,19) + POWER(
      x49,19) + POWER(x50,19) + POWER(x51,19) + POWER(x52,19) + POWER(x53,19)
       + POWER(x54,19) + POWER(x55,19) + POWER(x56,19) + POWER(x57,19) + POWER(
      x58,19) + POWER(x59,19) + POWER(x60,19) + POWER(x61,19) + POWER(x62,19)
       + POWER(x63,19) + POWER(x64,19) + POWER(x65,19) + POWER(x66,19) + POWER(
      x67,19) + POWER(x68,19) + POWER(x69,19) + POWER(x70,19) + POWER(x71,19)
       + POWER(x72,19) + POWER(x73,19) + POWER(x74,19) + POWER(x75,19) + POWER(
      x76,19) + POWER(x77,19) + POWER(x78,19) + POWER(x79,19) + POWER(x80,19)
       + POWER(x81,19) + POWER(x82,19) + POWER(x83,19) + POWER(x84,19) + POWER(
      x85,19) + POWER(x86,19) + POWER(x87,19) + POWER(x88,19) + POWER(x89,19)
       + POWER(x90,19) + POWER(x91,19) + POWER(x92,19) + POWER(x93,19) + POWER(
      x94,19) + POWER(x95,19) + POWER(x96,19) + POWER(x97,19) + POWER(x98,19)
       + POWER(x99,19) + POWER(x100,19)) - x102 =L= 0;

e20.. sqr((-5.27856193472058) + POWER(x1,20) + POWER(x2,20) + POWER(x3,20) + 
      POWER(x4,20) + POWER(x5,20) + POWER(x6,20) + POWER(x7,20) + POWER(x8,20)
       + POWER(x9,20) + POWER(x10,20) + POWER(x11,20) + POWER(x12,20) + POWER(
      x13,20) + POWER(x14,20) + POWER(x15,20) + POWER(x16,20) + POWER(x17,20)
       + POWER(x18,20) + POWER(x19,20) + POWER(x20,20) + POWER(x21,20) + POWER(
      x22,20) + POWER(x23,20) + POWER(x24,20) + POWER(x25,20) + POWER(x26,20)
       + POWER(x27,20) + POWER(x28,20) + POWER(x29,20) + POWER(x30,20) + POWER(
      x31,20) + POWER(x32,20) + POWER(x33,20) + POWER(x34,20) + POWER(x35,20)
       + POWER(x36,20) + POWER(x37,20) + POWER(x38,20) + POWER(x39,20) + POWER(
      x40,20) + POWER(x41,20) + POWER(x42,20) + POWER(x43,20) + POWER(x44,20)
       + POWER(x45,20) + POWER(x46,20) + POWER(x47,20) + POWER(x48,20) + POWER(
      x49,20) + POWER(x50,20) + POWER(x51,20) + POWER(x52,20) + POWER(x53,20)
       + POWER(x54,20) + POWER(x55,20) + POWER(x56,20) + POWER(x57,20) + POWER(
      x58,20) + POWER(x59,20) + POWER(x60,20) + POWER(x61,20) + POWER(x62,20)
       + POWER(x63,20) + POWER(x64,20) + POWER(x65,20) + POWER(x66,20) + POWER(
      x67,20) + POWER(x68,20) + POWER(x69,20) + POWER(x70,20) + POWER(x71,20)
       + POWER(x72,20) + POWER(x73,20) + POWER(x74,20) + POWER(x75,20) + POWER(
      x76,20) + POWER(x77,20) + POWER(x78,20) + POWER(x79,20) + POWER(x80,20)
       + POWER(x81,20) + POWER(x82,20) + POWER(x83,20) + POWER(x84,20) + POWER(
      x85,20) + POWER(x86,20) + POWER(x87,20) + POWER(x88,20) + POWER(x89,20)
       + POWER(x90,20) + POWER(x91,20) + POWER(x92,20) + POWER(x93,20) + POWER(
      x94,20) + POWER(x95,20) + POWER(x96,20) + POWER(x97,20) + POWER(x98,20)
       + POWER(x99,20) + POWER(x100,20)) - x102 =L= 0;

e21.. sqr((-5.06294347019137) + POWER(x1,21) + POWER(x2,21) + POWER(x3,21) + 
      POWER(x4,21) + POWER(x5,21) + POWER(x6,21) + POWER(x7,21) + POWER(x8,21)
       + POWER(x9,21) + POWER(x10,21) + POWER(x11,21) + POWER(x12,21) + POWER(
      x13,21) + POWER(x14,21) + POWER(x15,21) + POWER(x16,21) + POWER(x17,21)
       + POWER(x18,21) + POWER(x19,21) + POWER(x20,21) + POWER(x21,21) + POWER(
      x22,21) + POWER(x23,21) + POWER(x24,21) + POWER(x25,21) + POWER(x26,21)
       + POWER(x27,21) + POWER(x28,21) + POWER(x29,21) + POWER(x30,21) + POWER(
      x31,21) + POWER(x32,21) + POWER(x33,21) + POWER(x34,21) + POWER(x35,21)
       + POWER(x36,21) + POWER(x37,21) + POWER(x38,21) + POWER(x39,21) + POWER(
      x40,21) + POWER(x41,21) + POWER(x42,21) + POWER(x43,21) + POWER(x44,21)
       + POWER(x45,21) + POWER(x46,21) + POWER(x47,21) + POWER(x48,21) + POWER(
      x49,21) + POWER(x50,21) + POWER(x51,21) + POWER(x52,21) + POWER(x53,21)
       + POWER(x54,21) + POWER(x55,21) + POWER(x56,21) + POWER(x57,21) + POWER(
      x58,21) + POWER(x59,21) + POWER(x60,21) + POWER(x61,21) + POWER(x62,21)
       + POWER(x63,21) + POWER(x64,21) + POWER(x65,21) + POWER(x66,21) + POWER(
      x67,21) + POWER(x68,21) + POWER(x69,21) + POWER(x70,21) + POWER(x71,21)
       + POWER(x72,21) + POWER(x73,21) + POWER(x74,21) + POWER(x75,21) + POWER(
      x76,21) + POWER(x77,21) + POWER(x78,21) + POWER(x79,21) + POWER(x80,21)
       + POWER(x81,21) + POWER(x82,21) + POWER(x83,21) + POWER(x84,21) + POWER(
      x85,21) + POWER(x86,21) + POWER(x87,21) + POWER(x88,21) + POWER(x89,21)
       + POWER(x90,21) + POWER(x91,21) + POWER(x92,21) + POWER(x93,21) + POWER(
      x94,21) + POWER(x95,21) + POWER(x96,21) + POWER(x97,21) + POWER(x98,21)
       + POWER(x99,21) + POWER(x100,21)) - x102 =L= 0;

e22.. sqr((-4.86614659739942) + POWER(x1,22) + POWER(x2,22) + POWER(x3,22) + 
      POWER(x4,22) + POWER(x5,22) + POWER(x6,22) + POWER(x7,22) + POWER(x8,22)
       + POWER(x9,22) + POWER(x10,22) + POWER(x11,22) + POWER(x12,22) + POWER(
      x13,22) + POWER(x14,22) + POWER(x15,22) + POWER(x16,22) + POWER(x17,22)
       + POWER(x18,22) + POWER(x19,22) + POWER(x20,22) + POWER(x21,22) + POWER(
      x22,22) + POWER(x23,22) + POWER(x24,22) + POWER(x25,22) + POWER(x26,22)
       + POWER(x27,22) + POWER(x28,22) + POWER(x29,22) + POWER(x30,22) + POWER(
      x31,22) + POWER(x32,22) + POWER(x33,22) + POWER(x34,22) + POWER(x35,22)
       + POWER(x36,22) + POWER(x37,22) + POWER(x38,22) + POWER(x39,22) + POWER(
      x40,22) + POWER(x41,22) + POWER(x42,22) + POWER(x43,22) + POWER(x44,22)
       + POWER(x45,22) + POWER(x46,22) + POWER(x47,22) + POWER(x48,22) + POWER(
      x49,22) + POWER(x50,22) + POWER(x51,22) + POWER(x52,22) + POWER(x53,22)
       + POWER(x54,22) + POWER(x55,22) + POWER(x56,22) + POWER(x57,22) + POWER(
      x58,22) + POWER(x59,22) + POWER(x60,22) + POWER(x61,22) + POWER(x62,22)
       + POWER(x63,22) + POWER(x64,22) + POWER(x65,22) + POWER(x66,22) + POWER(
      x67,22) + POWER(x68,22) + POWER(x69,22) + POWER(x70,22) + POWER(x71,22)
       + POWER(x72,22) + POWER(x73,22) + POWER(x74,22) + POWER(x75,22) + POWER(
      x76,22) + POWER(x77,22) + POWER(x78,22) + POWER(x79,22) + POWER(x80,22)
       + POWER(x81,22) + POWER(x82,22) + POWER(x83,22) + POWER(x84,22) + POWER(
      x85,22) + POWER(x86,22) + POWER(x87,22) + POWER(x88,22) + POWER(x89,22)
       + POWER(x90,22) + POWER(x91,22) + POWER(x92,22) + POWER(x93,22) + POWER(
      x94,22) + POWER(x95,22) + POWER(x96,22) + POWER(x97,22) + POWER(x98,22)
       + POWER(x99,22) + POWER(x100,22)) - x102 =L= 0;

e23.. sqr((-4.68581858834257) + POWER(x1,23) + POWER(x2,23) + POWER(x3,23) + 
      POWER(x4,23) + POWER(x5,23) + POWER(x6,23) + POWER(x7,23) + POWER(x8,23)
       + POWER(x9,23) + POWER(x10,23) + POWER(x11,23) + POWER(x12,23) + POWER(
      x13,23) + POWER(x14,23) + POWER(x15,23) + POWER(x16,23) + POWER(x17,23)
       + POWER(x18,23) + POWER(x19,23) + POWER(x20,23) + POWER(x21,23) + POWER(
      x22,23) + POWER(x23,23) + POWER(x24,23) + POWER(x25,23) + POWER(x26,23)
       + POWER(x27,23) + POWER(x28,23) + POWER(x29,23) + POWER(x30,23) + POWER(
      x31,23) + POWER(x32,23) + POWER(x33,23) + POWER(x34,23) + POWER(x35,23)
       + POWER(x36,23) + POWER(x37,23) + POWER(x38,23) + POWER(x39,23) + POWER(
      x40,23) + POWER(x41,23) + POWER(x42,23) + POWER(x43,23) + POWER(x44,23)
       + POWER(x45,23) + POWER(x46,23) + POWER(x47,23) + POWER(x48,23) + POWER(
      x49,23) + POWER(x50,23) + POWER(x51,23) + POWER(x52,23) + POWER(x53,23)
       + POWER(x54,23) + POWER(x55,23) + POWER(x56,23) + POWER(x57,23) + POWER(
      x58,23) + POWER(x59,23) + POWER(x60,23) + POWER(x61,23) + POWER(x62,23)
       + POWER(x63,23) + POWER(x64,23) + POWER(x65,23) + POWER(x66,23) + POWER(
      x67,23) + POWER(x68,23) + POWER(x69,23) + POWER(x70,23) + POWER(x71,23)
       + POWER(x72,23) + POWER(x73,23) + POWER(x74,23) + POWER(x75,23) + POWER(
      x76,23) + POWER(x77,23) + POWER(x78,23) + POWER(x79,23) + POWER(x80,23)
       + POWER(x81,23) + POWER(x82,23) + POWER(x83,23) + POWER(x84,23) + POWER(
      x85,23) + POWER(x86,23) + POWER(x87,23) + POWER(x88,23) + POWER(x89,23)
       + POWER(x90,23) + POWER(x91,23) + POWER(x92,23) + POWER(x93,23) + POWER(
      x94,23) + POWER(x95,23) + POWER(x96,23) + POWER(x97,23) + POWER(x98,23)
       + POWER(x99,23) + POWER(x100,23)) - x102 =L= 0;

e24.. sqr((-4.51998315018559) + POWER(x1,24) + POWER(x2,24) + POWER(x3,24) + 
      POWER(x4,24) + POWER(x5,24) + POWER(x6,24) + POWER(x7,24) + POWER(x8,24)
       + POWER(x9,24) + POWER(x10,24) + POWER(x11,24) + POWER(x12,24) + POWER(
      x13,24) + POWER(x14,24) + POWER(x15,24) + POWER(x16,24) + POWER(x17,24)
       + POWER(x18,24) + POWER(x19,24) + POWER(x20,24) + POWER(x21,24) + POWER(
      x22,24) + POWER(x23,24) + POWER(x24,24) + POWER(x25,24) + POWER(x26,24)
       + POWER(x27,24) + POWER(x28,24) + POWER(x29,24) + POWER(x30,24) + POWER(
      x31,24) + POWER(x32,24) + POWER(x33,24) + POWER(x34,24) + POWER(x35,24)
       + POWER(x36,24) + POWER(x37,24) + POWER(x38,24) + POWER(x39,24) + POWER(
      x40,24) + POWER(x41,24) + POWER(x42,24) + POWER(x43,24) + POWER(x44,24)
       + POWER(x45,24) + POWER(x46,24) + POWER(x47,24) + POWER(x48,24) + POWER(
      x49,24) + POWER(x50,24) + POWER(x51,24) + POWER(x52,24) + POWER(x53,24)
       + POWER(x54,24) + POWER(x55,24) + POWER(x56,24) + POWER(x57,24) + POWER(
      x58,24) + POWER(x59,24) + POWER(x60,24) + POWER(x61,24) + POWER(x62,24)
       + POWER(x63,24) + POWER(x64,24) + POWER(x65,24) + POWER(x66,24) + POWER(
      x67,24) + POWER(x68,24) + POWER(x69,24) + POWER(x70,24) + POWER(x71,24)
       + POWER(x72,24) + POWER(x73,24) + POWER(x74,24) + POWER(x75,24) + POWER(
      x76,24) + POWER(x77,24) + POWER(x78,24) + POWER(x79,24) + POWER(x80,24)
       + POWER(x81,24) + POWER(x82,24) + POWER(x83,24) + POWER(x84,24) + POWER(
      x85,24) + POWER(x86,24) + POWER(x87,24) + POWER(x88,24) + POWER(x89,24)
       + POWER(x90,24) + POWER(x91,24) + POWER(x92,24) + POWER(x93,24) + POWER(
      x94,24) + POWER(x95,24) + POWER(x96,24) + POWER(x97,24) + POWER(x98,24)
       + POWER(x99,24) + POWER(x100,24)) - x102 =L= 0;

e25.. sqr((-4.36696803388383) + POWER(x1,25) + POWER(x2,25) + POWER(x3,25) + 
      POWER(x4,25) + POWER(x5,25) + POWER(x6,25) + POWER(x7,25) + POWER(x8,25)
       + POWER(x9,25) + POWER(x10,25) + POWER(x11,25) + POWER(x12,25) + POWER(
      x13,25) + POWER(x14,25) + POWER(x15,25) + POWER(x16,25) + POWER(x17,25)
       + POWER(x18,25) + POWER(x19,25) + POWER(x20,25) + POWER(x21,25) + POWER(
      x22,25) + POWER(x23,25) + POWER(x24,25) + POWER(x25,25) + POWER(x26,25)
       + POWER(x27,25) + POWER(x28,25) + POWER(x29,25) + POWER(x30,25) + POWER(
      x31,25) + POWER(x32,25) + POWER(x33,25) + POWER(x34,25) + POWER(x35,25)
       + POWER(x36,25) + POWER(x37,25) + POWER(x38,25) + POWER(x39,25) + POWER(
      x40,25) + POWER(x41,25) + POWER(x42,25) + POWER(x43,25) + POWER(x44,25)
       + POWER(x45,25) + POWER(x46,25) + POWER(x47,25) + POWER(x48,25) + POWER(
      x49,25) + POWER(x50,25) + POWER(x51,25) + POWER(x52,25) + POWER(x53,25)
       + POWER(x54,25) + POWER(x55,25) + POWER(x56,25) + POWER(x57,25) + POWER(
      x58,25) + POWER(x59,25) + POWER(x60,25) + POWER(x61,25) + POWER(x62,25)
       + POWER(x63,25) + POWER(x64,25) + POWER(x65,25) + POWER(x66,25) + POWER(
      x67,25) + POWER(x68,25) + POWER(x69,25) + POWER(x70,25) + POWER(x71,25)
       + POWER(x72,25) + POWER(x73,25) + POWER(x74,25) + POWER(x75,25) + POWER(
      x76,25) + POWER(x77,25) + POWER(x78,25) + POWER(x79,25) + POWER(x80,25)
       + POWER(x81,25) + POWER(x82,25) + POWER(x83,25) + POWER(x84,25) + POWER(
      x85,25) + POWER(x86,25) + POWER(x87,25) + POWER(x88,25) + POWER(x89,25)
       + POWER(x90,25) + POWER(x91,25) + POWER(x92,25) + POWER(x93,25) + POWER(
      x94,25) + POWER(x95,25) + POWER(x96,25) + POWER(x97,25) + POWER(x98,25)
       + POWER(x99,25) + POWER(x100,25)) - x102 =L= 0;

e26.. sqr((-4.22534872977949) + POWER(x1,26) + POWER(x2,26) + POWER(x3,26) + 
      POWER(x4,26) + POWER(x5,26) + POWER(x6,26) + POWER(x7,26) + POWER(x8,26)
       + POWER(x9,26) + POWER(x10,26) + POWER(x11,26) + POWER(x12,26) + POWER(
      x13,26) + POWER(x14,26) + POWER(x15,26) + POWER(x16,26) + POWER(x17,26)
       + POWER(x18,26) + POWER(x19,26) + POWER(x20,26) + POWER(x21,26) + POWER(
      x22,26) + POWER(x23,26) + POWER(x24,26) + POWER(x25,26) + POWER(x26,26)
       + POWER(x27,26) + POWER(x28,26) + POWER(x29,26) + POWER(x30,26) + POWER(
      x31,26) + POWER(x32,26) + POWER(x33,26) + POWER(x34,26) + POWER(x35,26)
       + POWER(x36,26) + POWER(x37,26) + POWER(x38,26) + POWER(x39,26) + POWER(
      x40,26) + POWER(x41,26) + POWER(x42,26) + POWER(x43,26) + POWER(x44,26)
       + POWER(x45,26) + POWER(x46,26) + POWER(x47,26) + POWER(x48,26) + POWER(
      x49,26) + POWER(x50,26) + POWER(x51,26) + POWER(x52,26) + POWER(x53,26)
       + POWER(x54,26) + POWER(x55,26) + POWER(x56,26) + POWER(x57,26) + POWER(
      x58,26) + POWER(x59,26) + POWER(x60,26) + POWER(x61,26) + POWER(x62,26)
       + POWER(x63,26) + POWER(x64,26) + POWER(x65,26) + POWER(x66,26) + POWER(
      x67,26) + POWER(x68,26) + POWER(x69,26) + POWER(x70,26) + POWER(x71,26)
       + POWER(x72,26) + POWER(x73,26) + POWER(x74,26) + POWER(x75,26) + POWER(
      x76,26) + POWER(x77,26) + POWER(x78,26) + POWER(x79,26) + POWER(x80,26)
       + POWER(x81,26) + POWER(x82,26) + POWER(x83,26) + POWER(x84,26) + POWER(
      x85,26) + POWER(x86,26) + POWER(x87,26) + POWER(x88,26) + POWER(x89,26)
       + POWER(x90,26) + POWER(x91,26) + POWER(x92,26) + POWER(x93,26) + POWER(
      x94,26) + POWER(x95,26) + POWER(x96,26) + POWER(x97,26) + POWER(x98,26)
       + POWER(x99,26) + POWER(x100,26)) - x102 =L= 0;

e27.. sqr((-4.09390422842732) + POWER(x1,27) + POWER(x2,27) + POWER(x3,27) + 
      POWER(x4,27) + POWER(x5,27) + POWER(x6,27) + POWER(x7,27) + POWER(x8,27)
       + POWER(x9,27) + POWER(x10,27) + POWER(x11,27) + POWER(x12,27) + POWER(
      x13,27) + POWER(x14,27) + POWER(x15,27) + POWER(x16,27) + POWER(x17,27)
       + POWER(x18,27) + POWER(x19,27) + POWER(x20,27) + POWER(x21,27) + POWER(
      x22,27) + POWER(x23,27) + POWER(x24,27) + POWER(x25,27) + POWER(x26,27)
       + POWER(x27,27) + POWER(x28,27) + POWER(x29,27) + POWER(x30,27) + POWER(
      x31,27) + POWER(x32,27) + POWER(x33,27) + POWER(x34,27) + POWER(x35,27)
       + POWER(x36,27) + POWER(x37,27) + POWER(x38,27) + POWER(x39,27) + POWER(
      x40,27) + POWER(x41,27) + POWER(x42,27) + POWER(x43,27) + POWER(x44,27)
       + POWER(x45,27) + POWER(x46,27) + POWER(x47,27) + POWER(x48,27) + POWER(
      x49,27) + POWER(x50,27) + POWER(x51,27) + POWER(x52,27) + POWER(x53,27)
       + POWER(x54,27) + POWER(x55,27) + POWER(x56,27) + POWER(x57,27) + POWER(
      x58,27) + POWER(x59,27) + POWER(x60,27) + POWER(x61,27) + POWER(x62,27)
       + POWER(x63,27) + POWER(x64,27) + POWER(x65,27) + POWER(x66,27) + POWER(
      x67,27) + POWER(x68,27) + POWER(x69,27) + POWER(x70,27) + POWER(x71,27)
       + POWER(x72,27) + POWER(x73,27) + POWER(x74,27) + POWER(x75,27) + POWER(
      x76,27) + POWER(x77,27) + POWER(x78,27) + POWER(x79,27) + POWER(x80,27)
       + POWER(x81,27) + POWER(x82,27) + POWER(x83,27) + POWER(x84,27) + POWER(
      x85,27) + POWER(x86,27) + POWER(x87,27) + POWER(x88,27) + POWER(x89,27)
       + POWER(x90,27) + POWER(x91,27) + POWER(x92,27) + POWER(x93,27) + POWER(
      x94,27) + POWER(x95,27) + POWER(x96,27) + POWER(x97,27) + POWER(x98,27)
       + POWER(x99,27) + POWER(x100,27)) - x102 =L= 0;

e28.. sqr((-3.97158193435301) + POWER(x1,28) + POWER(x2,28) + POWER(x3,28) + 
      POWER(x4,28) + POWER(x5,28) + POWER(x6,28) + POWER(x7,28) + POWER(x8,28)
       + POWER(x9,28) + POWER(x10,28) + POWER(x11,28) + POWER(x12,28) + POWER(
      x13,28) + POWER(x14,28) + POWER(x15,28) + POWER(x16,28) + POWER(x17,28)
       + POWER(x18,28) + POWER(x19,28) + POWER(x20,28) + POWER(x21,28) + POWER(
      x22,28) + POWER(x23,28) + POWER(x24,28) + POWER(x25,28) + POWER(x26,28)
       + POWER(x27,28) + POWER(x28,28) + POWER(x29,28) + POWER(x30,28) + POWER(
      x31,28) + POWER(x32,28) + POWER(x33,28) + POWER(x34,28) + POWER(x35,28)
       + POWER(x36,28) + POWER(x37,28) + POWER(x38,28) + POWER(x39,28) + POWER(
      x40,28) + POWER(x41,28) + POWER(x42,28) + POWER(x43,28) + POWER(x44,28)
       + POWER(x45,28) + POWER(x46,28) + POWER(x47,28) + POWER(x48,28) + POWER(
      x49,28) + POWER(x50,28) + POWER(x51,28) + POWER(x52,28) + POWER(x53,28)
       + POWER(x54,28) + POWER(x55,28) + POWER(x56,28) + POWER(x57,28) + POWER(
      x58,28) + POWER(x59,28) + POWER(x60,28) + POWER(x61,28) + POWER(x62,28)
       + POWER(x63,28) + POWER(x64,28) + POWER(x65,28) + POWER(x66,28) + POWER(
      x67,28) + POWER(x68,28) + POWER(x69,28) + POWER(x70,28) + POWER(x71,28)
       + POWER(x72,28) + POWER(x73,28) + POWER(x74,28) + POWER(x75,28) + POWER(
      x76,28) + POWER(x77,28) + POWER(x78,28) + POWER(x79,28) + POWER(x80,28)
       + POWER(x81,28) + POWER(x82,28) + POWER(x83,28) + POWER(x84,28) + POWER(
      x85,28) + POWER(x86,28) + POWER(x87,28) + POWER(x88,28) + POWER(x89,28)
       + POWER(x90,28) + POWER(x91,28) + POWER(x92,28) + POWER(x93,28) + POWER(
      x94,28) + POWER(x95,28) + POWER(x96,28) + POWER(x97,28) + POWER(x98,28)
       + POWER(x99,28) + POWER(x100,28)) - x102 =L= 0;

e29.. sqr((-3.85746959706004) + POWER(x1,29) + POWER(x2,29) + POWER(x3,29) + 
      POWER(x4,29) + POWER(x5,29) + POWER(x6,29) + POWER(x7,29) + POWER(x8,29)
       + POWER(x9,29) + POWER(x10,29) + POWER(x11,29) + POWER(x12,29) + POWER(
      x13,29) + POWER(x14,29) + POWER(x15,29) + POWER(x16,29) + POWER(x17,29)
       + POWER(x18,29) + POWER(x19,29) + POWER(x20,29) + POWER(x21,29) + POWER(
      x22,29) + POWER(x23,29) + POWER(x24,29) + POWER(x25,29) + POWER(x26,29)
       + POWER(x27,29) + POWER(x28,29) + POWER(x29,29) + POWER(x30,29) + POWER(
      x31,29) + POWER(x32,29) + POWER(x33,29) + POWER(x34,29) + POWER(x35,29)
       + POWER(x36,29) + POWER(x37,29) + POWER(x38,29) + POWER(x39,29) + POWER(
      x40,29) + POWER(x41,29) + POWER(x42,29) + POWER(x43,29) + POWER(x44,29)
       + POWER(x45,29) + POWER(x46,29) + POWER(x47,29) + POWER(x48,29) + POWER(
      x49,29) + POWER(x50,29) + POWER(x51,29) + POWER(x52,29) + POWER(x53,29)
       + POWER(x54,29) + POWER(x55,29) + POWER(x56,29) + POWER(x57,29) + POWER(
      x58,29) + POWER(x59,29) + POWER(x60,29) + POWER(x61,29) + POWER(x62,29)
       + POWER(x63,29) + POWER(x64,29) + POWER(x65,29) + POWER(x66,29) + POWER(
      x67,29) + POWER(x68,29) + POWER(x69,29) + POWER(x70,29) + POWER(x71,29)
       + POWER(x72,29) + POWER(x73,29) + POWER(x74,29) + POWER(x75,29) + POWER(
      x76,29) + POWER(x77,29) + POWER(x78,29) + POWER(x79,29) + POWER(x80,29)
       + POWER(x81,29) + POWER(x82,29) + POWER(x83,29) + POWER(x84,29) + POWER(
      x85,29) + POWER(x86,29) + POWER(x87,29) + POWER(x88,29) + POWER(x89,29)
       + POWER(x90,29) + POWER(x91,29) + POWER(x92,29) + POWER(x93,29) + POWER(
      x94,29) + POWER(x95,29) + POWER(x96,29) + POWER(x97,29) + POWER(x98,29)
       + POWER(x99,29) + POWER(x100,29)) - x102 =L= 0;

e30.. sqr((-3.75077267474485) + POWER(x1,30) + POWER(x2,30) + POWER(x3,30) + 
      POWER(x4,30) + POWER(x5,30) + POWER(x6,30) + POWER(x7,30) + POWER(x8,30)
       + POWER(x9,30) + POWER(x10,30) + POWER(x11,30) + POWER(x12,30) + POWER(
      x13,30) + POWER(x14,30) + POWER(x15,30) + POWER(x16,30) + POWER(x17,30)
       + POWER(x18,30) + POWER(x19,30) + POWER(x20,30) + POWER(x21,30) + POWER(
      x22,30) + POWER(x23,30) + POWER(x24,30) + POWER(x25,30) + POWER(x26,30)
       + POWER(x27,30) + POWER(x28,30) + POWER(x29,30) + POWER(x30,30) + POWER(
      x31,30) + POWER(x32,30) + POWER(x33,30) + POWER(x34,30) + POWER(x35,30)
       + POWER(x36,30) + POWER(x37,30) + POWER(x38,30) + POWER(x39,30) + POWER(
      x40,30) + POWER(x41,30) + POWER(x42,30) + POWER(x43,30) + POWER(x44,30)
       + POWER(x45,30) + POWER(x46,30) + POWER(x47,30) + POWER(x48,30) + POWER(
      x49,30) + POWER(x50,30) + POWER(x51,30) + POWER(x52,30) + POWER(x53,30)
       + POWER(x54,30) + POWER(x55,30) + POWER(x56,30) + POWER(x57,30) + POWER(
      x58,30) + POWER(x59,30) + POWER(x60,30) + POWER(x61,30) + POWER(x62,30)
       + POWER(x63,30) + POWER(x64,30) + POWER(x65,30) + POWER(x66,30) + POWER(
      x67,30) + POWER(x68,30) + POWER(x69,30) + POWER(x70,30) + POWER(x71,30)
       + POWER(x72,30) + POWER(x73,30) + POWER(x74,30) + POWER(x75,30) + POWER(
      x76,30) + POWER(x77,30) + POWER(x78,30) + POWER(x79,30) + POWER(x80,30)
       + POWER(x81,30) + POWER(x82,30) + POWER(x83,30) + POWER(x84,30) + POWER(
      x85,30) + POWER(x86,30) + POWER(x87,30) + POWER(x88,30) + POWER(x89,30)
       + POWER(x90,30) + POWER(x91,30) + POWER(x92,30) + POWER(x93,30) + POWER(
      x94,30) + POWER(x95,30) + POWER(x96,30) + POWER(x97,30) + POWER(x98,30)
       + POWER(x99,30) + POWER(x100,30)) - x102 =L= 0;

e31.. sqr((-3.65079594231559) + POWER(x1,31) + POWER(x2,31) + POWER(x3,31) + 
      POWER(x4,31) + POWER(x5,31) + POWER(x6,31) + POWER(x7,31) + POWER(x8,31)
       + POWER(x9,31) + POWER(x10,31) + POWER(x11,31) + POWER(x12,31) + POWER(
      x13,31) + POWER(x14,31) + POWER(x15,31) + POWER(x16,31) + POWER(x17,31)
       + POWER(x18,31) + POWER(x19,31) + POWER(x20,31) + POWER(x21,31) + POWER(
      x22,31) + POWER(x23,31) + POWER(x24,31) + POWER(x25,31) + POWER(x26,31)
       + POWER(x27,31) + POWER(x28,31) + POWER(x29,31) + POWER(x30,31) + POWER(
      x31,31) + POWER(x32,31) + POWER(x33,31) + POWER(x34,31) + POWER(x35,31)
       + POWER(x36,31) + POWER(x37,31) + POWER(x38,31) + POWER(x39,31) + POWER(
      x40,31) + POWER(x41,31) + POWER(x42,31) + POWER(x43,31) + POWER(x44,31)
       + POWER(x45,31) + POWER(x46,31) + POWER(x47,31) + POWER(x48,31) + POWER(
      x49,31) + POWER(x50,31) + POWER(x51,31) + POWER(x52,31) + POWER(x53,31)
       + POWER(x54,31) + POWER(x55,31) + POWER(x56,31) + POWER(x57,31) + POWER(
      x58,31) + POWER(x59,31) + POWER(x60,31) + POWER(x61,31) + POWER(x62,31)
       + POWER(x63,31) + POWER(x64,31) + POWER(x65,31) + POWER(x66,31) + POWER(
      x67,31) + POWER(x68,31) + POWER(x69,31) + POWER(x70,31) + POWER(x71,31)
       + POWER(x72,31) + POWER(x73,31) + POWER(x74,31) + POWER(x75,31) + POWER(
      x76,31) + POWER(x77,31) + POWER(x78,31) + POWER(x79,31) + POWER(x80,31)
       + POWER(x81,31) + POWER(x82,31) + POWER(x83,31) + POWER(x84,31) + POWER(
      x85,31) + POWER(x86,31) + POWER(x87,31) + POWER(x88,31) + POWER(x89,31)
       + POWER(x90,31) + POWER(x91,31) + POWER(x92,31) + POWER(x93,31) + POWER(
      x94,31) + POWER(x95,31) + POWER(x96,31) + POWER(x97,31) + POWER(x98,31)
       + POWER(x99,31) + POWER(x100,31)) - x102 =L= 0;

e32.. sqr((-3.55692844340744) + POWER(x1,32) + POWER(x2,32) + POWER(x3,32) + 
      POWER(x4,32) + POWER(x5,32) + POWER(x6,32) + POWER(x7,32) + POWER(x8,32)
       + POWER(x9,32) + POWER(x10,32) + POWER(x11,32) + POWER(x12,32) + POWER(
      x13,32) + POWER(x14,32) + POWER(x15,32) + POWER(x16,32) + POWER(x17,32)
       + POWER(x18,32) + POWER(x19,32) + POWER(x20,32) + POWER(x21,32) + POWER(
      x22,32) + POWER(x23,32) + POWER(x24,32) + POWER(x25,32) + POWER(x26,32)
       + POWER(x27,32) + POWER(x28,32) + POWER(x29,32) + POWER(x30,32) + POWER(
      x31,32) + POWER(x32,32) + POWER(x33,32) + POWER(x34,32) + POWER(x35,32)
       + POWER(x36,32) + POWER(x37,32) + POWER(x38,32) + POWER(x39,32) + POWER(
      x40,32) + POWER(x41,32) + POWER(x42,32) + POWER(x43,32) + POWER(x44,32)
       + POWER(x45,32) + POWER(x46,32) + POWER(x47,32) + POWER(x48,32) + POWER(
      x49,32) + POWER(x50,32) + POWER(x51,32) + POWER(x52,32) + POWER(x53,32)
       + POWER(x54,32) + POWER(x55,32) + POWER(x56,32) + POWER(x57,32) + POWER(
      x58,32) + POWER(x59,32) + POWER(x60,32) + POWER(x61,32) + POWER(x62,32)
       + POWER(x63,32) + POWER(x64,32) + POWER(x65,32) + POWER(x66,32) + POWER(
      x67,32) + POWER(x68,32) + POWER(x69,32) + POWER(x70,32) + POWER(x71,32)
       + POWER(x72,32) + POWER(x73,32) + POWER(x74,32) + POWER(x75,32) + POWER(
      x76,32) + POWER(x77,32) + POWER(x78,32) + POWER(x79,32) + POWER(x80,32)
       + POWER(x81,32) + POWER(x82,32) + POWER(x83,32) + POWER(x84,32) + POWER(
      x85,32) + POWER(x86,32) + POWER(x87,32) + POWER(x88,32) + POWER(x89,32)
       + POWER(x90,32) + POWER(x91,32) + POWER(x92,32) + POWER(x93,32) + POWER(
      x94,32) + POWER(x95,32) + POWER(x96,32) + POWER(x97,32) + POWER(x98,32)
       + POWER(x99,32) + POWER(x100,32)) - x102 =L= 0;

e33.. sqr((-3.46863109792481) + POWER(x1,33) + POWER(x2,33) + POWER(x3,33) + 
      POWER(x4,33) + POWER(x5,33) + POWER(x6,33) + POWER(x7,33) + POWER(x8,33)
       + POWER(x9,33) + POWER(x10,33) + POWER(x11,33) + POWER(x12,33) + POWER(
      x13,33) + POWER(x14,33) + POWER(x15,33) + POWER(x16,33) + POWER(x17,33)
       + POWER(x18,33) + POWER(x19,33) + POWER(x20,33) + POWER(x21,33) + POWER(
      x22,33) + POWER(x23,33) + POWER(x24,33) + POWER(x25,33) + POWER(x26,33)
       + POWER(x27,33) + POWER(x28,33) + POWER(x29,33) + POWER(x30,33) + POWER(
      x31,33) + POWER(x32,33) + POWER(x33,33) + POWER(x34,33) + POWER(x35,33)
       + POWER(x36,33) + POWER(x37,33) + POWER(x38,33) + POWER(x39,33) + POWER(
      x40,33) + POWER(x41,33) + POWER(x42,33) + POWER(x43,33) + POWER(x44,33)
       + POWER(x45,33) + POWER(x46,33) + POWER(x47,33) + POWER(x48,33) + POWER(
      x49,33) + POWER(x50,33) + POWER(x51,33) + POWER(x52,33) + POWER(x53,33)
       + POWER(x54,33) + POWER(x55,33) + POWER(x56,33) + POWER(x57,33) + POWER(
      x58,33) + POWER(x59,33) + POWER(x60,33) + POWER(x61,33) + POWER(x62,33)
       + POWER(x63,33) + POWER(x64,33) + POWER(x65,33) + POWER(x66,33) + POWER(
      x67,33) + POWER(x68,33) + POWER(x69,33) + POWER(x70,33) + POWER(x71,33)
       + POWER(x72,33) + POWER(x73,33) + POWER(x74,33) + POWER(x75,33) + POWER(
      x76,33) + POWER(x77,33) + POWER(x78,33) + POWER(x79,33) + POWER(x80,33)
       + POWER(x81,33) + POWER(x82,33) + POWER(x83,33) + POWER(x84,33) + POWER(
      x85,33) + POWER(x86,33) + POWER(x87,33) + POWER(x88,33) + POWER(x89,33)
       + POWER(x90,33) + POWER(x91,33) + POWER(x92,33) + POWER(x93,33) + POWER(
      x94,33) + POWER(x95,33) + POWER(x96,33) + POWER(x97,33) + POWER(x98,33)
       + POWER(x99,33) + POWER(x100,33)) - x102 =L= 0;

e34.. sqr((-3.38542643400482) + POWER(x1,34) + POWER(x2,34) + POWER(x3,34) + 
      POWER(x4,34) + POWER(x5,34) + POWER(x6,34) + POWER(x7,34) + POWER(x8,34)
       + POWER(x9,34) + POWER(x10,34) + POWER(x11,34) + POWER(x12,34) + POWER(
      x13,34) + POWER(x14,34) + POWER(x15,34) + POWER(x16,34) + POWER(x17,34)
       + POWER(x18,34) + POWER(x19,34) + POWER(x20,34) + POWER(x21,34) + POWER(
      x22,34) + POWER(x23,34) + POWER(x24,34) + POWER(x25,34) + POWER(x26,34)
       + POWER(x27,34) + POWER(x28,34) + POWER(x29,34) + POWER(x30,34) + POWER(
      x31,34) + POWER(x32,34) + POWER(x33,34) + POWER(x34,34) + POWER(x35,34)
       + POWER(x36,34) + POWER(x37,34) + POWER(x38,34) + POWER(x39,34) + POWER(
      x40,34) + POWER(x41,34) + POWER(x42,34) + POWER(x43,34) + POWER(x44,34)
       + POWER(x45,34) + POWER(x46,34) + POWER(x47,34) + POWER(x48,34) + POWER(
      x49,34) + POWER(x50,34) + POWER(x51,34) + POWER(x52,34) + POWER(x53,34)
       + POWER(x54,34) + POWER(x55,34) + POWER(x56,34) + POWER(x57,34) + POWER(
      x58,34) + POWER(x59,34) + POWER(x60,34) + POWER(x61,34) + POWER(x62,34)
       + POWER(x63,34) + POWER(x64,34) + POWER(x65,34) + POWER(x66,34) + POWER(
      x67,34) + POWER(x68,34) + POWER(x69,34) + POWER(x70,34) + POWER(x71,34)
       + POWER(x72,34) + POWER(x73,34) + POWER(x74,34) + POWER(x75,34) + POWER(
      x76,34) + POWER(x77,34) + POWER(x78,34) + POWER(x79,34) + POWER(x80,34)
       + POWER(x81,34) + POWER(x82,34) + POWER(x83,34) + POWER(x84,34) + POWER(
      x85,34) + POWER(x86,34) + POWER(x87,34) + POWER(x88,34) + POWER(x89,34)
       + POWER(x90,34) + POWER(x91,34) + POWER(x92,34) + POWER(x93,34) + POWER(
      x94,34) + POWER(x95,34) + POWER(x96,34) + POWER(x97,34) + POWER(x98,34)
       + POWER(x99,34) + POWER(x100,34)) - x102 =L= 0;

e35.. sqr((-3.30689003132034) + POWER(x1,35) + POWER(x2,35) + POWER(x3,35) + 
      POWER(x4,35) + POWER(x5,35) + POWER(x6,35) + POWER(x7,35) + POWER(x8,35)
       + POWER(x9,35) + POWER(x10,35) + POWER(x11,35) + POWER(x12,35) + POWER(
      x13,35) + POWER(x14,35) + POWER(x15,35) + POWER(x16,35) + POWER(x17,35)
       + POWER(x18,35) + POWER(x19,35) + POWER(x20,35) + POWER(x21,35) + POWER(
      x22,35) + POWER(x23,35) + POWER(x24,35) + POWER(x25,35) + POWER(x26,35)
       + POWER(x27,35) + POWER(x28,35) + POWER(x29,35) + POWER(x30,35) + POWER(
      x31,35) + POWER(x32,35) + POWER(x33,35) + POWER(x34,35) + POWER(x35,35)
       + POWER(x36,35) + POWER(x37,35) + POWER(x38,35) + POWER(x39,35) + POWER(
      x40,35) + POWER(x41,35) + POWER(x42,35) + POWER(x43,35) + POWER(x44,35)
       + POWER(x45,35) + POWER(x46,35) + POWER(x47,35) + POWER(x48,35) + POWER(
      x49,35) + POWER(x50,35) + POWER(x51,35) + POWER(x52,35) + POWER(x53,35)
       + POWER(x54,35) + POWER(x55,35) + POWER(x56,35) + POWER(x57,35) + POWER(
      x58,35) + POWER(x59,35) + POWER(x60,35) + POWER(x61,35) + POWER(x62,35)
       + POWER(x63,35) + POWER(x64,35) + POWER(x65,35) + POWER(x66,35) + POWER(
      x67,35) + POWER(x68,35) + POWER(x69,35) + POWER(x70,35) + POWER(x71,35)
       + POWER(x72,35) + POWER(x73,35) + POWER(x74,35) + POWER(x75,35) + POWER(
      x76,35) + POWER(x77,35) + POWER(x78,35) + POWER(x79,35) + POWER(x80,35)
       + POWER(x81,35) + POWER(x82,35) + POWER(x83,35) + POWER(x84,35) + POWER(
      x85,35) + POWER(x86,35) + POWER(x87,35) + POWER(x88,35) + POWER(x89,35)
       + POWER(x90,35) + POWER(x91,35) + POWER(x92,35) + POWER(x93,35) + POWER(
      x94,35) + POWER(x95,35) + POWER(x96,35) + POWER(x97,35) + POWER(x98,35)
       + POWER(x99,35) + POWER(x100,35)) - x102 =L= 0;

e36.. sqr((-3.23264335195559) + POWER(x1,36) + POWER(x2,36) + POWER(x3,36) + 
      POWER(x4,36) + POWER(x5,36) + POWER(x6,36) + POWER(x7,36) + POWER(x8,36)
       + POWER(x9,36) + POWER(x10,36) + POWER(x11,36) + POWER(x12,36) + POWER(
      x13,36) + POWER(x14,36) + POWER(x15,36) + POWER(x16,36) + POWER(x17,36)
       + POWER(x18,36) + POWER(x19,36) + POWER(x20,36) + POWER(x21,36) + POWER(
      x22,36) + POWER(x23,36) + POWER(x24,36) + POWER(x25,36) + POWER(x26,36)
       + POWER(x27,36) + POWER(x28,36) + POWER(x29,36) + POWER(x30,36) + POWER(
      x31,36) + POWER(x32,36) + POWER(x33,36) + POWER(x34,36) + POWER(x35,36)
       + POWER(x36,36) + POWER(x37,36) + POWER(x38,36) + POWER(x39,36) + POWER(
      x40,36) + POWER(x41,36) + POWER(x42,36) + POWER(x43,36) + POWER(x44,36)
       + POWER(x45,36) + POWER(x46,36) + POWER(x47,36) + POWER(x48,36) + POWER(
      x49,36) + POWER(x50,36) + POWER(x51,36) + POWER(x52,36) + POWER(x53,36)
       + POWER(x54,36) + POWER(x55,36) + POWER(x56,36) + POWER(x57,36) + POWER(
      x58,36) + POWER(x59,36) + POWER(x60,36) + POWER(x61,36) + POWER(x62,36)
       + POWER(x63,36) + POWER(x64,36) + POWER(x65,36) + POWER(x66,36) + POWER(
      x67,36) + POWER(x68,36) + POWER(x69,36) + POWER(x70,36) + POWER(x71,36)
       + POWER(x72,36) + POWER(x73,36) + POWER(x74,36) + POWER(x75,36) + POWER(
      x76,36) + POWER(x77,36) + POWER(x78,36) + POWER(x79,36) + POWER(x80,36)
       + POWER(x81,36) + POWER(x82,36) + POWER(x83,36) + POWER(x84,36) + POWER(
      x85,36) + POWER(x86,36) + POWER(x87,36) + POWER(x88,36) + POWER(x89,36)
       + POWER(x90,36) + POWER(x91,36) + POWER(x92,36) + POWER(x93,36) + POWER(
      x94,36) + POWER(x95,36) + POWER(x96,36) + POWER(x97,36) + POWER(x98,36)
       + POWER(x99,36) + POWER(x100,36)) - x102 =L= 0;

e37.. sqr((-3.16234770324872) + POWER(x1,37) + POWER(x2,37) + POWER(x3,37) + 
      POWER(x4,37) + POWER(x5,37) + POWER(x6,37) + POWER(x7,37) + POWER(x8,37)
       + POWER(x9,37) + POWER(x10,37) + POWER(x11,37) + POWER(x12,37) + POWER(
      x13,37) + POWER(x14,37) + POWER(x15,37) + POWER(x16,37) + POWER(x17,37)
       + POWER(x18,37) + POWER(x19,37) + POWER(x20,37) + POWER(x21,37) + POWER(
      x22,37) + POWER(x23,37) + POWER(x24,37) + POWER(x25,37) + POWER(x26,37)
       + POWER(x27,37) + POWER(x28,37) + POWER(x29,37) + POWER(x30,37) + POWER(
      x31,37) + POWER(x32,37) + POWER(x33,37) + POWER(x34,37) + POWER(x35,37)
       + POWER(x36,37) + POWER(x37,37) + POWER(x38,37) + POWER(x39,37) + POWER(
      x40,37) + POWER(x41,37) + POWER(x42,37) + POWER(x43,37) + POWER(x44,37)
       + POWER(x45,37) + POWER(x46,37) + POWER(x47,37) + POWER(x48,37) + POWER(
      x49,37) + POWER(x50,37) + POWER(x51,37) + POWER(x52,37) + POWER(x53,37)
       + POWER(x54,37) + POWER(x55,37) + POWER(x56,37) + POWER(x57,37) + POWER(
      x58,37) + POWER(x59,37) + POWER(x60,37) + POWER(x61,37) + POWER(x62,37)
       + POWER(x63,37) + POWER(x64,37) + POWER(x65,37) + POWER(x66,37) + POWER(
      x67,37) + POWER(x68,37) + POWER(x69,37) + POWER(x70,37) + POWER(x71,37)
       + POWER(x72,37) + POWER(x73,37) + POWER(x74,37) + POWER(x75,37) + POWER(
      x76,37) + POWER(x77,37) + POWER(x78,37) + POWER(x79,37) + POWER(x80,37)
       + POWER(x81,37) + POWER(x82,37) + POWER(x83,37) + POWER(x84,37) + POWER(
      x85,37) + POWER(x86,37) + POWER(x87,37) + POWER(x88,37) + POWER(x89,37)
       + POWER(x90,37) + POWER(x91,37) + POWER(x92,37) + POWER(x93,37) + POWER(
      x94,37) + POWER(x95,37) + POWER(x96,37) + POWER(x97,37) + POWER(x98,37)
       + POWER(x99,37) + POWER(x100,37)) - x102 =L= 0;

e38.. sqr((-3.09569912942795) + POWER(x1,38) + POWER(x2,38) + POWER(x3,38) + 
      POWER(x4,38) + POWER(x5,38) + POWER(x6,38) + POWER(x7,38) + POWER(x8,38)
       + POWER(x9,38) + POWER(x10,38) + POWER(x11,38) + POWER(x12,38) + POWER(
      x13,38) + POWER(x14,38) + POWER(x15,38) + POWER(x16,38) + POWER(x17,38)
       + POWER(x18,38) + POWER(x19,38) + POWER(x20,38) + POWER(x21,38) + POWER(
      x22,38) + POWER(x23,38) + POWER(x24,38) + POWER(x25,38) + POWER(x26,38)
       + POWER(x27,38) + POWER(x28,38) + POWER(x29,38) + POWER(x30,38) + POWER(
      x31,38) + POWER(x32,38) + POWER(x33,38) + POWER(x34,38) + POWER(x35,38)
       + POWER(x36,38) + POWER(x37,38) + POWER(x38,38) + POWER(x39,38) + POWER(
      x40,38) + POWER(x41,38) + POWER(x42,38) + POWER(x43,38) + POWER(x44,38)
       + POWER(x45,38) + POWER(x46,38) + POWER(x47,38) + POWER(x48,38) + POWER(
      x49,38) + POWER(x50,38) + POWER(x51,38) + POWER(x52,38) + POWER(x53,38)
       + POWER(x54,38) + POWER(x55,38) + POWER(x56,38) + POWER(x57,38) + POWER(
      x58,38) + POWER(x59,38) + POWER(x60,38) + POWER(x61,38) + POWER(x62,38)
       + POWER(x63,38) + POWER(x64,38) + POWER(x65,38) + POWER(x66,38) + POWER(
      x67,38) + POWER(x68,38) + POWER(x69,38) + POWER(x70,38) + POWER(x71,38)
       + POWER(x72,38) + POWER(x73,38) + POWER(x74,38) + POWER(x75,38) + POWER(
      x76,38) + POWER(x77,38) + POWER(x78,38) + POWER(x79,38) + POWER(x80,38)
       + POWER(x81,38) + POWER(x82,38) + POWER(x83,38) + POWER(x84,38) + POWER(
      x85,38) + POWER(x86,38) + POWER(x87,38) + POWER(x88,38) + POWER(x89,38)
       + POWER(x90,38) + POWER(x91,38) + POWER(x92,38) + POWER(x93,38) + POWER(
      x94,38) + POWER(x95,38) + POWER(x96,38) + POWER(x97,38) + POWER(x98,38)
       + POWER(x99,38) + POWER(x100,38)) - x102 =L= 0;

e39.. sqr((-3.03242406950239) + POWER(x1,39) + POWER(x2,39) + POWER(x3,39) + 
      POWER(x4,39) + POWER(x5,39) + POWER(x6,39) + POWER(x7,39) + POWER(x8,39)
       + POWER(x9,39) + POWER(x10,39) + POWER(x11,39) + POWER(x12,39) + POWER(
      x13,39) + POWER(x14,39) + POWER(x15,39) + POWER(x16,39) + POWER(x17,39)
       + POWER(x18,39) + POWER(x19,39) + POWER(x20,39) + POWER(x21,39) + POWER(
      x22,39) + POWER(x23,39) + POWER(x24,39) + POWER(x25,39) + POWER(x26,39)
       + POWER(x27,39) + POWER(x28,39) + POWER(x29,39) + POWER(x30,39) + POWER(
      x31,39) + POWER(x32,39) + POWER(x33,39) + POWER(x34,39) + POWER(x35,39)
       + POWER(x36,39) + POWER(x37,39) + POWER(x38,39) + POWER(x39,39) + POWER(
      x40,39) + POWER(x41,39) + POWER(x42,39) + POWER(x43,39) + POWER(x44,39)
       + POWER(x45,39) + POWER(x46,39) + POWER(x47,39) + POWER(x48,39) + POWER(
      x49,39) + POWER(x50,39) + POWER(x51,39) + POWER(x52,39) + POWER(x53,39)
       + POWER(x54,39) + POWER(x55,39) + POWER(x56,39) + POWER(x57,39) + POWER(
      x58,39) + POWER(x59,39) + POWER(x60,39) + POWER(x61,39) + POWER(x62,39)
       + POWER(x63,39) + POWER(x64,39) + POWER(x65,39) + POWER(x66,39) + POWER(
      x67,39) + POWER(x68,39) + POWER(x69,39) + POWER(x70,39) + POWER(x71,39)
       + POWER(x72,39) + POWER(x73,39) + POWER(x74,39) + POWER(x75,39) + POWER(
      x76,39) + POWER(x77,39) + POWER(x78,39) + POWER(x79,39) + POWER(x80,39)
       + POWER(x81,39) + POWER(x82,39) + POWER(x83,39) + POWER(x84,39) + POWER(
      x85,39) + POWER(x86,39) + POWER(x87,39) + POWER(x88,39) + POWER(x89,39)
       + POWER(x90,39) + POWER(x91,39) + POWER(x92,39) + POWER(x93,39) + POWER(
      x94,39) + POWER(x95,39) + POWER(x96,39) + POWER(x97,39) + POWER(x98,39)
       + POWER(x99,39) + POWER(x100,39)) - x102 =L= 0;

e40.. sqr((-2.97227565058344) + POWER(x1,40) + POWER(x2,40) + POWER(x3,40) + 
      POWER(x4,40) + POWER(x5,40) + POWER(x6,40) + POWER(x7,40) + POWER(x8,40)
       + POWER(x9,40) + POWER(x10,40) + POWER(x11,40) + POWER(x12,40) + POWER(
      x13,40) + POWER(x14,40) + POWER(x15,40) + POWER(x16,40) + POWER(x17,40)
       + POWER(x18,40) + POWER(x19,40) + POWER(x20,40) + POWER(x21,40) + POWER(
      x22,40) + POWER(x23,40) + POWER(x24,40) + POWER(x25,40) + POWER(x26,40)
       + POWER(x27,40) + POWER(x28,40) + POWER(x29,40) + POWER(x30,40) + POWER(
      x31,40) + POWER(x32,40) + POWER(x33,40) + POWER(x34,40) + POWER(x35,40)
       + POWER(x36,40) + POWER(x37,40) + POWER(x38,40) + POWER(x39,40) + POWER(
      x40,40) + POWER(x41,40) + POWER(x42,40) + POWER(x43,40) + POWER(x44,40)
       + POWER(x45,40) + POWER(x46,40) + POWER(x47,40) + POWER(x48,40) + POWER(
      x49,40) + POWER(x50,40) + POWER(x51,40) + POWER(x52,40) + POWER(x53,40)
       + POWER(x54,40) + POWER(x55,40) + POWER(x56,40) + POWER(x57,40) + POWER(
      x58,40) + POWER(x59,40) + POWER(x60,40) + POWER(x61,40) + POWER(x62,40)
       + POWER(x63,40) + POWER(x64,40) + POWER(x65,40) + POWER(x66,40) + POWER(
      x67,40) + POWER(x68,40) + POWER(x69,40) + POWER(x70,40) + POWER(x71,40)
       + POWER(x72,40) + POWER(x73,40) + POWER(x74,40) + POWER(x75,40) + POWER(
      x76,40) + POWER(x77,40) + POWER(x78,40) + POWER(x79,40) + POWER(x80,40)
       + POWER(x81,40) + POWER(x82,40) + POWER(x83,40) + POWER(x84,40) + POWER(
      x85,40) + POWER(x86,40) + POWER(x87,40) + POWER(x88,40) + POWER(x89,40)
       + POWER(x90,40) + POWER(x91,40) + POWER(x92,40) + POWER(x93,40) + POWER(
      x94,40) + POWER(x95,40) + POWER(x96,40) + POWER(x97,40) + POWER(x98,40)
       + POWER(x99,40) + POWER(x100,40)) - x102 =L= 0;

e41.. sqr((-2.91503051073177) + POWER(x1,41) + POWER(x2,41) + POWER(x3,41) + 
      POWER(x4,41) + POWER(x5,41) + POWER(x6,41) + POWER(x7,41) + POWER(x8,41)
       + POWER(x9,41) + POWER(x10,41) + POWER(x11,41) + POWER(x12,41) + POWER(
      x13,41) + POWER(x14,41) + POWER(x15,41) + POWER(x16,41) + POWER(x17,41)
       + POWER(x18,41) + POWER(x19,41) + POWER(x20,41) + POWER(x21,41) + POWER(
      x22,41) + POWER(x23,41) + POWER(x24,41) + POWER(x25,41) + POWER(x26,41)
       + POWER(x27,41) + POWER(x28,41) + POWER(x29,41) + POWER(x30,41) + POWER(
      x31,41) + POWER(x32,41) + POWER(x33,41) + POWER(x34,41) + POWER(x35,41)
       + POWER(x36,41) + POWER(x37,41) + POWER(x38,41) + POWER(x39,41) + POWER(
      x40,41) + POWER(x41,41) + POWER(x42,41) + POWER(x43,41) + POWER(x44,41)
       + POWER(x45,41) + POWER(x46,41) + POWER(x47,41) + POWER(x48,41) + POWER(
      x49,41) + POWER(x50,41) + POWER(x51,41) + POWER(x52,41) + POWER(x53,41)
       + POWER(x54,41) + POWER(x55,41) + POWER(x56,41) + POWER(x57,41) + POWER(
      x58,41) + POWER(x59,41) + POWER(x60,41) + POWER(x61,41) + POWER(x62,41)
       + POWER(x63,41) + POWER(x64,41) + POWER(x65,41) + POWER(x66,41) + POWER(
      x67,41) + POWER(x68,41) + POWER(x69,41) + POWER(x70,41) + POWER(x71,41)
       + POWER(x72,41) + POWER(x73,41) + POWER(x74,41) + POWER(x75,41) + POWER(
      x76,41) + POWER(x77,41) + POWER(x78,41) + POWER(x79,41) + POWER(x80,41)
       + POWER(x81,41) + POWER(x82,41) + POWER(x83,41) + POWER(x84,41) + POWER(
      x85,41) + POWER(x86,41) + POWER(x87,41) + POWER(x88,41) + POWER(x89,41)
       + POWER(x90,41) + POWER(x91,41) + POWER(x92,41) + POWER(x93,41) + POWER(
      x94,41) + POWER(x95,41) + POWER(x96,41) + POWER(x97,41) + POWER(x98,41)
       + POWER(x99,41) + POWER(x100,41)) - x102 =L= 0;

e42.. sqr((-2.86048606512811) + POWER(x1,42) + POWER(x2,42) + POWER(x3,42) + 
      POWER(x4,42) + POWER(x5,42) + POWER(x6,42) + POWER(x7,42) + POWER(x8,42)
       + POWER(x9,42) + POWER(x10,42) + POWER(x11,42) + POWER(x12,42) + POWER(
      x13,42) + POWER(x14,42) + POWER(x15,42) + POWER(x16,42) + POWER(x17,42)
       + POWER(x18,42) + POWER(x19,42) + POWER(x20,42) + POWER(x21,42) + POWER(
      x22,42) + POWER(x23,42) + POWER(x24,42) + POWER(x25,42) + POWER(x26,42)
       + POWER(x27,42) + POWER(x28,42) + POWER(x29,42) + POWER(x30,42) + POWER(
      x31,42) + POWER(x32,42) + POWER(x33,42) + POWER(x34,42) + POWER(x35,42)
       + POWER(x36,42) + POWER(x37,42) + POWER(x38,42) + POWER(x39,42) + POWER(
      x40,42) + POWER(x41,42) + POWER(x42,42) + POWER(x43,42) + POWER(x44,42)
       + POWER(x45,42) + POWER(x46,42) + POWER(x47,42) + POWER(x48,42) + POWER(
      x49,42) + POWER(x50,42) + POWER(x51,42) + POWER(x52,42) + POWER(x53,42)
       + POWER(x54,42) + POWER(x55,42) + POWER(x56,42) + POWER(x57,42) + POWER(
      x58,42) + POWER(x59,42) + POWER(x60,42) + POWER(x61,42) + POWER(x62,42)
       + POWER(x63,42) + POWER(x64,42) + POWER(x65,42) + POWER(x66,42) + POWER(
      x67,42) + POWER(x68,42) + POWER(x69,42) + POWER(x70,42) + POWER(x71,42)
       + POWER(x72,42) + POWER(x73,42) + POWER(x74,42) + POWER(x75,42) + POWER(
      x76,42) + POWER(x77,42) + POWER(x78,42) + POWER(x79,42) + POWER(x80,42)
       + POWER(x81,42) + POWER(x82,42) + POWER(x83,42) + POWER(x84,42) + POWER(
      x85,42) + POWER(x86,42) + POWER(x87,42) + POWER(x88,42) + POWER(x89,42)
       + POWER(x90,42) + POWER(x91,42) + POWER(x92,42) + POWER(x93,42) + POWER(
      x94,42) + POWER(x95,42) + POWER(x96,42) + POWER(x97,42) + POWER(x98,42)
       + POWER(x99,42) + POWER(x100,42)) - x102 =L= 0;

e43.. sqr((-2.80845814503886) + POWER(x1,43) + POWER(x2,43) + POWER(x3,43) + 
      POWER(x4,43) + POWER(x5,43) + POWER(x6,43) + POWER(x7,43) + POWER(x8,43)
       + POWER(x9,43) + POWER(x10,43) + POWER(x11,43) + POWER(x12,43) + POWER(
      x13,43) + POWER(x14,43) + POWER(x15,43) + POWER(x16,43) + POWER(x17,43)
       + POWER(x18,43) + POWER(x19,43) + POWER(x20,43) + POWER(x21,43) + POWER(
      x22,43) + POWER(x23,43) + POWER(x24,43) + POWER(x25,43) + POWER(x26,43)
       + POWER(x27,43) + POWER(x28,43) + POWER(x29,43) + POWER(x30,43) + POWER(
      x31,43) + POWER(x32,43) + POWER(x33,43) + POWER(x34,43) + POWER(x35,43)
       + POWER(x36,43) + POWER(x37,43) + POWER(x38,43) + POWER(x39,43) + POWER(
      x40,43) + POWER(x41,43) + POWER(x42,43) + POWER(x43,43) + POWER(x44,43)
       + POWER(x45,43) + POWER(x46,43) + POWER(x47,43) + POWER(x48,43) + POWER(
      x49,43) + POWER(x50,43) + POWER(x51,43) + POWER(x52,43) + POWER(x53,43)
       + POWER(x54,43) + POWER(x55,43) + POWER(x56,43) + POWER(x57,43) + POWER(
      x58,43) + POWER(x59,43) + POWER(x60,43) + POWER(x61,43) + POWER(x62,43)
       + POWER(x63,43) + POWER(x64,43) + POWER(x65,43) + POWER(x66,43) + POWER(
      x67,43) + POWER(x68,43) + POWER(x69,43) + POWER(x70,43) + POWER(x71,43)
       + POWER(x72,43) + POWER(x73,43) + POWER(x74,43) + POWER(x75,43) + POWER(
      x76,43) + POWER(x77,43) + POWER(x78,43) + POWER(x79,43) + POWER(x80,43)
       + POWER(x81,43) + POWER(x82,43) + POWER(x83,43) + POWER(x84,43) + POWER(
      x85,43) + POWER(x86,43) + POWER(x87,43) + POWER(x88,43) + POWER(x89,43)
       + POWER(x90,43) + POWER(x91,43) + POWER(x92,43) + POWER(x93,43) + POWER(
      x94,43) + POWER(x95,43) + POWER(x96,43) + POWER(x97,43) + POWER(x98,43)
       + POWER(x99,43) + POWER(x100,43)) - x102 =L= 0;

e44.. sqr((-2.75877895158644) + POWER(x1,44) + POWER(x2,44) + POWER(x3,44) + 
      POWER(x4,44) + POWER(x5,44) + POWER(x6,44) + POWER(x7,44) + POWER(x8,44)
       + POWER(x9,44) + POWER(x10,44) + POWER(x11,44) + POWER(x12,44) + POWER(
      x13,44) + POWER(x14,44) + POWER(x15,44) + POWER(x16,44) + POWER(x17,44)
       + POWER(x18,44) + POWER(x19,44) + POWER(x20,44) + POWER(x21,44) + POWER(
      x22,44) + POWER(x23,44) + POWER(x24,44) + POWER(x25,44) + POWER(x26,44)
       + POWER(x27,44) + POWER(x28,44) + POWER(x29,44) + POWER(x30,44) + POWER(
      x31,44) + POWER(x32,44) + POWER(x33,44) + POWER(x34,44) + POWER(x35,44)
       + POWER(x36,44) + POWER(x37,44) + POWER(x38,44) + POWER(x39,44) + POWER(
      x40,44) + POWER(x41,44) + POWER(x42,44) + POWER(x43,44) + POWER(x44,44)
       + POWER(x45,44) + POWER(x46,44) + POWER(x47,44) + POWER(x48,44) + POWER(
      x49,44) + POWER(x50,44) + POWER(x51,44) + POWER(x52,44) + POWER(x53,44)
       + POWER(x54,44) + POWER(x55,44) + POWER(x56,44) + POWER(x57,44) + POWER(
      x58,44) + POWER(x59,44) + POWER(x60,44) + POWER(x61,44) + POWER(x62,44)
       + POWER(x63,44) + POWER(x64,44) + POWER(x65,44) + POWER(x66,44) + POWER(
      x67,44) + POWER(x68,44) + POWER(x69,44) + POWER(x70,44) + POWER(x71,44)
       + POWER(x72,44) + POWER(x73,44) + POWER(x74,44) + POWER(x75,44) + POWER(
      x76,44) + POWER(x77,44) + POWER(x78,44) + POWER(x79,44) + POWER(x80,44)
       + POWER(x81,44) + POWER(x82,44) + POWER(x83,44) + POWER(x84,44) + POWER(
      x85,44) + POWER(x86,44) + POWER(x87,44) + POWER(x88,44) + POWER(x89,44)
       + POWER(x90,44) + POWER(x91,44) + POWER(x92,44) + POWER(x93,44) + POWER(
      x94,44) + POWER(x95,44) + POWER(x96,44) + POWER(x97,44) + POWER(x98,44)
       + POWER(x99,44) + POWER(x100,44)) - x102 =L= 0;

e45.. sqr((-2.71129527641913) + POWER(x1,45) + POWER(x2,45) + POWER(x3,45) + 
      POWER(x4,45) + POWER(x5,45) + POWER(x6,45) + POWER(x7,45) + POWER(x8,45)
       + POWER(x9,45) + POWER(x10,45) + POWER(x11,45) + POWER(x12,45) + POWER(
      x13,45) + POWER(x14,45) + POWER(x15,45) + POWER(x16,45) + POWER(x17,45)
       + POWER(x18,45) + POWER(x19,45) + POWER(x20,45) + POWER(x21,45) + POWER(
      x22,45) + POWER(x23,45) + POWER(x24,45) + POWER(x25,45) + POWER(x26,45)
       + POWER(x27,45) + POWER(x28,45) + POWER(x29,45) + POWER(x30,45) + POWER(
      x31,45) + POWER(x32,45) + POWER(x33,45) + POWER(x34,45) + POWER(x35,45)
       + POWER(x36,45) + POWER(x37,45) + POWER(x38,45) + POWER(x39,45) + POWER(
      x40,45) + POWER(x41,45) + POWER(x42,45) + POWER(x43,45) + POWER(x44,45)
       + POWER(x45,45) + POWER(x46,45) + POWER(x47,45) + POWER(x48,45) + POWER(
      x49,45) + POWER(x50,45) + POWER(x51,45) + POWER(x52,45) + POWER(x53,45)
       + POWER(x54,45) + POWER(x55,45) + POWER(x56,45) + POWER(x57,45) + POWER(
      x58,45) + POWER(x59,45) + POWER(x60,45) + POWER(x61,45) + POWER(x62,45)
       + POWER(x63,45) + POWER(x64,45) + POWER(x65,45) + POWER(x66,45) + POWER(
      x67,45) + POWER(x68,45) + POWER(x69,45) + POWER(x70,45) + POWER(x71,45)
       + POWER(x72,45) + POWER(x73,45) + POWER(x74,45) + POWER(x75,45) + POWER(
      x76,45) + POWER(x77,45) + POWER(x78,45) + POWER(x79,45) + POWER(x80,45)
       + POWER(x81,45) + POWER(x82,45) + POWER(x83,45) + POWER(x84,45) + POWER(
      x85,45) + POWER(x86,45) + POWER(x87,45) + POWER(x88,45) + POWER(x89,45)
       + POWER(x90,45) + POWER(x91,45) + POWER(x92,45) + POWER(x93,45) + POWER(
      x94,45) + POWER(x95,45) + POWER(x96,45) + POWER(x97,45) + POWER(x98,45)
       + POWER(x99,45) + POWER(x100,45)) - x102 =L= 0;

e46.. sqr((-2.66586694952954) + POWER(x1,46) + POWER(x2,46) + POWER(x3,46) + 
      POWER(x4,46) + POWER(x5,46) + POWER(x6,46) + POWER(x7,46) + POWER(x8,46)
       + POWER(x9,46) + POWER(x10,46) + POWER(x11,46) + POWER(x12,46) + POWER(
      x13,46) + POWER(x14,46) + POWER(x15,46) + POWER(x16,46) + POWER(x17,46)
       + POWER(x18,46) + POWER(x19,46) + POWER(x20,46) + POWER(x21,46) + POWER(
      x22,46) + POWER(x23,46) + POWER(x24,46) + POWER(x25,46) + POWER(x26,46)
       + POWER(x27,46) + POWER(x28,46) + POWER(x29,46) + POWER(x30,46) + POWER(
      x31,46) + POWER(x32,46) + POWER(x33,46) + POWER(x34,46) + POWER(x35,46)
       + POWER(x36,46) + POWER(x37,46) + POWER(x38,46) + POWER(x39,46) + POWER(
      x40,46) + POWER(x41,46) + POWER(x42,46) + POWER(x43,46) + POWER(x44,46)
       + POWER(x45,46) + POWER(x46,46) + POWER(x47,46) + POWER(x48,46) + POWER(
      x49,46) + POWER(x50,46) + POWER(x51,46) + POWER(x52,46) + POWER(x53,46)
       + POWER(x54,46) + POWER(x55,46) + POWER(x56,46) + POWER(x57,46) + POWER(
      x58,46) + POWER(x59,46) + POWER(x60,46) + POWER(x61,46) + POWER(x62,46)
       + POWER(x63,46) + POWER(x64,46) + POWER(x65,46) + POWER(x66,46) + POWER(
      x67,46) + POWER(x68,46) + POWER(x69,46) + POWER(x70,46) + POWER(x71,46)
       + POWER(x72,46) + POWER(x73,46) + POWER(x74,46) + POWER(x75,46) + POWER(
      x76,46) + POWER(x77,46) + POWER(x78,46) + POWER(x79,46) + POWER(x80,46)
       + POWER(x81,46) + POWER(x82,46) + POWER(x83,46) + POWER(x84,46) + POWER(
      x85,46) + POWER(x86,46) + POWER(x87,46) + POWER(x88,46) + POWER(x89,46)
       + POWER(x90,46) + POWER(x91,46) + POWER(x92,46) + POWER(x93,46) + POWER(
      x94,46) + POWER(x95,46) + POWER(x96,46) + POWER(x97,46) + POWER(x98,46)
       + POWER(x99,46) + POWER(x100,46)) - x102 =L= 0;

e47.. sqr((-2.62236548109576) + POWER(x1,47) + POWER(x2,47) + POWER(x3,47) + 
      POWER(x4,47) + POWER(x5,47) + POWER(x6,47) + POWER(x7,47) + POWER(x8,47)
       + POWER(x9,47) + POWER(x10,47) + POWER(x11,47) + POWER(x12,47) + POWER(
      x13,47) + POWER(x14,47) + POWER(x15,47) + POWER(x16,47) + POWER(x17,47)
       + POWER(x18,47) + POWER(x19,47) + POWER(x20,47) + POWER(x21,47) + POWER(
      x22,47) + POWER(x23,47) + POWER(x24,47) + POWER(x25,47) + POWER(x26,47)
       + POWER(x27,47) + POWER(x28,47) + POWER(x29,47) + POWER(x30,47) + POWER(
      x31,47) + POWER(x32,47) + POWER(x33,47) + POWER(x34,47) + POWER(x35,47)
       + POWER(x36,47) + POWER(x37,47) + POWER(x38,47) + POWER(x39,47) + POWER(
      x40,47) + POWER(x41,47) + POWER(x42,47) + POWER(x43,47) + POWER(x44,47)
       + POWER(x45,47) + POWER(x46,47) + POWER(x47,47) + POWER(x48,47) + POWER(
      x49,47) + POWER(x50,47) + POWER(x51,47) + POWER(x52,47) + POWER(x53,47)
       + POWER(x54,47) + POWER(x55,47) + POWER(x56,47) + POWER(x57,47) + POWER(
      x58,47) + POWER(x59,47) + POWER(x60,47) + POWER(x61,47) + POWER(x62,47)
       + POWER(x63,47) + POWER(x64,47) + POWER(x65,47) + POWER(x66,47) + POWER(
      x67,47) + POWER(x68,47) + POWER(x69,47) + POWER(x70,47) + POWER(x71,47)
       + POWER(x72,47) + POWER(x73,47) + POWER(x74,47) + POWER(x75,47) + POWER(
      x76,47) + POWER(x77,47) + POWER(x78,47) + POWER(x79,47) + POWER(x80,47)
       + POWER(x81,47) + POWER(x82,47) + POWER(x83,47) + POWER(x84,47) + POWER(
      x85,47) + POWER(x86,47) + POWER(x87,47) + POWER(x88,47) + POWER(x89,47)
       + POWER(x90,47) + POWER(x91,47) + POWER(x92,47) + POWER(x93,47) + POWER(
      x94,47) + POWER(x95,47) + POWER(x96,47) + POWER(x97,47) + POWER(x98,47)
       + POWER(x99,47) + POWER(x100,47)) - x102 =L= 0;

e48.. sqr((-2.58067286962777) + POWER(x1,48) + POWER(x2,48) + POWER(x3,48) + 
      POWER(x4,48) + POWER(x5,48) + POWER(x6,48) + POWER(x7,48) + POWER(x8,48)
       + POWER(x9,48) + POWER(x10,48) + POWER(x11,48) + POWER(x12,48) + POWER(
      x13,48) + POWER(x14,48) + POWER(x15,48) + POWER(x16,48) + POWER(x17,48)
       + POWER(x18,48) + POWER(x19,48) + POWER(x20,48) + POWER(x21,48) + POWER(
      x22,48) + POWER(x23,48) + POWER(x24,48) + POWER(x25,48) + POWER(x26,48)
       + POWER(x27,48) + POWER(x28,48) + POWER(x29,48) + POWER(x30,48) + POWER(
      x31,48) + POWER(x32,48) + POWER(x33,48) + POWER(x34,48) + POWER(x35,48)
       + POWER(x36,48) + POWER(x37,48) + POWER(x38,48) + POWER(x39,48) + POWER(
      x40,48) + POWER(x41,48) + POWER(x42,48) + POWER(x43,48) + POWER(x44,48)
       + POWER(x45,48) + POWER(x46,48) + POWER(x47,48) + POWER(x48,48) + POWER(
      x49,48) + POWER(x50,48) + POWER(x51,48) + POWER(x52,48) + POWER(x53,48)
       + POWER(x54,48) + POWER(x55,48) + POWER(x56,48) + POWER(x57,48) + POWER(
      x58,48) + POWER(x59,48) + POWER(x60,48) + POWER(x61,48) + POWER(x62,48)
       + POWER(x63,48) + POWER(x64,48) + POWER(x65,48) + POWER(x66,48) + POWER(
      x67,48) + POWER(x68,48) + POWER(x69,48) + POWER(x70,48) + POWER(x71,48)
       + POWER(x72,48) + POWER(x73,48) + POWER(x74,48) + POWER(x75,48) + POWER(
      x76,48) + POWER(x77,48) + POWER(x78,48) + POWER(x79,48) + POWER(x80,48)
       + POWER(x81,48) + POWER(x82,48) + POWER(x83,48) + POWER(x84,48) + POWER(
      x85,48) + POWER(x86,48) + POWER(x87,48) + POWER(x88,48) + POWER(x89,48)
       + POWER(x90,48) + POWER(x91,48) + POWER(x92,48) + POWER(x93,48) + POWER(
      x94,48) + POWER(x95,48) + POWER(x96,48) + POWER(x97,48) + POWER(x98,48)
       + POWER(x99,48) + POWER(x100,48)) - x102 =L= 0;

e49.. sqr((-2.54068055313631) + POWER(x1,49) + POWER(x2,49) + POWER(x3,49) + 
      POWER(x4,49) + POWER(x5,49) + POWER(x6,49) + POWER(x7,49) + POWER(x8,49)
       + POWER(x9,49) + POWER(x10,49) + POWER(x11,49) + POWER(x12,49) + POWER(
      x13,49) + POWER(x14,49) + POWER(x15,49) + POWER(x16,49) + POWER(x17,49)
       + POWER(x18,49) + POWER(x19,49) + POWER(x20,49) + POWER(x21,49) + POWER(
      x22,49) + POWER(x23,49) + POWER(x24,49) + POWER(x25,49) + POWER(x26,49)
       + POWER(x27,49) + POWER(x28,49) + POWER(x29,49) + POWER(x30,49) + POWER(
      x31,49) + POWER(x32,49) + POWER(x33,49) + POWER(x34,49) + POWER(x35,49)
       + POWER(x36,49) + POWER(x37,49) + POWER(x38,49) + POWER(x39,49) + POWER(
      x40,49) + POWER(x41,49) + POWER(x42,49) + POWER(x43,49) + POWER(x44,49)
       + POWER(x45,49) + POWER(x46,49) + POWER(x47,49) + POWER(x48,49) + POWER(
      x49,49) + POWER(x50,49) + POWER(x51,49) + POWER(x52,49) + POWER(x53,49)
       + POWER(x54,49) + POWER(x55,49) + POWER(x56,49) + POWER(x57,49) + POWER(
      x58,49) + POWER(x59,49) + POWER(x60,49) + POWER(x61,49) + POWER(x62,49)
       + POWER(x63,49) + POWER(x64,49) + POWER(x65,49) + POWER(x66,49) + POWER(
      x67,49) + POWER(x68,49) + POWER(x69,49) + POWER(x70,49) + POWER(x71,49)
       + POWER(x72,49) + POWER(x73,49) + POWER(x74,49) + POWER(x75,49) + POWER(
      x76,49) + POWER(x77,49) + POWER(x78,49) + POWER(x79,49) + POWER(x80,49)
       + POWER(x81,49) + POWER(x82,49) + POWER(x83,49) + POWER(x84,49) + POWER(
      x85,49) + POWER(x86,49) + POWER(x87,49) + POWER(x88,49) + POWER(x89,49)
       + POWER(x90,49) + POWER(x91,49) + POWER(x92,49) + POWER(x93,49) + POWER(
      x94,49) + POWER(x95,49) + POWER(x96,49) + POWER(x97,49) + POWER(x98,49)
       + POWER(x99,49) + POWER(x100,49)) - x102 =L= 0;

e50.. sqr((-2.50228848369365) + POWER(x1,50) + POWER(x2,50) + POWER(x3,50) + 
      POWER(x4,50) + POWER(x5,50) + POWER(x6,50) + POWER(x7,50) + POWER(x8,50)
       + POWER(x9,50) + POWER(x10,50) + POWER(x11,50) + POWER(x12,50) + POWER(
      x13,50) + POWER(x14,50) + POWER(x15,50) + POWER(x16,50) + POWER(x17,50)
       + POWER(x18,50) + POWER(x19,50) + POWER(x20,50) + POWER(x21,50) + POWER(
      x22,50) + POWER(x23,50) + POWER(x24,50) + POWER(x25,50) + POWER(x26,50)
       + POWER(x27,50) + POWER(x28,50) + POWER(x29,50) + POWER(x30,50) + POWER(
      x31,50) + POWER(x32,50) + POWER(x33,50) + POWER(x34,50) + POWER(x35,50)
       + POWER(x36,50) + POWER(x37,50) + POWER(x38,50) + POWER(x39,50) + POWER(
      x40,50) + POWER(x41,50) + POWER(x42,50) + POWER(x43,50) + POWER(x44,50)
       + POWER(x45,50) + POWER(x46,50) + POWER(x47,50) + POWER(x48,50) + POWER(
      x49,50) + POWER(x50,50) + POWER(x51,50) + POWER(x52,50) + POWER(x53,50)
       + POWER(x54,50) + POWER(x55,50) + POWER(x56,50) + POWER(x57,50) + POWER(
      x58,50) + POWER(x59,50) + POWER(x60,50) + POWER(x61,50) + POWER(x62,50)
       + POWER(x63,50) + POWER(x64,50) + POWER(x65,50) + POWER(x66,50) + POWER(
      x67,50) + POWER(x68,50) + POWER(x69,50) + POWER(x70,50) + POWER(x71,50)
       + POWER(x72,50) + POWER(x73,50) + POWER(x74,50) + POWER(x75,50) + POWER(
      x76,50) + POWER(x77,50) + POWER(x78,50) + POWER(x79,50) + POWER(x80,50)
       + POWER(x81,50) + POWER(x82,50) + POWER(x83,50) + POWER(x84,50) + POWER(
      x85,50) + POWER(x86,50) + POWER(x87,50) + POWER(x88,50) + POWER(x89,50)
       + POWER(x90,50) + POWER(x91,50) + POWER(x92,50) + POWER(x93,50) + POWER(
      x94,50) + POWER(x95,50) + POWER(x96,50) + POWER(x97,50) + POWER(x98,50)
       + POWER(x99,50) + POWER(x100,50)) - x102 =L= 0;

e51.. sqr((-2.46540430877591) + POWER(x1,51) + POWER(x2,51) + POWER(x3,51) + 
      POWER(x4,51) + POWER(x5,51) + POWER(x6,51) + POWER(x7,51) + POWER(x8,51)
       + POWER(x9,51) + POWER(x10,51) + POWER(x11,51) + POWER(x12,51) + POWER(
      x13,51) + POWER(x14,51) + POWER(x15,51) + POWER(x16,51) + POWER(x17,51)
       + POWER(x18,51) + POWER(x19,51) + POWER(x20,51) + POWER(x21,51) + POWER(
      x22,51) + POWER(x23,51) + POWER(x24,51) + POWER(x25,51) + POWER(x26,51)
       + POWER(x27,51) + POWER(x28,51) + POWER(x29,51) + POWER(x30,51) + POWER(
      x31,51) + POWER(x32,51) + POWER(x33,51) + POWER(x34,51) + POWER(x35,51)
       + POWER(x36,51) + POWER(x37,51) + POWER(x38,51) + POWER(x39,51) + POWER(
      x40,51) + POWER(x41,51) + POWER(x42,51) + POWER(x43,51) + POWER(x44,51)
       + POWER(x45,51) + POWER(x46,51) + POWER(x47,51) + POWER(x48,51) + POWER(
      x49,51) + POWER(x50,51) + POWER(x51,51) + POWER(x52,51) + POWER(x53,51)
       + POWER(x54,51) + POWER(x55,51) + POWER(x56,51) + POWER(x57,51) + POWER(
      x58,51) + POWER(x59,51) + POWER(x60,51) + POWER(x61,51) + POWER(x62,51)
       + POWER(x63,51) + POWER(x64,51) + POWER(x65,51) + POWER(x66,51) + POWER(
      x67,51) + POWER(x68,51) + POWER(x69,51) + POWER(x70,51) + POWER(x71,51)
       + POWER(x72,51) + POWER(x73,51) + POWER(x74,51) + POWER(x75,51) + POWER(
      x76,51) + POWER(x77,51) + POWER(x78,51) + POWER(x79,51) + POWER(x80,51)
       + POWER(x81,51) + POWER(x82,51) + POWER(x83,51) + POWER(x84,51) + POWER(
      x85,51) + POWER(x86,51) + POWER(x87,51) + POWER(x88,51) + POWER(x89,51)
       + POWER(x90,51) + POWER(x91,51) + POWER(x92,51) + POWER(x93,51) + POWER(
      x94,51) + POWER(x95,51) + POWER(x96,51) + POWER(x97,51) + POWER(x98,51)
       + POWER(x99,51) + POWER(x100,51)) - x102 =L= 0;

e52.. sqr((-2.42994264528358) + POWER(x1,52) + POWER(x2,52) + POWER(x3,52) + 
      POWER(x4,52) + POWER(x5,52) + POWER(x6,52) + POWER(x7,52) + POWER(x8,52)
       + POWER(x9,52) + POWER(x10,52) + POWER(x11,52) + POWER(x12,52) + POWER(
      x13,52) + POWER(x14,52) + POWER(x15,52) + POWER(x16,52) + POWER(x17,52)
       + POWER(x18,52) + POWER(x19,52) + POWER(x20,52) + POWER(x21,52) + POWER(
      x22,52) + POWER(x23,52) + POWER(x24,52) + POWER(x25,52) + POWER(x26,52)
       + POWER(x27,52) + POWER(x28,52) + POWER(x29,52) + POWER(x30,52) + POWER(
      x31,52) + POWER(x32,52) + POWER(x33,52) + POWER(x34,52) + POWER(x35,52)
       + POWER(x36,52) + POWER(x37,52) + POWER(x38,52) + POWER(x39,52) + POWER(
      x40,52) + POWER(x41,52) + POWER(x42,52) + POWER(x43,52) + POWER(x44,52)
       + POWER(x45,52) + POWER(x46,52) + POWER(x47,52) + POWER(x48,52) + POWER(
      x49,52) + POWER(x50,52) + POWER(x51,52) + POWER(x52,52) + POWER(x53,52)
       + POWER(x54,52) + POWER(x55,52) + POWER(x56,52) + POWER(x57,52) + POWER(
      x58,52) + POWER(x59,52) + POWER(x60,52) + POWER(x61,52) + POWER(x62,52)
       + POWER(x63,52) + POWER(x64,52) + POWER(x65,52) + POWER(x66,52) + POWER(
      x67,52) + POWER(x68,52) + POWER(x69,52) + POWER(x70,52) + POWER(x71,52)
       + POWER(x72,52) + POWER(x73,52) + POWER(x74,52) + POWER(x75,52) + POWER(
      x76,52) + POWER(x77,52) + POWER(x78,52) + POWER(x79,52) + POWER(x80,52)
       + POWER(x81,52) + POWER(x82,52) + POWER(x83,52) + POWER(x84,52) + POWER(
      x85,52) + POWER(x86,52) + POWER(x87,52) + POWER(x88,52) + POWER(x89,52)
       + POWER(x90,52) + POWER(x91,52) + POWER(x92,52) + POWER(x93,52) + POWER(
      x94,52) + POWER(x95,52) + POWER(x96,52) + POWER(x97,52) + POWER(x98,52)
       + POWER(x99,52) + POWER(x100,52)) - x102 =L= 0;

e53.. sqr((-2.39582443422652) + POWER(x1,53) + POWER(x2,53) + POWER(x3,53) + 
      POWER(x4,53) + POWER(x5,53) + POWER(x6,53) + POWER(x7,53) + POWER(x8,53)
       + POWER(x9,53) + POWER(x10,53) + POWER(x11,53) + POWER(x12,53) + POWER(
      x13,53) + POWER(x14,53) + POWER(x15,53) + POWER(x16,53) + POWER(x17,53)
       + POWER(x18,53) + POWER(x19,53) + POWER(x20,53) + POWER(x21,53) + POWER(
      x22,53) + POWER(x23,53) + POWER(x24,53) + POWER(x25,53) + POWER(x26,53)
       + POWER(x27,53) + POWER(x28,53) + POWER(x29,53) + POWER(x30,53) + POWER(
      x31,53) + POWER(x32,53) + POWER(x33,53) + POWER(x34,53) + POWER(x35,53)
       + POWER(x36,53) + POWER(x37,53) + POWER(x38,53) + POWER(x39,53) + POWER(
      x40,53) + POWER(x41,53) + POWER(x42,53) + POWER(x43,53) + POWER(x44,53)
       + POWER(x45,53) + POWER(x46,53) + POWER(x47,53) + POWER(x48,53) + POWER(
      x49,53) + POWER(x50,53) + POWER(x51,53) + POWER(x52,53) + POWER(x53,53)
       + POWER(x54,53) + POWER(x55,53) + POWER(x56,53) + POWER(x57,53) + POWER(
      x58,53) + POWER(x59,53) + POWER(x60,53) + POWER(x61,53) + POWER(x62,53)
       + POWER(x63,53) + POWER(x64,53) + POWER(x65,53) + POWER(x66,53) + POWER(
      x67,53) + POWER(x68,53) + POWER(x69,53) + POWER(x70,53) + POWER(x71,53)
       + POWER(x72,53) + POWER(x73,53) + POWER(x74,53) + POWER(x75,53) + POWER(
      x76,53) + POWER(x77,53) + POWER(x78,53) + POWER(x79,53) + POWER(x80,53)
       + POWER(x81,53) + POWER(x82,53) + POWER(x83,53) + POWER(x84,53) + POWER(
      x85,53) + POWER(x86,53) + POWER(x87,53) + POWER(x88,53) + POWER(x89,53)
       + POWER(x90,53) + POWER(x91,53) + POWER(x92,53) + POWER(x93,53) + POWER(
      x94,53) + POWER(x95,53) + POWER(x96,53) + POWER(x97,53) + POWER(x98,53)
       + POWER(x99,53) + POWER(x100,53)) - x102 =L= 0;

e54.. sqr((-2.362976365807) + POWER(x1,54) + POWER(x2,54) + POWER(x3,54) + 
      POWER(x4,54) + POWER(x5,54) + POWER(x6,54) + POWER(x7,54) + POWER(x8,54)
       + POWER(x9,54) + POWER(x10,54) + POWER(x11,54) + POWER(x12,54) + POWER(
      x13,54) + POWER(x14,54) + POWER(x15,54) + POWER(x16,54) + POWER(x17,54)
       + POWER(x18,54) + POWER(x19,54) + POWER(x20,54) + POWER(x21,54) + POWER(
      x22,54) + POWER(x23,54) + POWER(x24,54) + POWER(x25,54) + POWER(x26,54)
       + POWER(x27,54) + POWER(x28,54) + POWER(x29,54) + POWER(x30,54) + POWER(
      x31,54) + POWER(x32,54) + POWER(x33,54) + POWER(x34,54) + POWER(x35,54)
       + POWER(x36,54) + POWER(x37,54) + POWER(x38,54) + POWER(x39,54) + POWER(
      x40,54) + POWER(x41,54) + POWER(x42,54) + POWER(x43,54) + POWER(x44,54)
       + POWER(x45,54) + POWER(x46,54) + POWER(x47,54) + POWER(x48,54) + POWER(
      x49,54) + POWER(x50,54) + POWER(x51,54) + POWER(x52,54) + POWER(x53,54)
       + POWER(x54,54) + POWER(x55,54) + POWER(x56,54) + POWER(x57,54) + POWER(
      x58,54) + POWER(x59,54) + POWER(x60,54) + POWER(x61,54) + POWER(x62,54)
       + POWER(x63,54) + POWER(x64,54) + POWER(x65,54) + POWER(x66,54) + POWER(
      x67,54) + POWER(x68,54) + POWER(x69,54) + POWER(x70,54) + POWER(x71,54)
       + POWER(x72,54) + POWER(x73,54) + POWER(x74,54) + POWER(x75,54) + POWER(
      x76,54) + POWER(x77,54) + POWER(x78,54) + POWER(x79,54) + POWER(x80,54)
       + POWER(x81,54) + POWER(x82,54) + POWER(x83,54) + POWER(x84,54) + POWER(
      x85,54) + POWER(x86,54) + POWER(x87,54) + POWER(x88,54) + POWER(x89,54)
       + POWER(x90,54) + POWER(x91,54) + POWER(x92,54) + POWER(x93,54) + POWER(
      x94,54) + POWER(x95,54) + POWER(x96,54) + POWER(x97,54) + POWER(x98,54)
       + POWER(x99,54) + POWER(x100,54)) - x102 =L= 0;

e55.. sqr((-2.33133036610093) + POWER(x1,55) + POWER(x2,55) + POWER(x3,55) + 
      POWER(x4,55) + POWER(x5,55) + POWER(x6,55) + POWER(x7,55) + POWER(x8,55)
       + POWER(x9,55) + POWER(x10,55) + POWER(x11,55) + POWER(x12,55) + POWER(
      x13,55) + POWER(x14,55) + POWER(x15,55) + POWER(x16,55) + POWER(x17,55)
       + POWER(x18,55) + POWER(x19,55) + POWER(x20,55) + POWER(x21,55) + POWER(
      x22,55) + POWER(x23,55) + POWER(x24,55) + POWER(x25,55) + POWER(x26,55)
       + POWER(x27,55) + POWER(x28,55) + POWER(x29,55) + POWER(x30,55) + POWER(
      x31,55) + POWER(x32,55) + POWER(x33,55) + POWER(x34,55) + POWER(x35,55)
       + POWER(x36,55) + POWER(x37,55) + POWER(x38,55) + POWER(x39,55) + POWER(
      x40,55) + POWER(x41,55) + POWER(x42,55) + POWER(x43,55) + POWER(x44,55)
       + POWER(x45,55) + POWER(x46,55) + POWER(x47,55) + POWER(x48,55) + POWER(
      x49,55) + POWER(x50,55) + POWER(x51,55) + POWER(x52,55) + POWER(x53,55)
       + POWER(x54,55) + POWER(x55,55) + POWER(x56,55) + POWER(x57,55) + POWER(
      x58,55) + POWER(x59,55) + POWER(x60,55) + POWER(x61,55) + POWER(x62,55)
       + POWER(x63,55) + POWER(x64,55) + POWER(x65,55) + POWER(x66,55) + POWER(
      x67,55) + POWER(x68,55) + POWER(x69,55) + POWER(x70,55) + POWER(x71,55)
       + POWER(x72,55) + POWER(x73,55) + POWER(x74,55) + POWER(x75,55) + POWER(
      x76,55) + POWER(x77,55) + POWER(x78,55) + POWER(x79,55) + POWER(x80,55)
       + POWER(x81,55) + POWER(x82,55) + POWER(x83,55) + POWER(x84,55) + POWER(
      x85,55) + POWER(x86,55) + POWER(x87,55) + POWER(x88,55) + POWER(x89,55)
       + POWER(x90,55) + POWER(x91,55) + POWER(x92,55) + POWER(x93,55) + POWER(
      x94,55) + POWER(x95,55) + POWER(x96,55) + POWER(x97,55) + POWER(x98,55)
       + POWER(x99,55) + POWER(x100,55)) - x102 =L= 0;

e56.. sqr((-2.3008231377728) + POWER(x1,56) + POWER(x2,56) + POWER(x3,56) + 
      POWER(x4,56) + POWER(x5,56) + POWER(x6,56) + POWER(x7,56) + POWER(x8,56)
       + POWER(x9,56) + POWER(x10,56) + POWER(x11,56) + POWER(x12,56) + POWER(
      x13,56) + POWER(x14,56) + POWER(x15,56) + POWER(x16,56) + POWER(x17,56)
       + POWER(x18,56) + POWER(x19,56) + POWER(x20,56) + POWER(x21,56) + POWER(
      x22,56) + POWER(x23,56) + POWER(x24,56) + POWER(x25,56) + POWER(x26,56)
       + POWER(x27,56) + POWER(x28,56) + POWER(x29,56) + POWER(x30,56) + POWER(
      x31,56) + POWER(x32,56) + POWER(x33,56) + POWER(x34,56) + POWER(x35,56)
       + POWER(x36,56) + POWER(x37,56) + POWER(x38,56) + POWER(x39,56) + POWER(
      x40,56) + POWER(x41,56) + POWER(x42,56) + POWER(x43,56) + POWER(x44,56)
       + POWER(x45,56) + POWER(x46,56) + POWER(x47,56) + POWER(x48,56) + POWER(
      x49,56) + POWER(x50,56) + POWER(x51,56) + POWER(x52,56) + POWER(x53,56)
       + POWER(x54,56) + POWER(x55,56) + POWER(x56,56) + POWER(x57,56) + POWER(
      x58,56) + POWER(x59,56) + POWER(x60,56) + POWER(x61,56) + POWER(x62,56)
       + POWER(x63,56) + POWER(x64,56) + POWER(x65,56) + POWER(x66,56) + POWER(
      x67,56) + POWER(x68,56) + POWER(x69,56) + POWER(x70,56) + POWER(x71,56)
       + POWER(x72,56) + POWER(x73,56) + POWER(x74,56) + POWER(x75,56) + POWER(
      x76,56) + POWER(x77,56) + POWER(x78,56) + POWER(x79,56) + POWER(x80,56)
       + POWER(x81,56) + POWER(x82,56) + POWER(x83,56) + POWER(x84,56) + POWER(
      x85,56) + POWER(x86,56) + POWER(x87,56) + POWER(x88,56) + POWER(x89,56)
       + POWER(x90,56) + POWER(x91,56) + POWER(x92,56) + POWER(x93,56) + POWER(
      x94,56) + POWER(x95,56) + POWER(x96,56) + POWER(x97,56) + POWER(x98,56)
       + POWER(x99,56) + POWER(x100,56)) - x102 =L= 0;

e57.. sqr((-2.27139574830284) + POWER(x1,57) + POWER(x2,57) + POWER(x3,57) + 
      POWER(x4,57) + POWER(x5,57) + POWER(x6,57) + POWER(x7,57) + POWER(x8,57)
       + POWER(x9,57) + POWER(x10,57) + POWER(x11,57) + POWER(x12,57) + POWER(
      x13,57) + POWER(x14,57) + POWER(x15,57) + POWER(x16,57) + POWER(x17,57)
       + POWER(x18,57) + POWER(x19,57) + POWER(x20,57) + POWER(x21,57) + POWER(
      x22,57) + POWER(x23,57) + POWER(x24,57) + POWER(x25,57) + POWER(x26,57)
       + POWER(x27,57) + POWER(x28,57) + POWER(x29,57) + POWER(x30,57) + POWER(
      x31,57) + POWER(x32,57) + POWER(x33,57) + POWER(x34,57) + POWER(x35,57)
       + POWER(x36,57) + POWER(x37,57) + POWER(x38,57) + POWER(x39,57) + POWER(
      x40,57) + POWER(x41,57) + POWER(x42,57) + POWER(x43,57) + POWER(x44,57)
       + POWER(x45,57) + POWER(x46,57) + POWER(x47,57) + POWER(x48,57) + POWER(
      x49,57) + POWER(x50,57) + POWER(x51,57) + POWER(x52,57) + POWER(x53,57)
       + POWER(x54,57) + POWER(x55,57) + POWER(x56,57) + POWER(x57,57) + POWER(
      x58,57) + POWER(x59,57) + POWER(x60,57) + POWER(x61,57) + POWER(x62,57)
       + POWER(x63,57) + POWER(x64,57) + POWER(x65,57) + POWER(x66,57) + POWER(
      x67,57) + POWER(x68,57) + POWER(x69,57) + POWER(x70,57) + POWER(x71,57)
       + POWER(x72,57) + POWER(x73,57) + POWER(x74,57) + POWER(x75,57) + POWER(
      x76,57) + POWER(x77,57) + POWER(x78,57) + POWER(x79,57) + POWER(x80,57)
       + POWER(x81,57) + POWER(x82,57) + POWER(x83,57) + POWER(x84,57) + POWER(
      x85,57) + POWER(x86,57) + POWER(x87,57) + POWER(x88,57) + POWER(x89,57)
       + POWER(x90,57) + POWER(x91,57) + POWER(x92,57) + POWER(x93,57) + POWER(
      x94,57) + POWER(x95,57) + POWER(x96,57) + POWER(x97,57) + POWER(x98,57)
       + POWER(x99,57) + POWER(x100,57)) - x102 =L= 0;

e58.. sqr((-2.2429932600894) + POWER(x1,58) + POWER(x2,58) + POWER(x3,58) + 
      POWER(x4,58) + POWER(x5,58) + POWER(x6,58) + POWER(x7,58) + POWER(x8,58)
       + POWER(x9,58) + POWER(x10,58) + POWER(x11,58) + POWER(x12,58) + POWER(
      x13,58) + POWER(x14,58) + POWER(x15,58) + POWER(x16,58) + POWER(x17,58)
       + POWER(x18,58) + POWER(x19,58) + POWER(x20,58) + POWER(x21,58) + POWER(
      x22,58) + POWER(x23,58) + POWER(x24,58) + POWER(x25,58) + POWER(x26,58)
       + POWER(x27,58) + POWER(x28,58) + POWER(x29,58) + POWER(x30,58) + POWER(
      x31,58) + POWER(x32,58) + POWER(x33,58) + POWER(x34,58) + POWER(x35,58)
       + POWER(x36,58) + POWER(x37,58) + POWER(x38,58) + POWER(x39,58) + POWER(
      x40,58) + POWER(x41,58) + POWER(x42,58) + POWER(x43,58) + POWER(x44,58)
       + POWER(x45,58) + POWER(x46,58) + POWER(x47,58) + POWER(x48,58) + POWER(
      x49,58) + POWER(x50,58) + POWER(x51,58) + POWER(x52,58) + POWER(x53,58)
       + POWER(x54,58) + POWER(x55,58) + POWER(x56,58) + POWER(x57,58) + POWER(
      x58,58) + POWER(x59,58) + POWER(x60,58) + POWER(x61,58) + POWER(x62,58)
       + POWER(x63,58) + POWER(x64,58) + POWER(x65,58) + POWER(x66,58) + POWER(
      x67,58) + POWER(x68,58) + POWER(x69,58) + POWER(x70,58) + POWER(x71,58)
       + POWER(x72,58) + POWER(x73,58) + POWER(x74,58) + POWER(x75,58) + POWER(
      x76,58) + POWER(x77,58) + POWER(x78,58) + POWER(x79,58) + POWER(x80,58)
       + POWER(x81,58) + POWER(x82,58) + POWER(x83,58) + POWER(x84,58) + POWER(
      x85,58) + POWER(x86,58) + POWER(x87,58) + POWER(x88,58) + POWER(x89,58)
       + POWER(x90,58) + POWER(x91,58) + POWER(x92,58) + POWER(x93,58) + POWER(
      x94,58) + POWER(x95,58) + POWER(x96,58) + POWER(x97,58) + POWER(x98,58)
       + POWER(x99,58) + POWER(x100,58)) - x102 =L= 0;

e59.. sqr((-2.21556439754116) + POWER(x1,59) + POWER(x2,59) + POWER(x3,59) + 
      POWER(x4,59) + POWER(x5,59) + POWER(x6,59) + POWER(x7,59) + POWER(x8,59)
       + POWER(x9,59) + POWER(x10,59) + POWER(x11,59) + POWER(x12,59) + POWER(
      x13,59) + POWER(x14,59) + POWER(x15,59) + POWER(x16,59) + POWER(x17,59)
       + POWER(x18,59) + POWER(x19,59) + POWER(x20,59) + POWER(x21,59) + POWER(
      x22,59) + POWER(x23,59) + POWER(x24,59) + POWER(x25,59) + POWER(x26,59)
       + POWER(x27,59) + POWER(x28,59) + POWER(x29,59) + POWER(x30,59) + POWER(
      x31,59) + POWER(x32,59) + POWER(x33,59) + POWER(x34,59) + POWER(x35,59)
       + POWER(x36,59) + POWER(x37,59) + POWER(x38,59) + POWER(x39,59) + POWER(
      x40,59) + POWER(x41,59) + POWER(x42,59) + POWER(x43,59) + POWER(x44,59)
       + POWER(x45,59) + POWER(x46,59) + POWER(x47,59) + POWER(x48,59) + POWER(
      x49,59) + POWER(x50,59) + POWER(x51,59) + POWER(x52,59) + POWER(x53,59)
       + POWER(x54,59) + POWER(x55,59) + POWER(x56,59) + POWER(x57,59) + POWER(
      x58,59) + POWER(x59,59) + POWER(x60,59) + POWER(x61,59) + POWER(x62,59)
       + POWER(x63,59) + POWER(x64,59) + POWER(x65,59) + POWER(x66,59) + POWER(
      x67,59) + POWER(x68,59) + POWER(x69,59) + POWER(x70,59) + POWER(x71,59)
       + POWER(x72,59) + POWER(x73,59) + POWER(x74,59) + POWER(x75,59) + POWER(
      x76,59) + POWER(x77,59) + POWER(x78,59) + POWER(x79,59) + POWER(x80,59)
       + POWER(x81,59) + POWER(x82,59) + POWER(x83,59) + POWER(x84,59) + POWER(
      x85,59) + POWER(x86,59) + POWER(x87,59) + POWER(x88,59) + POWER(x89,59)
       + POWER(x90,59) + POWER(x91,59) + POWER(x92,59) + POWER(x93,59) + POWER(
      x94,59) + POWER(x95,59) + POWER(x96,59) + POWER(x97,59) + POWER(x98,59)
       + POWER(x99,59) + POWER(x100,59)) - x102 =L= 0;

e60.. sqr((-2.1890612469144) + POWER(x1,60) + POWER(x2,60) + POWER(x3,60) + 
      POWER(x4,60) + POWER(x5,60) + POWER(x6,60) + POWER(x7,60) + POWER(x8,60)
       + POWER(x9,60) + POWER(x10,60) + POWER(x11,60) + POWER(x12,60) + POWER(
      x13,60) + POWER(x14,60) + POWER(x15,60) + POWER(x16,60) + POWER(x17,60)
       + POWER(x18,60) + POWER(x19,60) + POWER(x20,60) + POWER(x21,60) + POWER(
      x22,60) + POWER(x23,60) + POWER(x24,60) + POWER(x25,60) + POWER(x26,60)
       + POWER(x27,60) + POWER(x28,60) + POWER(x29,60) + POWER(x30,60) + POWER(
      x31,60) + POWER(x32,60) + POWER(x33,60) + POWER(x34,60) + POWER(x35,60)
       + POWER(x36,60) + POWER(x37,60) + POWER(x38,60) + POWER(x39,60) + POWER(
      x40,60) + POWER(x41,60) + POWER(x42,60) + POWER(x43,60) + POWER(x44,60)
       + POWER(x45,60) + POWER(x46,60) + POWER(x47,60) + POWER(x48,60) + POWER(
      x49,60) + POWER(x50,60) + POWER(x51,60) + POWER(x52,60) + POWER(x53,60)
       + POWER(x54,60) + POWER(x55,60) + POWER(x56,60) + POWER(x57,60) + POWER(
      x58,60) + POWER(x59,60) + POWER(x60,60) + POWER(x61,60) + POWER(x62,60)
       + POWER(x63,60) + POWER(x64,60) + POWER(x65,60) + POWER(x66,60) + POWER(
      x67,60) + POWER(x68,60) + POWER(x69,60) + POWER(x70,60) + POWER(x71,60)
       + POWER(x72,60) + POWER(x73,60) + POWER(x74,60) + POWER(x75,60) + POWER(
      x76,60) + POWER(x77,60) + POWER(x78,60) + POWER(x79,60) + POWER(x80,60)
       + POWER(x81,60) + POWER(x82,60) + POWER(x83,60) + POWER(x84,60) + POWER(
      x85,60) + POWER(x86,60) + POWER(x87,60) + POWER(x88,60) + POWER(x89,60)
       + POWER(x90,60) + POWER(x91,60) + POWER(x92,60) + POWER(x93,60) + POWER(
      x94,60) + POWER(x95,60) + POWER(x96,60) + POWER(x97,60) + POWER(x98,60)
       + POWER(x99,60) + POWER(x100,60)) - x102 =L= 0;

e61.. sqr((-2.16343898519829) + POWER(x1,61) + POWER(x2,61) + POWER(x3,61) + 
      POWER(x4,61) + POWER(x5,61) + POWER(x6,61) + POWER(x7,61) + POWER(x8,61)
       + POWER(x9,61) + POWER(x10,61) + POWER(x11,61) + POWER(x12,61) + POWER(
      x13,61) + POWER(x14,61) + POWER(x15,61) + POWER(x16,61) + POWER(x17,61)
       + POWER(x18,61) + POWER(x19,61) + POWER(x20,61) + POWER(x21,61) + POWER(
      x22,61) + POWER(x23,61) + POWER(x24,61) + POWER(x25,61) + POWER(x26,61)
       + POWER(x27,61) + POWER(x28,61) + POWER(x29,61) + POWER(x30,61) + POWER(
      x31,61) + POWER(x32,61) + POWER(x33,61) + POWER(x34,61) + POWER(x35,61)
       + POWER(x36,61) + POWER(x37,61) + POWER(x38,61) + POWER(x39,61) + POWER(
      x40,61) + POWER(x41,61) + POWER(x42,61) + POWER(x43,61) + POWER(x44,61)
       + POWER(x45,61) + POWER(x46,61) + POWER(x47,61) + POWER(x48,61) + POWER(
      x49,61) + POWER(x50,61) + POWER(x51,61) + POWER(x52,61) + POWER(x53,61)
       + POWER(x54,61) + POWER(x55,61) + POWER(x56,61) + POWER(x57,61) + POWER(
      x58,61) + POWER(x59,61) + POWER(x60,61) + POWER(x61,61) + POWER(x62,61)
       + POWER(x63,61) + POWER(x64,61) + POWER(x65,61) + POWER(x66,61) + POWER(
      x67,61) + POWER(x68,61) + POWER(x69,61) + POWER(x70,61) + POWER(x71,61)
       + POWER(x72,61) + POWER(x73,61) + POWER(x74,61) + POWER(x75,61) + POWER(
      x76,61) + POWER(x77,61) + POWER(x78,61) + POWER(x79,61) + POWER(x80,61)
       + POWER(x81,61) + POWER(x82,61) + POWER(x83,61) + POWER(x84,61) + POWER(
      x85,61) + POWER(x86,61) + POWER(x87,61) + POWER(x88,61) + POWER(x89,61)
       + POWER(x90,61) + POWER(x91,61) + POWER(x92,61) + POWER(x93,61) + POWER(
      x94,61) + POWER(x95,61) + POWER(x96,61) + POWER(x97,61) + POWER(x98,61)
       + POWER(x99,61) + POWER(x100,61)) - x102 =L= 0;

e62.. sqr((-2.13865563482064) + POWER(x1,62) + POWER(x2,62) + POWER(x3,62) + 
      POWER(x4,62) + POWER(x5,62) + POWER(x6,62) + POWER(x7,62) + POWER(x8,62)
       + POWER(x9,62) + POWER(x10,62) + POWER(x11,62) + POWER(x12,62) + POWER(
      x13,62) + POWER(x14,62) + POWER(x15,62) + POWER(x16,62) + POWER(x17,62)
       + POWER(x18,62) + POWER(x19,62) + POWER(x20,62) + POWER(x21,62) + POWER(
      x22,62) + POWER(x23,62) + POWER(x24,62) + POWER(x25,62) + POWER(x26,62)
       + POWER(x27,62) + POWER(x28,62) + POWER(x29,62) + POWER(x30,62) + POWER(
      x31,62) + POWER(x32,62) + POWER(x33,62) + POWER(x34,62) + POWER(x35,62)
       + POWER(x36,62) + POWER(x37,62) + POWER(x38,62) + POWER(x39,62) + POWER(
      x40,62) + POWER(x41,62) + POWER(x42,62) + POWER(x43,62) + POWER(x44,62)
       + POWER(x45,62) + POWER(x46,62) + POWER(x47,62) + POWER(x48,62) + POWER(
      x49,62) + POWER(x50,62) + POWER(x51,62) + POWER(x52,62) + POWER(x53,62)
       + POWER(x54,62) + POWER(x55,62) + POWER(x56,62) + POWER(x57,62) + POWER(
      x58,62) + POWER(x59,62) + POWER(x60,62) + POWER(x61,62) + POWER(x62,62)
       + POWER(x63,62) + POWER(x64,62) + POWER(x65,62) + POWER(x66,62) + POWER(
      x67,62) + POWER(x68,62) + POWER(x69,62) + POWER(x70,62) + POWER(x71,62)
       + POWER(x72,62) + POWER(x73,62) + POWER(x74,62) + POWER(x75,62) + POWER(
      x76,62) + POWER(x77,62) + POWER(x78,62) + POWER(x79,62) + POWER(x80,62)
       + POWER(x81,62) + POWER(x82,62) + POWER(x83,62) + POWER(x84,62) + POWER(
      x85,62) + POWER(x86,62) + POWER(x87,62) + POWER(x88,62) + POWER(x89,62)
       + POWER(x90,62) + POWER(x91,62) + POWER(x92,62) + POWER(x93,62) + POWER(
      x94,62) + POWER(x95,62) + POWER(x96,62) + POWER(x97,62) + POWER(x98,62)
       + POWER(x99,62) + POWER(x100,62)) - x102 =L= 0;

e63.. sqr((-2.11467184135006) + POWER(x1,63) + POWER(x2,63) + POWER(x3,63) + 
      POWER(x4,63) + POWER(x5,63) + POWER(x6,63) + POWER(x7,63) + POWER(x8,63)
       + POWER(x9,63) + POWER(x10,63) + POWER(x11,63) + POWER(x12,63) + POWER(
      x13,63) + POWER(x14,63) + POWER(x15,63) + POWER(x16,63) + POWER(x17,63)
       + POWER(x18,63) + POWER(x19,63) + POWER(x20,63) + POWER(x21,63) + POWER(
      x22,63) + POWER(x23,63) + POWER(x24,63) + POWER(x25,63) + POWER(x26,63)
       + POWER(x27,63) + POWER(x28,63) + POWER(x29,63) + POWER(x30,63) + POWER(
      x31,63) + POWER(x32,63) + POWER(x33,63) + POWER(x34,63) + POWER(x35,63)
       + POWER(x36,63) + POWER(x37,63) + POWER(x38,63) + POWER(x39,63) + POWER(
      x40,63) + POWER(x41,63) + POWER(x42,63) + POWER(x43,63) + POWER(x44,63)
       + POWER(x45,63) + POWER(x46,63) + POWER(x47,63) + POWER(x48,63) + POWER(
      x49,63) + POWER(x50,63) + POWER(x51,63) + POWER(x52,63) + POWER(x53,63)
       + POWER(x54,63) + POWER(x55,63) + POWER(x56,63) + POWER(x57,63) + POWER(
      x58,63) + POWER(x59,63) + POWER(x60,63) + POWER(x61,63) + POWER(x62,63)
       + POWER(x63,63) + POWER(x64,63) + POWER(x65,63) + POWER(x66,63) + POWER(
      x67,63) + POWER(x68,63) + POWER(x69,63) + POWER(x70,63) + POWER(x71,63)
       + POWER(x72,63) + POWER(x73,63) + POWER(x74,63) + POWER(x75,63) + POWER(
      x76,63) + POWER(x77,63) + POWER(x78,63) + POWER(x79,63) + POWER(x80,63)
       + POWER(x81,63) + POWER(x82,63) + POWER(x83,63) + POWER(x84,63) + POWER(
      x85,63) + POWER(x86,63) + POWER(x87,63) + POWER(x88,63) + POWER(x89,63)
       + POWER(x90,63) + POWER(x91,63) + POWER(x92,63) + POWER(x93,63) + POWER(
      x94,63) + POWER(x95,63) + POWER(x96,63) + POWER(x97,63) + POWER(x98,63)
       + POWER(x99,63) + POWER(x100,63)) - x102 =L= 0;

e64.. sqr((-2.09145067171795) + POWER(x1,64) + POWER(x2,64) + POWER(x3,64) + 
      POWER(x4,64) + POWER(x5,64) + POWER(x6,64) + POWER(x7,64) + POWER(x8,64)
       + POWER(x9,64) + POWER(x10,64) + POWER(x11,64) + POWER(x12,64) + POWER(
      x13,64) + POWER(x14,64) + POWER(x15,64) + POWER(x16,64) + POWER(x17,64)
       + POWER(x18,64) + POWER(x19,64) + POWER(x20,64) + POWER(x21,64) + POWER(
      x22,64) + POWER(x23,64) + POWER(x24,64) + POWER(x25,64) + POWER(x26,64)
       + POWER(x27,64) + POWER(x28,64) + POWER(x29,64) + POWER(x30,64) + POWER(
      x31,64) + POWER(x32,64) + POWER(x33,64) + POWER(x34,64) + POWER(x35,64)
       + POWER(x36,64) + POWER(x37,64) + POWER(x38,64) + POWER(x39,64) + POWER(
      x40,64) + POWER(x41,64) + POWER(x42,64) + POWER(x43,64) + POWER(x44,64)
       + POWER(x45,64) + POWER(x46,64) + POWER(x47,64) + POWER(x48,64) + POWER(
      x49,64) + POWER(x50,64) + POWER(x51,64) + POWER(x52,64) + POWER(x53,64)
       + POWER(x54,64) + POWER(x55,64) + POWER(x56,64) + POWER(x57,64) + POWER(
      x58,64) + POWER(x59,64) + POWER(x60,64) + POWER(x61,64) + POWER(x62,64)
       + POWER(x63,64) + POWER(x64,64) + POWER(x65,64) + POWER(x66,64) + POWER(
      x67,64) + POWER(x68,64) + POWER(x69,64) + POWER(x70,64) + POWER(x71,64)
       + POWER(x72,64) + POWER(x73,64) + POWER(x74,64) + POWER(x75,64) + POWER(
      x76,64) + POWER(x77,64) + POWER(x78,64) + POWER(x79,64) + POWER(x80,64)
       + POWER(x81,64) + POWER(x82,64) + POWER(x83,64) + POWER(x84,64) + POWER(
      x85,64) + POWER(x86,64) + POWER(x87,64) + POWER(x88,64) + POWER(x89,64)
       + POWER(x90,64) + POWER(x91,64) + POWER(x92,64) + POWER(x93,64) + POWER(
      x94,64) + POWER(x95,64) + POWER(x96,64) + POWER(x97,64) + POWER(x98,64)
       + POWER(x99,64) + POWER(x100,64)) - x102 =L= 0;

e65.. sqr((-2.06895743078387) + POWER(x1,65) + POWER(x2,65) + POWER(x3,65) + 
      POWER(x4,65) + POWER(x5,65) + POWER(x6,65) + POWER(x7,65) + POWER(x8,65)
       + POWER(x9,65) + POWER(x10,65) + POWER(x11,65) + POWER(x12,65) + POWER(
      x13,65) + POWER(x14,65) + POWER(x15,65) + POWER(x16,65) + POWER(x17,65)
       + POWER(x18,65) + POWER(x19,65) + POWER(x20,65) + POWER(x21,65) + POWER(
      x22,65) + POWER(x23,65) + POWER(x24,65) + POWER(x25,65) + POWER(x26,65)
       + POWER(x27,65) + POWER(x28,65) + POWER(x29,65) + POWER(x30,65) + POWER(
      x31,65) + POWER(x32,65) + POWER(x33,65) + POWER(x34,65) + POWER(x35,65)
       + POWER(x36,65) + POWER(x37,65) + POWER(x38,65) + POWER(x39,65) + POWER(
      x40,65) + POWER(x41,65) + POWER(x42,65) + POWER(x43,65) + POWER(x44,65)
       + POWER(x45,65) + POWER(x46,65) + POWER(x47,65) + POWER(x48,65) + POWER(
      x49,65) + POWER(x50,65) + POWER(x51,65) + POWER(x52,65) + POWER(x53,65)
       + POWER(x54,65) + POWER(x55,65) + POWER(x56,65) + POWER(x57,65) + POWER(
      x58,65) + POWER(x59,65) + POWER(x60,65) + POWER(x61,65) + POWER(x62,65)
       + POWER(x63,65) + POWER(x64,65) + POWER(x65,65) + POWER(x66,65) + POWER(
      x67,65) + POWER(x68,65) + POWER(x69,65) + POWER(x70,65) + POWER(x71,65)
       + POWER(x72,65) + POWER(x73,65) + POWER(x74,65) + POWER(x75,65) + POWER(
      x76,65) + POWER(x77,65) + POWER(x78,65) + POWER(x79,65) + POWER(x80,65)
       + POWER(x81,65) + POWER(x82,65) + POWER(x83,65) + POWER(x84,65) + POWER(
      x85,65) + POWER(x86,65) + POWER(x87,65) + POWER(x88,65) + POWER(x89,65)
       + POWER(x90,65) + POWER(x91,65) + POWER(x92,65) + POWER(x93,65) + POWER(
      x94,65) + POWER(x95,65) + POWER(x96,65) + POWER(x97,65) + POWER(x98,65)
       + POWER(x99,65) + POWER(x100,65)) - x102 =L= 0;

e66.. sqr((-2.0471594943281) + POWER(x1,66) + POWER(x2,66) + POWER(x3,66) + 
      POWER(x4,66) + POWER(x5,66) + POWER(x6,66) + POWER(x7,66) + POWER(x8,66)
       + POWER(x9,66) + POWER(x10,66) + POWER(x11,66) + POWER(x12,66) + POWER(
      x13,66) + POWER(x14,66) + POWER(x15,66) + POWER(x16,66) + POWER(x17,66)
       + POWER(x18,66) + POWER(x19,66) + POWER(x20,66) + POWER(x21,66) + POWER(
      x22,66) + POWER(x23,66) + POWER(x24,66) + POWER(x25,66) + POWER(x26,66)
       + POWER(x27,66) + POWER(x28,66) + POWER(x29,66) + POWER(x30,66) + POWER(
      x31,66) + POWER(x32,66) + POWER(x33,66) + POWER(x34,66) + POWER(x35,66)
       + POWER(x36,66) + POWER(x37,66) + POWER(x38,66) + POWER(x39,66) + POWER(
      x40,66) + POWER(x41,66) + POWER(x42,66) + POWER(x43,66) + POWER(x44,66)
       + POWER(x45,66) + POWER(x46,66) + POWER(x47,66) + POWER(x48,66) + POWER(
      x49,66) + POWER(x50,66) + POWER(x51,66) + POWER(x52,66) + POWER(x53,66)
       + POWER(x54,66) + POWER(x55,66) + POWER(x56,66) + POWER(x57,66) + POWER(
      x58,66) + POWER(x59,66) + POWER(x60,66) + POWER(x61,66) + POWER(x62,66)
       + POWER(x63,66) + POWER(x64,66) + POWER(x65,66) + POWER(x66,66) + POWER(
      x67,66) + POWER(x68,66) + POWER(x69,66) + POWER(x70,66) + POWER(x71,66)
       + POWER(x72,66) + POWER(x73,66) + POWER(x74,66) + POWER(x75,66) + POWER(
      x76,66) + POWER(x77,66) + POWER(x78,66) + POWER(x79,66) + POWER(x80,66)
       + POWER(x81,66) + POWER(x82,66) + POWER(x83,66) + POWER(x84,66) + POWER(
      x85,66) + POWER(x86,66) + POWER(x87,66) + POWER(x88,66) + POWER(x89,66)
       + POWER(x90,66) + POWER(x91,66) + POWER(x92,66) + POWER(x93,66) + POWER(
      x94,66) + POWER(x95,66) + POWER(x96,66) + POWER(x97,66) + POWER(x98,66)
       + POWER(x99,66) + POWER(x100,66)) - x102 =L= 0;

e67.. sqr((-2.02602615678001) + POWER(x1,67) + POWER(x2,67) + POWER(x3,67) + 
      POWER(x4,67) + POWER(x5,67) + POWER(x6,67) + POWER(x7,67) + POWER(x8,67)
       + POWER(x9,67) + POWER(x10,67) + POWER(x11,67) + POWER(x12,67) + POWER(
      x13,67) + POWER(x14,67) + POWER(x15,67) + POWER(x16,67) + POWER(x17,67)
       + POWER(x18,67) + POWER(x19,67) + POWER(x20,67) + POWER(x21,67) + POWER(
      x22,67) + POWER(x23,67) + POWER(x24,67) + POWER(x25,67) + POWER(x26,67)
       + POWER(x27,67) + POWER(x28,67) + POWER(x29,67) + POWER(x30,67) + POWER(
      x31,67) + POWER(x32,67) + POWER(x33,67) + POWER(x34,67) + POWER(x35,67)
       + POWER(x36,67) + POWER(x37,67) + POWER(x38,67) + POWER(x39,67) + POWER(
      x40,67) + POWER(x41,67) + POWER(x42,67) + POWER(x43,67) + POWER(x44,67)
       + POWER(x45,67) + POWER(x46,67) + POWER(x47,67) + POWER(x48,67) + POWER(
      x49,67) + POWER(x50,67) + POWER(x51,67) + POWER(x52,67) + POWER(x53,67)
       + POWER(x54,67) + POWER(x55,67) + POWER(x56,67) + POWER(x57,67) + POWER(
      x58,67) + POWER(x59,67) + POWER(x60,67) + POWER(x61,67) + POWER(x62,67)
       + POWER(x63,67) + POWER(x64,67) + POWER(x65,67) + POWER(x66,67) + POWER(
      x67,67) + POWER(x68,67) + POWER(x69,67) + POWER(x70,67) + POWER(x71,67)
       + POWER(x72,67) + POWER(x73,67) + POWER(x74,67) + POWER(x75,67) + POWER(
      x76,67) + POWER(x77,67) + POWER(x78,67) + POWER(x79,67) + POWER(x80,67)
       + POWER(x81,67) + POWER(x82,67) + POWER(x83,67) + POWER(x84,67) + POWER(
      x85,67) + POWER(x86,67) + POWER(x87,67) + POWER(x88,67) + POWER(x89,67)
       + POWER(x90,67) + POWER(x91,67) + POWER(x92,67) + POWER(x93,67) + POWER(
      x94,67) + POWER(x95,67) + POWER(x96,67) + POWER(x97,67) + POWER(x98,67)
       + POWER(x99,67) + POWER(x100,67)) - x102 =L= 0;

e68.. sqr((-2.00552849218753) + POWER(x1,68) + POWER(x2,68) + POWER(x3,68) + 
      POWER(x4,68) + POWER(x5,68) + POWER(x6,68) + POWER(x7,68) + POWER(x8,68)
       + POWER(x9,68) + POWER(x10,68) + POWER(x11,68) + POWER(x12,68) + POWER(
      x13,68) + POWER(x14,68) + POWER(x15,68) + POWER(x16,68) + POWER(x17,68)
       + POWER(x18,68) + POWER(x19,68) + POWER(x20,68) + POWER(x21,68) + POWER(
      x22,68) + POWER(x23,68) + POWER(x24,68) + POWER(x25,68) + POWER(x26,68)
       + POWER(x27,68) + POWER(x28,68) + POWER(x29,68) + POWER(x30,68) + POWER(
      x31,68) + POWER(x32,68) + POWER(x33,68) + POWER(x34,68) + POWER(x35,68)
       + POWER(x36,68) + POWER(x37,68) + POWER(x38,68) + POWER(x39,68) + POWER(
      x40,68) + POWER(x41,68) + POWER(x42,68) + POWER(x43,68) + POWER(x44,68)
       + POWER(x45,68) + POWER(x46,68) + POWER(x47,68) + POWER(x48,68) + POWER(
      x49,68) + POWER(x50,68) + POWER(x51,68) + POWER(x52,68) + POWER(x53,68)
       + POWER(x54,68) + POWER(x55,68) + POWER(x56,68) + POWER(x57,68) + POWER(
      x58,68) + POWER(x59,68) + POWER(x60,68) + POWER(x61,68) + POWER(x62,68)
       + POWER(x63,68) + POWER(x64,68) + POWER(x65,68) + POWER(x66,68) + POWER(
      x67,68) + POWER(x68,68) + POWER(x69,68) + POWER(x70,68) + POWER(x71,68)
       + POWER(x72,68) + POWER(x73,68) + POWER(x74,68) + POWER(x75,68) + POWER(
      x76,68) + POWER(x77,68) + POWER(x78,68) + POWER(x79,68) + POWER(x80,68)
       + POWER(x81,68) + POWER(x82,68) + POWER(x83,68) + POWER(x84,68) + POWER(
      x85,68) + POWER(x86,68) + POWER(x87,68) + POWER(x88,68) + POWER(x89,68)
       + POWER(x90,68) + POWER(x91,68) + POWER(x92,68) + POWER(x93,68) + POWER(
      x94,68) + POWER(x95,68) + POWER(x96,68) + POWER(x97,68) + POWER(x98,68)
       + POWER(x99,68) + POWER(x100,68)) - x102 =L= 0;

e69.. sqr((-1.98563922710361) + POWER(x1,69) + POWER(x2,69) + POWER(x3,69) + 
      POWER(x4,69) + POWER(x5,69) + POWER(x6,69) + POWER(x7,69) + POWER(x8,69)
       + POWER(x9,69) + POWER(x10,69) + POWER(x11,69) + POWER(x12,69) + POWER(
      x13,69) + POWER(x14,69) + POWER(x15,69) + POWER(x16,69) + POWER(x17,69)
       + POWER(x18,69) + POWER(x19,69) + POWER(x20,69) + POWER(x21,69) + POWER(
      x22,69) + POWER(x23,69) + POWER(x24,69) + POWER(x25,69) + POWER(x26,69)
       + POWER(x27,69) + POWER(x28,69) + POWER(x29,69) + POWER(x30,69) + POWER(
      x31,69) + POWER(x32,69) + POWER(x33,69) + POWER(x34,69) + POWER(x35,69)
       + POWER(x36,69) + POWER(x37,69) + POWER(x38,69) + POWER(x39,69) + POWER(
      x40,69) + POWER(x41,69) + POWER(x42,69) + POWER(x43,69) + POWER(x44,69)
       + POWER(x45,69) + POWER(x46,69) + POWER(x47,69) + POWER(x48,69) + POWER(
      x49,69) + POWER(x50,69) + POWER(x51,69) + POWER(x52,69) + POWER(x53,69)
       + POWER(x54,69) + POWER(x55,69) + POWER(x56,69) + POWER(x57,69) + POWER(
      x58,69) + POWER(x59,69) + POWER(x60,69) + POWER(x61,69) + POWER(x62,69)
       + POWER(x63,69) + POWER(x64,69) + POWER(x65,69) + POWER(x66,69) + POWER(
      x67,69) + POWER(x68,69) + POWER(x69,69) + POWER(x70,69) + POWER(x71,69)
       + POWER(x72,69) + POWER(x73,69) + POWER(x74,69) + POWER(x75,69) + POWER(
      x76,69) + POWER(x77,69) + POWER(x78,69) + POWER(x79,69) + POWER(x80,69)
       + POWER(x81,69) + POWER(x82,69) + POWER(x83,69) + POWER(x84,69) + POWER(
      x85,69) + POWER(x86,69) + POWER(x87,69) + POWER(x88,69) + POWER(x89,69)
       + POWER(x90,69) + POWER(x91,69) + POWER(x92,69) + POWER(x93,69) + POWER(
      x94,69) + POWER(x95,69) + POWER(x96,69) + POWER(x97,69) + POWER(x98,69)
       + POWER(x99,69) + POWER(x100,69)) - x102 =L= 0;

e70.. sqr((-1.96633262421456) + POWER(x1,70) + POWER(x2,70) + POWER(x3,70) + 
      POWER(x4,70) + POWER(x5,70) + POWER(x6,70) + POWER(x7,70) + POWER(x8,70)
       + POWER(x9,70) + POWER(x10,70) + POWER(x11,70) + POWER(x12,70) + POWER(
      x13,70) + POWER(x14,70) + POWER(x15,70) + POWER(x16,70) + POWER(x17,70)
       + POWER(x18,70) + POWER(x19,70) + POWER(x20,70) + POWER(x21,70) + POWER(
      x22,70) + POWER(x23,70) + POWER(x24,70) + POWER(x25,70) + POWER(x26,70)
       + POWER(x27,70) + POWER(x28,70) + POWER(x29,70) + POWER(x30,70) + POWER(
      x31,70) + POWER(x32,70) + POWER(x33,70) + POWER(x34,70) + POWER(x35,70)
       + POWER(x36,70) + POWER(x37,70) + POWER(x38,70) + POWER(x39,70) + POWER(
      x40,70) + POWER(x41,70) + POWER(x42,70) + POWER(x43,70) + POWER(x44,70)
       + POWER(x45,70) + POWER(x46,70) + POWER(x47,70) + POWER(x48,70) + POWER(
      x49,70) + POWER(x50,70) + POWER(x51,70) + POWER(x52,70) + POWER(x53,70)
       + POWER(x54,70) + POWER(x55,70) + POWER(x56,70) + POWER(x57,70) + POWER(
      x58,70) + POWER(x59,70) + POWER(x60,70) + POWER(x61,70) + POWER(x62,70)
       + POWER(x63,70) + POWER(x64,70) + POWER(x65,70) + POWER(x66,70) + POWER(
      x67,70) + POWER(x68,70) + POWER(x69,70) + POWER(x70,70) + POWER(x71,70)
       + POWER(x72,70) + POWER(x73,70) + POWER(x74,70) + POWER(x75,70) + POWER(
      x76,70) + POWER(x77,70) + POWER(x78,70) + POWER(x79,70) + POWER(x80,70)
       + POWER(x81,70) + POWER(x82,70) + POWER(x83,70) + POWER(x84,70) + POWER(
      x85,70) + POWER(x86,70) + POWER(x87,70) + POWER(x88,70) + POWER(x89,70)
       + POWER(x90,70) + POWER(x91,70) + POWER(x92,70) + POWER(x93,70) + POWER(
      x94,70) + POWER(x95,70) + POWER(x96,70) + POWER(x97,70) + POWER(x98,70)
       + POWER(x99,70) + POWER(x100,70)) - x102 =L= 0;

e71.. sqr((-1.94758437566617) + POWER(x1,71) + POWER(x2,71) + POWER(x3,71) + 
      POWER(x4,71) + POWER(x5,71) + POWER(x6,71) + POWER(x7,71) + POWER(x8,71)
       + POWER(x9,71) + POWER(x10,71) + POWER(x11,71) + POWER(x12,71) + POWER(
      x13,71) + POWER(x14,71) + POWER(x15,71) + POWER(x16,71) + POWER(x17,71)
       + POWER(x18,71) + POWER(x19,71) + POWER(x20,71) + POWER(x21,71) + POWER(
      x22,71) + POWER(x23,71) + POWER(x24,71) + POWER(x25,71) + POWER(x26,71)
       + POWER(x27,71) + POWER(x28,71) + POWER(x29,71) + POWER(x30,71) + POWER(
      x31,71) + POWER(x32,71) + POWER(x33,71) + POWER(x34,71) + POWER(x35,71)
       + POWER(x36,71) + POWER(x37,71) + POWER(x38,71) + POWER(x39,71) + POWER(
      x40,71) + POWER(x41,71) + POWER(x42,71) + POWER(x43,71) + POWER(x44,71)
       + POWER(x45,71) + POWER(x46,71) + POWER(x47,71) + POWER(x48,71) + POWER(
      x49,71) + POWER(x50,71) + POWER(x51,71) + POWER(x52,71) + POWER(x53,71)
       + POWER(x54,71) + POWER(x55,71) + POWER(x56,71) + POWER(x57,71) + POWER(
      x58,71) + POWER(x59,71) + POWER(x60,71) + POWER(x61,71) + POWER(x62,71)
       + POWER(x63,71) + POWER(x64,71) + POWER(x65,71) + POWER(x66,71) + POWER(
      x67,71) + POWER(x68,71) + POWER(x69,71) + POWER(x70,71) + POWER(x71,71)
       + POWER(x72,71) + POWER(x73,71) + POWER(x74,71) + POWER(x75,71) + POWER(
      x76,71) + POWER(x77,71) + POWER(x78,71) + POWER(x79,71) + POWER(x80,71)
       + POWER(x81,71) + POWER(x82,71) + POWER(x83,71) + POWER(x84,71) + POWER(
      x85,71) + POWER(x86,71) + POWER(x87,71) + POWER(x88,71) + POWER(x89,71)
       + POWER(x90,71) + POWER(x91,71) + POWER(x92,71) + POWER(x93,71) + POWER(
      x94,71) + POWER(x95,71) + POWER(x96,71) + POWER(x97,71) + POWER(x98,71)
       + POWER(x99,71) + POWER(x100,71)) - x102 =L= 0;

e72.. sqr((-1.92937150515754) + POWER(x1,72) + POWER(x2,72) + POWER(x3,72) + 
      POWER(x4,72) + POWER(x5,72) + POWER(x6,72) + POWER(x7,72) + POWER(x8,72)
       + POWER(x9,72) + POWER(x10,72) + POWER(x11,72) + POWER(x12,72) + POWER(
      x13,72) + POWER(x14,72) + POWER(x15,72) + POWER(x16,72) + POWER(x17,72)
       + POWER(x18,72) + POWER(x19,72) + POWER(x20,72) + POWER(x21,72) + POWER(
      x22,72) + POWER(x23,72) + POWER(x24,72) + POWER(x25,72) + POWER(x26,72)
       + POWER(x27,72) + POWER(x28,72) + POWER(x29,72) + POWER(x30,72) + POWER(
      x31,72) + POWER(x32,72) + POWER(x33,72) + POWER(x34,72) + POWER(x35,72)
       + POWER(x36,72) + POWER(x37,72) + POWER(x38,72) + POWER(x39,72) + POWER(
      x40,72) + POWER(x41,72) + POWER(x42,72) + POWER(x43,72) + POWER(x44,72)
       + POWER(x45,72) + POWER(x46,72) + POWER(x47,72) + POWER(x48,72) + POWER(
      x49,72) + POWER(x50,72) + POWER(x51,72) + POWER(x52,72) + POWER(x53,72)
       + POWER(x54,72) + POWER(x55,72) + POWER(x56,72) + POWER(x57,72) + POWER(
      x58,72) + POWER(x59,72) + POWER(x60,72) + POWER(x61,72) + POWER(x62,72)
       + POWER(x63,72) + POWER(x64,72) + POWER(x65,72) + POWER(x66,72) + POWER(
      x67,72) + POWER(x68,72) + POWER(x69,72) + POWER(x70,72) + POWER(x71,72)
       + POWER(x72,72) + POWER(x73,72) + POWER(x74,72) + POWER(x75,72) + POWER(
      x76,72) + POWER(x77,72) + POWER(x78,72) + POWER(x79,72) + POWER(x80,72)
       + POWER(x81,72) + POWER(x82,72) + POWER(x83,72) + POWER(x84,72) + POWER(
      x85,72) + POWER(x86,72) + POWER(x87,72) + POWER(x88,72) + POWER(x89,72)
       + POWER(x90,72) + POWER(x91,72) + POWER(x92,72) + POWER(x93,72) + POWER(
      x94,72) + POWER(x95,72) + POWER(x96,72) + POWER(x97,72) + POWER(x98,72)
       + POWER(x99,72) + POWER(x100,72)) - x102 =L= 0;

e73.. sqr((-1.91167227797319) + POWER(x1,73) + POWER(x2,73) + POWER(x3,73) + 
      POWER(x4,73) + POWER(x5,73) + POWER(x6,73) + POWER(x7,73) + POWER(x8,73)
       + POWER(x9,73) + POWER(x10,73) + POWER(x11,73) + POWER(x12,73) + POWER(
      x13,73) + POWER(x14,73) + POWER(x15,73) + POWER(x16,73) + POWER(x17,73)
       + POWER(x18,73) + POWER(x19,73) + POWER(x20,73) + POWER(x21,73) + POWER(
      x22,73) + POWER(x23,73) + POWER(x24,73) + POWER(x25,73) + POWER(x26,73)
       + POWER(x27,73) + POWER(x28,73) + POWER(x29,73) + POWER(x30,73) + POWER(
      x31,73) + POWER(x32,73) + POWER(x33,73) + POWER(x34,73) + POWER(x35,73)
       + POWER(x36,73) + POWER(x37,73) + POWER(x38,73) + POWER(x39,73) + POWER(
      x40,73) + POWER(x41,73) + POWER(x42,73) + POWER(x43,73) + POWER(x44,73)
       + POWER(x45,73) + POWER(x46,73) + POWER(x47,73) + POWER(x48,73) + POWER(
      x49,73) + POWER(x50,73) + POWER(x51,73) + POWER(x52,73) + POWER(x53,73)
       + POWER(x54,73) + POWER(x55,73) + POWER(x56,73) + POWER(x57,73) + POWER(
      x58,73) + POWER(x59,73) + POWER(x60,73) + POWER(x61,73) + POWER(x62,73)
       + POWER(x63,73) + POWER(x64,73) + POWER(x65,73) + POWER(x66,73) + POWER(
      x67,73) + POWER(x68,73) + POWER(x69,73) + POWER(x70,73) + POWER(x71,73)
       + POWER(x72,73) + POWER(x73,73) + POWER(x74,73) + POWER(x75,73) + POWER(
      x76,73) + POWER(x77,73) + POWER(x78,73) + POWER(x79,73) + POWER(x80,73)
       + POWER(x81,73) + POWER(x82,73) + POWER(x83,73) + POWER(x84,73) + POWER(
      x85,73) + POWER(x86,73) + POWER(x87,73) + POWER(x88,73) + POWER(x89,73)
       + POWER(x90,73) + POWER(x91,73) + POWER(x92,73) + POWER(x93,73) + POWER(
      x94,73) + POWER(x95,73) + POWER(x96,73) + POWER(x97,73) + POWER(x98,73)
       + POWER(x99,73) + POWER(x100,73)) - x102 =L= 0;

e74.. sqr((-1.89446611821278) + POWER(x1,74) + POWER(x2,74) + POWER(x3,74) + 
      POWER(x4,74) + POWER(x5,74) + POWER(x6,74) + POWER(x7,74) + POWER(x8,74)
       + POWER(x9,74) + POWER(x10,74) + POWER(x11,74) + POWER(x12,74) + POWER(
      x13,74) + POWER(x14,74) + POWER(x15,74) + POWER(x16,74) + POWER(x17,74)
       + POWER(x18,74) + POWER(x19,74) + POWER(x20,74) + POWER(x21,74) + POWER(
      x22,74) + POWER(x23,74) + POWER(x24,74) + POWER(x25,74) + POWER(x26,74)
       + POWER(x27,74) + POWER(x28,74) + POWER(x29,74) + POWER(x30,74) + POWER(
      x31,74) + POWER(x32,74) + POWER(x33,74) + POWER(x34,74) + POWER(x35,74)
       + POWER(x36,74) + POWER(x37,74) + POWER(x38,74) + POWER(x39,74) + POWER(
      x40,74) + POWER(x41,74) + POWER(x42,74) + POWER(x43,74) + POWER(x44,74)
       + POWER(x45,74) + POWER(x46,74) + POWER(x47,74) + POWER(x48,74) + POWER(
      x49,74) + POWER(x50,74) + POWER(x51,74) + POWER(x52,74) + POWER(x53,74)
       + POWER(x54,74) + POWER(x55,74) + POWER(x56,74) + POWER(x57,74) + POWER(
      x58,74) + POWER(x59,74) + POWER(x60,74) + POWER(x61,74) + POWER(x62,74)
       + POWER(x63,74) + POWER(x64,74) + POWER(x65,74) + POWER(x66,74) + POWER(
      x67,74) + POWER(x68,74) + POWER(x69,74) + POWER(x70,74) + POWER(x71,74)
       + POWER(x72,74) + POWER(x73,74) + POWER(x74,74) + POWER(x75,74) + POWER(
      x76,74) + POWER(x77,74) + POWER(x78,74) + POWER(x79,74) + POWER(x80,74)
       + POWER(x81,74) + POWER(x82,74) + POWER(x83,74) + POWER(x84,74) + POWER(
      x85,74) + POWER(x86,74) + POWER(x87,74) + POWER(x88,74) + POWER(x89,74)
       + POWER(x90,74) + POWER(x91,74) + POWER(x92,74) + POWER(x93,74) + POWER(
      x94,74) + POWER(x95,74) + POWER(x96,74) + POWER(x97,74) + POWER(x98,74)
       + POWER(x99,74) + POWER(x100,74)) - x102 =L= 0;

e75.. sqr((-1.87773353255517) + POWER(x1,75) + POWER(x2,75) + POWER(x3,75) + 
      POWER(x4,75) + POWER(x5,75) + POWER(x6,75) + POWER(x7,75) + POWER(x8,75)
       + POWER(x9,75) + POWER(x10,75) + POWER(x11,75) + POWER(x12,75) + POWER(
      x13,75) + POWER(x14,75) + POWER(x15,75) + POWER(x16,75) + POWER(x17,75)
       + POWER(x18,75) + POWER(x19,75) + POWER(x20,75) + POWER(x21,75) + POWER(
      x22,75) + POWER(x23,75) + POWER(x24,75) + POWER(x25,75) + POWER(x26,75)
       + POWER(x27,75) + POWER(x28,75) + POWER(x29,75) + POWER(x30,75) + POWER(
      x31,75) + POWER(x32,75) + POWER(x33,75) + POWER(x34,75) + POWER(x35,75)
       + POWER(x36,75) + POWER(x37,75) + POWER(x38,75) + POWER(x39,75) + POWER(
      x40,75) + POWER(x41,75) + POWER(x42,75) + POWER(x43,75) + POWER(x44,75)
       + POWER(x45,75) + POWER(x46,75) + POWER(x47,75) + POWER(x48,75) + POWER(
      x49,75) + POWER(x50,75) + POWER(x51,75) + POWER(x52,75) + POWER(x53,75)
       + POWER(x54,75) + POWER(x55,75) + POWER(x56,75) + POWER(x57,75) + POWER(
      x58,75) + POWER(x59,75) + POWER(x60,75) + POWER(x61,75) + POWER(x62,75)
       + POWER(x63,75) + POWER(x64,75) + POWER(x65,75) + POWER(x66,75) + POWER(
      x67,75) + POWER(x68,75) + POWER(x69,75) + POWER(x70,75) + POWER(x71,75)
       + POWER(x72,75) + POWER(x73,75) + POWER(x74,75) + POWER(x75,75) + POWER(
      x76,75) + POWER(x77,75) + POWER(x78,75) + POWER(x79,75) + POWER(x80,75)
       + POWER(x81,75) + POWER(x82,75) + POWER(x83,75) + POWER(x84,75) + POWER(
      x85,75) + POWER(x86,75) + POWER(x87,75) + POWER(x88,75) + POWER(x89,75)
       + POWER(x90,75) + POWER(x91,75) + POWER(x92,75) + POWER(x93,75) + POWER(
      x94,75) + POWER(x95,75) + POWER(x96,75) + POWER(x97,75) + POWER(x98,75)
       + POWER(x99,75) + POWER(x100,75)) - x102 =L= 0;

e76.. sqr((-1.86145603996313) + POWER(x1,76) + POWER(x2,76) + POWER(x3,76) + 
      POWER(x4,76) + POWER(x5,76) + POWER(x6,76) + POWER(x7,76) + POWER(x8,76)
       + POWER(x9,76) + POWER(x10,76) + POWER(x11,76) + POWER(x12,76) + POWER(
      x13,76) + POWER(x14,76) + POWER(x15,76) + POWER(x16,76) + POWER(x17,76)
       + POWER(x18,76) + POWER(x19,76) + POWER(x20,76) + POWER(x21,76) + POWER(
      x22,76) + POWER(x23,76) + POWER(x24,76) + POWER(x25,76) + POWER(x26,76)
       + POWER(x27,76) + POWER(x28,76) + POWER(x29,76) + POWER(x30,76) + POWER(
      x31,76) + POWER(x32,76) + POWER(x33,76) + POWER(x34,76) + POWER(x35,76)
       + POWER(x36,76) + POWER(x37,76) + POWER(x38,76) + POWER(x39,76) + POWER(
      x40,76) + POWER(x41,76) + POWER(x42,76) + POWER(x43,76) + POWER(x44,76)
       + POWER(x45,76) + POWER(x46,76) + POWER(x47,76) + POWER(x48,76) + POWER(
      x49,76) + POWER(x50,76) + POWER(x51,76) + POWER(x52,76) + POWER(x53,76)
       + POWER(x54,76) + POWER(x55,76) + POWER(x56,76) + POWER(x57,76) + POWER(
      x58,76) + POWER(x59,76) + POWER(x60,76) + POWER(x61,76) + POWER(x62,76)
       + POWER(x63,76) + POWER(x64,76) + POWER(x65,76) + POWER(x66,76) + POWER(
      x67,76) + POWER(x68,76) + POWER(x69,76) + POWER(x70,76) + POWER(x71,76)
       + POWER(x72,76) + POWER(x73,76) + POWER(x74,76) + POWER(x75,76) + POWER(
      x76,76) + POWER(x77,76) + POWER(x78,76) + POWER(x79,76) + POWER(x80,76)
       + POWER(x81,76) + POWER(x82,76) + POWER(x83,76) + POWER(x84,76) + POWER(
      x85,76) + POWER(x86,76) + POWER(x87,76) + POWER(x88,76) + POWER(x89,76)
       + POWER(x90,76) + POWER(x91,76) + POWER(x92,76) + POWER(x93,76) + POWER(
      x94,76) + POWER(x95,76) + POWER(x96,76) + POWER(x97,76) + POWER(x98,76)
       + POWER(x99,76) + POWER(x100,76)) - x102 =L= 0;

e77.. sqr((-1.84561610679524) + POWER(x1,77) + POWER(x2,77) + POWER(x3,77) + 
      POWER(x4,77) + POWER(x5,77) + POWER(x6,77) + POWER(x7,77) + POWER(x8,77)
       + POWER(x9,77) + POWER(x10,77) + POWER(x11,77) + POWER(x12,77) + POWER(
      x13,77) + POWER(x14,77) + POWER(x15,77) + POWER(x16,77) + POWER(x17,77)
       + POWER(x18,77) + POWER(x19,77) + POWER(x20,77) + POWER(x21,77) + POWER(
      x22,77) + POWER(x23,77) + POWER(x24,77) + POWER(x25,77) + POWER(x26,77)
       + POWER(x27,77) + POWER(x28,77) + POWER(x29,77) + POWER(x30,77) + POWER(
      x31,77) + POWER(x32,77) + POWER(x33,77) + POWER(x34,77) + POWER(x35,77)
       + POWER(x36,77) + POWER(x37,77) + POWER(x38,77) + POWER(x39,77) + POWER(
      x40,77) + POWER(x41,77) + POWER(x42,77) + POWER(x43,77) + POWER(x44,77)
       + POWER(x45,77) + POWER(x46,77) + POWER(x47,77) + POWER(x48,77) + POWER(
      x49,77) + POWER(x50,77) + POWER(x51,77) + POWER(x52,77) + POWER(x53,77)
       + POWER(x54,77) + POWER(x55,77) + POWER(x56,77) + POWER(x57,77) + POWER(
      x58,77) + POWER(x59,77) + POWER(x60,77) + POWER(x61,77) + POWER(x62,77)
       + POWER(x63,77) + POWER(x64,77) + POWER(x65,77) + POWER(x66,77) + POWER(
      x67,77) + POWER(x68,77) + POWER(x69,77) + POWER(x70,77) + POWER(x71,77)
       + POWER(x72,77) + POWER(x73,77) + POWER(x74,77) + POWER(x75,77) + POWER(
      x76,77) + POWER(x77,77) + POWER(x78,77) + POWER(x79,77) + POWER(x80,77)
       + POWER(x81,77) + POWER(x82,77) + POWER(x83,77) + POWER(x84,77) + POWER(
      x85,77) + POWER(x86,77) + POWER(x87,77) + POWER(x88,77) + POWER(x89,77)
       + POWER(x90,77) + POWER(x91,77) + POWER(x92,77) + POWER(x93,77) + POWER(
      x94,77) + POWER(x95,77) + POWER(x96,77) + POWER(x97,77) + POWER(x98,77)
       + POWER(x99,77) + POWER(x100,77)) - x102 =L= 0;

e78.. sqr((-1.8301970868462) + POWER(x1,78) + POWER(x2,78) + POWER(x3,78) + 
      POWER(x4,78) + POWER(x5,78) + POWER(x6,78) + POWER(x7,78) + POWER(x8,78)
       + POWER(x9,78) + POWER(x10,78) + POWER(x11,78) + POWER(x12,78) + POWER(
      x13,78) + POWER(x14,78) + POWER(x15,78) + POWER(x16,78) + POWER(x17,78)
       + POWER(x18,78) + POWER(x19,78) + POWER(x20,78) + POWER(x21,78) + POWER(
      x22,78) + POWER(x23,78) + POWER(x24,78) + POWER(x25,78) + POWER(x26,78)
       + POWER(x27,78) + POWER(x28,78) + POWER(x29,78) + POWER(x30,78) + POWER(
      x31,78) + POWER(x32,78) + POWER(x33,78) + POWER(x34,78) + POWER(x35,78)
       + POWER(x36,78) + POWER(x37,78) + POWER(x38,78) + POWER(x39,78) + POWER(
      x40,78) + POWER(x41,78) + POWER(x42,78) + POWER(x43,78) + POWER(x44,78)
       + POWER(x45,78) + POWER(x46,78) + POWER(x47,78) + POWER(x48,78) + POWER(
      x49,78) + POWER(x50,78) + POWER(x51,78) + POWER(x52,78) + POWER(x53,78)
       + POWER(x54,78) + POWER(x55,78) + POWER(x56,78) + POWER(x57,78) + POWER(
      x58,78) + POWER(x59,78) + POWER(x60,78) + POWER(x61,78) + POWER(x62,78)
       + POWER(x63,78) + POWER(x64,78) + POWER(x65,78) + POWER(x66,78) + POWER(
      x67,78) + POWER(x68,78) + POWER(x69,78) + POWER(x70,78) + POWER(x71,78)
       + POWER(x72,78) + POWER(x73,78) + POWER(x74,78) + POWER(x75,78) + POWER(
      x76,78) + POWER(x77,78) + POWER(x78,78) + POWER(x79,78) + POWER(x80,78)
       + POWER(x81,78) + POWER(x82,78) + POWER(x83,78) + POWER(x84,78) + POWER(
      x85,78) + POWER(x86,78) + POWER(x87,78) + POWER(x88,78) + POWER(x89,78)
       + POWER(x90,78) + POWER(x91,78) + POWER(x92,78) + POWER(x93,78) + POWER(
      x94,78) + POWER(x95,78) + POWER(x96,78) + POWER(x97,78) + POWER(x98,78)
       + POWER(x99,78) + POWER(x100,78)) - x102 =L= 0;

e79.. sqr((-1.81518316588393) + POWER(x1,79) + POWER(x2,79) + POWER(x3,79) + 
      POWER(x4,79) + POWER(x5,79) + POWER(x6,79) + POWER(x7,79) + POWER(x8,79)
       + POWER(x9,79) + POWER(x10,79) + POWER(x11,79) + POWER(x12,79) + POWER(
      x13,79) + POWER(x14,79) + POWER(x15,79) + POWER(x16,79) + POWER(x17,79)
       + POWER(x18,79) + POWER(x19,79) + POWER(x20,79) + POWER(x21,79) + POWER(
      x22,79) + POWER(x23,79) + POWER(x24,79) + POWER(x25,79) + POWER(x26,79)
       + POWER(x27,79) + POWER(x28,79) + POWER(x29,79) + POWER(x30,79) + POWER(
      x31,79) + POWER(x32,79) + POWER(x33,79) + POWER(x34,79) + POWER(x35,79)
       + POWER(x36,79) + POWER(x37,79) + POWER(x38,79) + POWER(x39,79) + POWER(
      x40,79) + POWER(x41,79) + POWER(x42,79) + POWER(x43,79) + POWER(x44,79)
       + POWER(x45,79) + POWER(x46,79) + POWER(x47,79) + POWER(x48,79) + POWER(
      x49,79) + POWER(x50,79) + POWER(x51,79) + POWER(x52,79) + POWER(x53,79)
       + POWER(x54,79) + POWER(x55,79) + POWER(x56,79) + POWER(x57,79) + POWER(
      x58,79) + POWER(x59,79) + POWER(x60,79) + POWER(x61,79) + POWER(x62,79)
       + POWER(x63,79) + POWER(x64,79) + POWER(x65,79) + POWER(x66,79) + POWER(
      x67,79) + POWER(x68,79) + POWER(x69,79) + POWER(x70,79) + POWER(x71,79)
       + POWER(x72,79) + POWER(x73,79) + POWER(x74,79) + POWER(x75,79) + POWER(
      x76,79) + POWER(x77,79) + POWER(x78,79) + POWER(x79,79) + POWER(x80,79)
       + POWER(x81,79) + POWER(x82,79) + POWER(x83,79) + POWER(x84,79) + POWER(
      x85,79) + POWER(x86,79) + POWER(x87,79) + POWER(x88,79) + POWER(x89,79)
       + POWER(x90,79) + POWER(x91,79) + POWER(x92,79) + POWER(x93,79) + POWER(
      x94,79) + POWER(x95,79) + POWER(x96,79) + POWER(x97,79) + POWER(x98,79)
       + POWER(x99,79) + POWER(x100,79)) - x102 =L= 0;

e80.. sqr((-1.80055931029525) + POWER(x1,80) + POWER(x2,80) + POWER(x3,80) + 
      POWER(x4,80) + POWER(x5,80) + POWER(x6,80) + POWER(x7,80) + POWER(x8,80)
       + POWER(x9,80) + POWER(x10,80) + POWER(x11,80) + POWER(x12,80) + POWER(
      x13,80) + POWER(x14,80) + POWER(x15,80) + POWER(x16,80) + POWER(x17,80)
       + POWER(x18,80) + POWER(x19,80) + POWER(x20,80) + POWER(x21,80) + POWER(
      x22,80) + POWER(x23,80) + POWER(x24,80) + POWER(x25,80) + POWER(x26,80)
       + POWER(x27,80) + POWER(x28,80) + POWER(x29,80) + POWER(x30,80) + POWER(
      x31,80) + POWER(x32,80) + POWER(x33,80) + POWER(x34,80) + POWER(x35,80)
       + POWER(x36,80) + POWER(x37,80) + POWER(x38,80) + POWER(x39,80) + POWER(
      x40,80) + POWER(x41,80) + POWER(x42,80) + POWER(x43,80) + POWER(x44,80)
       + POWER(x45,80) + POWER(x46,80) + POWER(x47,80) + POWER(x48,80) + POWER(
      x49,80) + POWER(x50,80) + POWER(x51,80) + POWER(x52,80) + POWER(x53,80)
       + POWER(x54,80) + POWER(x55,80) + POWER(x56,80) + POWER(x57,80) + POWER(
      x58,80) + POWER(x59,80) + POWER(x60,80) + POWER(x61,80) + POWER(x62,80)
       + POWER(x63,80) + POWER(x64,80) + POWER(x65,80) + POWER(x66,80) + POWER(
      x67,80) + POWER(x68,80) + POWER(x69,80) + POWER(x70,80) + POWER(x71,80)
       + POWER(x72,80) + POWER(x73,80) + POWER(x74,80) + POWER(x75,80) + POWER(
      x76,80) + POWER(x77,80) + POWER(x78,80) + POWER(x79,80) + POWER(x80,80)
       + POWER(x81,80) + POWER(x82,80) + POWER(x83,80) + POWER(x84,80) + POWER(
      x85,80) + POWER(x86,80) + POWER(x87,80) + POWER(x88,80) + POWER(x89,80)
       + POWER(x90,80) + POWER(x91,80) + POWER(x92,80) + POWER(x93,80) + POWER(
      x94,80) + POWER(x95,80) + POWER(x96,80) + POWER(x97,80) + POWER(x98,80)
       + POWER(x99,80) + POWER(x100,80)) - x102 =L= 0;

e81.. sqr((-1.78631121948908) + POWER(x1,81) + POWER(x2,81) + POWER(x3,81) + 
      POWER(x4,81) + POWER(x5,81) + POWER(x6,81) + POWER(x7,81) + POWER(x8,81)
       + POWER(x9,81) + POWER(x10,81) + POWER(x11,81) + POWER(x12,81) + POWER(
      x13,81) + POWER(x14,81) + POWER(x15,81) + POWER(x16,81) + POWER(x17,81)
       + POWER(x18,81) + POWER(x19,81) + POWER(x20,81) + POWER(x21,81) + POWER(
      x22,81) + POWER(x23,81) + POWER(x24,81) + POWER(x25,81) + POWER(x26,81)
       + POWER(x27,81) + POWER(x28,81) + POWER(x29,81) + POWER(x30,81) + POWER(
      x31,81) + POWER(x32,81) + POWER(x33,81) + POWER(x34,81) + POWER(x35,81)
       + POWER(x36,81) + POWER(x37,81) + POWER(x38,81) + POWER(x39,81) + POWER(
      x40,81) + POWER(x41,81) + POWER(x42,81) + POWER(x43,81) + POWER(x44,81)
       + POWER(x45,81) + POWER(x46,81) + POWER(x47,81) + POWER(x48,81) + POWER(
      x49,81) + POWER(x50,81) + POWER(x51,81) + POWER(x52,81) + POWER(x53,81)
       + POWER(x54,81) + POWER(x55,81) + POWER(x56,81) + POWER(x57,81) + POWER(
      x58,81) + POWER(x59,81) + POWER(x60,81) + POWER(x61,81) + POWER(x62,81)
       + POWER(x63,81) + POWER(x64,81) + POWER(x65,81) + POWER(x66,81) + POWER(
      x67,81) + POWER(x68,81) + POWER(x69,81) + POWER(x70,81) + POWER(x71,81)
       + POWER(x72,81) + POWER(x73,81) + POWER(x74,81) + POWER(x75,81) + POWER(
      x76,81) + POWER(x77,81) + POWER(x78,81) + POWER(x79,81) + POWER(x80,81)
       + POWER(x81,81) + POWER(x82,81) + POWER(x83,81) + POWER(x84,81) + POWER(
      x85,81) + POWER(x86,81) + POWER(x87,81) + POWER(x88,81) + POWER(x89,81)
       + POWER(x90,81) + POWER(x91,81) + POWER(x92,81) + POWER(x93,81) + POWER(
      x94,81) + POWER(x95,81) + POWER(x96,81) + POWER(x97,81) + POWER(x98,81)
       + POWER(x99,81) + POWER(x100,81)) - x102 =L= 0;

e82.. sqr((-1.77242528174044) + POWER(x1,82) + POWER(x2,82) + POWER(x3,82) + 
      POWER(x4,82) + POWER(x5,82) + POWER(x6,82) + POWER(x7,82) + POWER(x8,82)
       + POWER(x9,82) + POWER(x10,82) + POWER(x11,82) + POWER(x12,82) + POWER(
      x13,82) + POWER(x14,82) + POWER(x15,82) + POWER(x16,82) + POWER(x17,82)
       + POWER(x18,82) + POWER(x19,82) + POWER(x20,82) + POWER(x21,82) + POWER(
      x22,82) + POWER(x23,82) + POWER(x24,82) + POWER(x25,82) + POWER(x26,82)
       + POWER(x27,82) + POWER(x28,82) + POWER(x29,82) + POWER(x30,82) + POWER(
      x31,82) + POWER(x32,82) + POWER(x33,82) + POWER(x34,82) + POWER(x35,82)
       + POWER(x36,82) + POWER(x37,82) + POWER(x38,82) + POWER(x39,82) + POWER(
      x40,82) + POWER(x41,82) + POWER(x42,82) + POWER(x43,82) + POWER(x44,82)
       + POWER(x45,82) + POWER(x46,82) + POWER(x47,82) + POWER(x48,82) + POWER(
      x49,82) + POWER(x50,82) + POWER(x51,82) + POWER(x52,82) + POWER(x53,82)
       + POWER(x54,82) + POWER(x55,82) + POWER(x56,82) + POWER(x57,82) + POWER(
      x58,82) + POWER(x59,82) + POWER(x60,82) + POWER(x61,82) + POWER(x62,82)
       + POWER(x63,82) + POWER(x64,82) + POWER(x65,82) + POWER(x66,82) + POWER(
      x67,82) + POWER(x68,82) + POWER(x69,82) + POWER(x70,82) + POWER(x71,82)
       + POWER(x72,82) + POWER(x73,82) + POWER(x74,82) + POWER(x75,82) + POWER(
      x76,82) + POWER(x77,82) + POWER(x78,82) + POWER(x79,82) + POWER(x80,82)
       + POWER(x81,82) + POWER(x82,82) + POWER(x83,82) + POWER(x84,82) + POWER(
      x85,82) + POWER(x86,82) + POWER(x87,82) + POWER(x88,82) + POWER(x89,82)
       + POWER(x90,82) + POWER(x91,82) + POWER(x92,82) + POWER(x93,82) + POWER(
      x94,82) + POWER(x95,82) + POWER(x96,82) + POWER(x97,82) + POWER(x98,82)
       + POWER(x99,82) + POWER(x100,82)) - x102 =L= 0;

e83.. sqr((-1.75888853318845) + POWER(x1,83) + POWER(x2,83) + POWER(x3,83) + 
      POWER(x4,83) + POWER(x5,83) + POWER(x6,83) + POWER(x7,83) + POWER(x8,83)
       + POWER(x9,83) + POWER(x10,83) + POWER(x11,83) + POWER(x12,83) + POWER(
      x13,83) + POWER(x14,83) + POWER(x15,83) + POWER(x16,83) + POWER(x17,83)
       + POWER(x18,83) + POWER(x19,83) + POWER(x20,83) + POWER(x21,83) + POWER(
      x22,83) + POWER(x23,83) + POWER(x24,83) + POWER(x25,83) + POWER(x26,83)
       + POWER(x27,83) + POWER(x28,83) + POWER(x29,83) + POWER(x30,83) + POWER(
      x31,83) + POWER(x32,83) + POWER(x33,83) + POWER(x34,83) + POWER(x35,83)
       + POWER(x36,83) + POWER(x37,83) + POWER(x38,83) + POWER(x39,83) + POWER(
      x40,83) + POWER(x41,83) + POWER(x42,83) + POWER(x43,83) + POWER(x44,83)
       + POWER(x45,83) + POWER(x46,83) + POWER(x47,83) + POWER(x48,83) + POWER(
      x49,83) + POWER(x50,83) + POWER(x51,83) + POWER(x52,83) + POWER(x53,83)
       + POWER(x54,83) + POWER(x55,83) + POWER(x56,83) + POWER(x57,83) + POWER(
      x58,83) + POWER(x59,83) + POWER(x60,83) + POWER(x61,83) + POWER(x62,83)
       + POWER(x63,83) + POWER(x64,83) + POWER(x65,83) + POWER(x66,83) + POWER(
      x67,83) + POWER(x68,83) + POWER(x69,83) + POWER(x70,83) + POWER(x71,83)
       + POWER(x72,83) + POWER(x73,83) + POWER(x74,83) + POWER(x75,83) + POWER(
      x76,83) + POWER(x77,83) + POWER(x78,83) + POWER(x79,83) + POWER(x80,83)
       + POWER(x81,83) + POWER(x82,83) + POWER(x83,83) + POWER(x84,83) + POWER(
      x85,83) + POWER(x86,83) + POWER(x87,83) + POWER(x88,83) + POWER(x89,83)
       + POWER(x90,83) + POWER(x91,83) + POWER(x92,83) + POWER(x93,83) + POWER(
      x94,83) + POWER(x95,83) + POWER(x96,83) + POWER(x97,83) + POWER(x98,83)
       + POWER(x99,83) + POWER(x100,83)) - x102 =L= 0;

e84.. sqr((-1.74568861972864) + POWER(x1,84) + POWER(x2,84) + POWER(x3,84) + 
      POWER(x4,84) + POWER(x5,84) + POWER(x6,84) + POWER(x7,84) + POWER(x8,84)
       + POWER(x9,84) + POWER(x10,84) + POWER(x11,84) + POWER(x12,84) + POWER(
      x13,84) + POWER(x14,84) + POWER(x15,84) + POWER(x16,84) + POWER(x17,84)
       + POWER(x18,84) + POWER(x19,84) + POWER(x20,84) + POWER(x21,84) + POWER(
      x22,84) + POWER(x23,84) + POWER(x24,84) + POWER(x25,84) + POWER(x26,84)
       + POWER(x27,84) + POWER(x28,84) + POWER(x29,84) + POWER(x30,84) + POWER(
      x31,84) + POWER(x32,84) + POWER(x33,84) + POWER(x34,84) + POWER(x35,84)
       + POWER(x36,84) + POWER(x37,84) + POWER(x38,84) + POWER(x39,84) + POWER(
      x40,84) + POWER(x41,84) + POWER(x42,84) + POWER(x43,84) + POWER(x44,84)
       + POWER(x45,84) + POWER(x46,84) + POWER(x47,84) + POWER(x48,84) + POWER(
      x49,84) + POWER(x50,84) + POWER(x51,84) + POWER(x52,84) + POWER(x53,84)
       + POWER(x54,84) + POWER(x55,84) + POWER(x56,84) + POWER(x57,84) + POWER(
      x58,84) + POWER(x59,84) + POWER(x60,84) + POWER(x61,84) + POWER(x62,84)
       + POWER(x63,84) + POWER(x64,84) + POWER(x65,84) + POWER(x66,84) + POWER(
      x67,84) + POWER(x68,84) + POWER(x69,84) + POWER(x70,84) + POWER(x71,84)
       + POWER(x72,84) + POWER(x73,84) + POWER(x74,84) + POWER(x75,84) + POWER(
      x76,84) + POWER(x77,84) + POWER(x78,84) + POWER(x79,84) + POWER(x80,84)
       + POWER(x81,84) + POWER(x82,84) + POWER(x83,84) + POWER(x84,84) + POWER(
      x85,84) + POWER(x86,84) + POWER(x87,84) + POWER(x88,84) + POWER(x89,84)
       + POWER(x90,84) + POWER(x91,84) + POWER(x92,84) + POWER(x93,84) + POWER(
      x94,84) + POWER(x95,84) + POWER(x96,84) + POWER(x97,84) + POWER(x98,84)
       + POWER(x99,84) + POWER(x100,84)) - x102 =L= 0;

e85.. sqr((-1.7328137615639) + POWER(x1,85) + POWER(x2,85) + POWER(x3,85) + 
      POWER(x4,85) + POWER(x5,85) + POWER(x6,85) + POWER(x7,85) + POWER(x8,85)
       + POWER(x9,85) + POWER(x10,85) + POWER(x11,85) + POWER(x12,85) + POWER(
      x13,85) + POWER(x14,85) + POWER(x15,85) + POWER(x16,85) + POWER(x17,85)
       + POWER(x18,85) + POWER(x19,85) + POWER(x20,85) + POWER(x21,85) + POWER(
      x22,85) + POWER(x23,85) + POWER(x24,85) + POWER(x25,85) + POWER(x26,85)
       + POWER(x27,85) + POWER(x28,85) + POWER(x29,85) + POWER(x30,85) + POWER(
      x31,85) + POWER(x32,85) + POWER(x33,85) + POWER(x34,85) + POWER(x35,85)
       + POWER(x36,85) + POWER(x37,85) + POWER(x38,85) + POWER(x39,85) + POWER(
      x40,85) + POWER(x41,85) + POWER(x42,85) + POWER(x43,85) + POWER(x44,85)
       + POWER(x45,85) + POWER(x46,85) + POWER(x47,85) + POWER(x48,85) + POWER(
      x49,85) + POWER(x50,85) + POWER(x51,85) + POWER(x52,85) + POWER(x53,85)
       + POWER(x54,85) + POWER(x55,85) + POWER(x56,85) + POWER(x57,85) + POWER(
      x58,85) + POWER(x59,85) + POWER(x60,85) + POWER(x61,85) + POWER(x62,85)
       + POWER(x63,85) + POWER(x64,85) + POWER(x65,85) + POWER(x66,85) + POWER(
      x67,85) + POWER(x68,85) + POWER(x69,85) + POWER(x70,85) + POWER(x71,85)
       + POWER(x72,85) + POWER(x73,85) + POWER(x74,85) + POWER(x75,85) + POWER(
      x76,85) + POWER(x77,85) + POWER(x78,85) + POWER(x79,85) + POWER(x80,85)
       + POWER(x81,85) + POWER(x82,85) + POWER(x83,85) + POWER(x84,85) + POWER(
      x85,85) + POWER(x86,85) + POWER(x87,85) + POWER(x88,85) + POWER(x89,85)
       + POWER(x90,85) + POWER(x91,85) + POWER(x92,85) + POWER(x93,85) + POWER(
      x94,85) + POWER(x95,85) + POWER(x96,85) + POWER(x97,85) + POWER(x98,85)
       + POWER(x99,85) + POWER(x100,85)) - x102 =L= 0;

e86.. sqr((-1.72025272020027) + POWER(x1,86) + POWER(x2,86) + POWER(x3,86) + 
      POWER(x4,86) + POWER(x5,86) + POWER(x6,86) + POWER(x7,86) + POWER(x8,86)
       + POWER(x9,86) + POWER(x10,86) + POWER(x11,86) + POWER(x12,86) + POWER(
      x13,86) + POWER(x14,86) + POWER(x15,86) + POWER(x16,86) + POWER(x17,86)
       + POWER(x18,86) + POWER(x19,86) + POWER(x20,86) + POWER(x21,86) + POWER(
      x22,86) + POWER(x23,86) + POWER(x24,86) + POWER(x25,86) + POWER(x26,86)
       + POWER(x27,86) + POWER(x28,86) + POWER(x29,86) + POWER(x30,86) + POWER(
      x31,86) + POWER(x32,86) + POWER(x33,86) + POWER(x34,86) + POWER(x35,86)
       + POWER(x36,86) + POWER(x37,86) + POWER(x38,86) + POWER(x39,86) + POWER(
      x40,86) + POWER(x41,86) + POWER(x42,86) + POWER(x43,86) + POWER(x44,86)
       + POWER(x45,86) + POWER(x46,86) + POWER(x47,86) + POWER(x48,86) + POWER(
      x49,86) + POWER(x50,86) + POWER(x51,86) + POWER(x52,86) + POWER(x53,86)
       + POWER(x54,86) + POWER(x55,86) + POWER(x56,86) + POWER(x57,86) + POWER(
      x58,86) + POWER(x59,86) + POWER(x60,86) + POWER(x61,86) + POWER(x62,86)
       + POWER(x63,86) + POWER(x64,86) + POWER(x65,86) + POWER(x66,86) + POWER(
      x67,86) + POWER(x68,86) + POWER(x69,86) + POWER(x70,86) + POWER(x71,86)
       + POWER(x72,86) + POWER(x73,86) + POWER(x74,86) + POWER(x75,86) + POWER(
      x76,86) + POWER(x77,86) + POWER(x78,86) + POWER(x79,86) + POWER(x80,86)
       + POWER(x81,86) + POWER(x82,86) + POWER(x83,86) + POWER(x84,86) + POWER(
      x85,86) + POWER(x86,86) + POWER(x87,86) + POWER(x88,86) + POWER(x89,86)
       + POWER(x90,86) + POWER(x91,86) + POWER(x92,86) + POWER(x93,86) + POWER(
      x94,86) + POWER(x95,86) + POWER(x96,86) + POWER(x97,86) + POWER(x98,86)
       + POWER(x99,86) + POWER(x100,86)) - x102 =L= 0;

e87.. sqr((-1.70799476769297) + POWER(x1,87) + POWER(x2,87) + POWER(x3,87) + 
      POWER(x4,87) + POWER(x5,87) + POWER(x6,87) + POWER(x7,87) + POWER(x8,87)
       + POWER(x9,87) + POWER(x10,87) + POWER(x11,87) + POWER(x12,87) + POWER(
      x13,87) + POWER(x14,87) + POWER(x15,87) + POWER(x16,87) + POWER(x17,87)
       + POWER(x18,87) + POWER(x19,87) + POWER(x20,87) + POWER(x21,87) + POWER(
      x22,87) + POWER(x23,87) + POWER(x24,87) + POWER(x25,87) + POWER(x26,87)
       + POWER(x27,87) + POWER(x28,87) + POWER(x29,87) + POWER(x30,87) + POWER(
      x31,87) + POWER(x32,87) + POWER(x33,87) + POWER(x34,87) + POWER(x35,87)
       + POWER(x36,87) + POWER(x37,87) + POWER(x38,87) + POWER(x39,87) + POWER(
      x40,87) + POWER(x41,87) + POWER(x42,87) + POWER(x43,87) + POWER(x44,87)
       + POWER(x45,87) + POWER(x46,87) + POWER(x47,87) + POWER(x48,87) + POWER(
      x49,87) + POWER(x50,87) + POWER(x51,87) + POWER(x52,87) + POWER(x53,87)
       + POWER(x54,87) + POWER(x55,87) + POWER(x56,87) + POWER(x57,87) + POWER(
      x58,87) + POWER(x59,87) + POWER(x60,87) + POWER(x61,87) + POWER(x62,87)
       + POWER(x63,87) + POWER(x64,87) + POWER(x65,87) + POWER(x66,87) + POWER(
      x67,87) + POWER(x68,87) + POWER(x69,87) + POWER(x70,87) + POWER(x71,87)
       + POWER(x72,87) + POWER(x73,87) + POWER(x74,87) + POWER(x75,87) + POWER(
      x76,87) + POWER(x77,87) + POWER(x78,87) + POWER(x79,87) + POWER(x80,87)
       + POWER(x81,87) + POWER(x82,87) + POWER(x83,87) + POWER(x84,87) + POWER(
      x85,87) + POWER(x86,87) + POWER(x87,87) + POWER(x88,87) + POWER(x89,87)
       + POWER(x90,87) + POWER(x91,87) + POWER(x92,87) + POWER(x93,87) + POWER(
      x94,87) + POWER(x95,87) + POWER(x96,87) + POWER(x97,87) + POWER(x98,87)
       + POWER(x99,87) + POWER(x100,87)) - x102 =L= 0;

e88.. sqr((-1.69602965796581) + POWER(x1,88) + POWER(x2,88) + POWER(x3,88) + 
      POWER(x4,88) + POWER(x5,88) + POWER(x6,88) + POWER(x7,88) + POWER(x8,88)
       + POWER(x9,88) + POWER(x10,88) + POWER(x11,88) + POWER(x12,88) + POWER(
      x13,88) + POWER(x14,88) + POWER(x15,88) + POWER(x16,88) + POWER(x17,88)
       + POWER(x18,88) + POWER(x19,88) + POWER(x20,88) + POWER(x21,88) + POWER(
      x22,88) + POWER(x23,88) + POWER(x24,88) + POWER(x25,88) + POWER(x26,88)
       + POWER(x27,88) + POWER(x28,88) + POWER(x29,88) + POWER(x30,88) + POWER(
      x31,88) + POWER(x32,88) + POWER(x33,88) + POWER(x34,88) + POWER(x35,88)
       + POWER(x36,88) + POWER(x37,88) + POWER(x38,88) + POWER(x39,88) + POWER(
      x40,88) + POWER(x41,88) + POWER(x42,88) + POWER(x43,88) + POWER(x44,88)
       + POWER(x45,88) + POWER(x46,88) + POWER(x47,88) + POWER(x48,88) + POWER(
      x49,88) + POWER(x50,88) + POWER(x51,88) + POWER(x52,88) + POWER(x53,88)
       + POWER(x54,88) + POWER(x55,88) + POWER(x56,88) + POWER(x57,88) + POWER(
      x58,88) + POWER(x59,88) + POWER(x60,88) + POWER(x61,88) + POWER(x62,88)
       + POWER(x63,88) + POWER(x64,88) + POWER(x65,88) + POWER(x66,88) + POWER(
      x67,88) + POWER(x68,88) + POWER(x69,88) + POWER(x70,88) + POWER(x71,88)
       + POWER(x72,88) + POWER(x73,88) + POWER(x74,88) + POWER(x75,88) + POWER(
      x76,88) + POWER(x77,88) + POWER(x78,88) + POWER(x79,88) + POWER(x80,88)
       + POWER(x81,88) + POWER(x82,88) + POWER(x83,88) + POWER(x84,88) + POWER(
      x85,88) + POWER(x86,88) + POWER(x87,88) + POWER(x88,88) + POWER(x89,88)
       + POWER(x90,88) + POWER(x91,88) + POWER(x92,88) + POWER(x93,88) + POWER(
      x94,88) + POWER(x95,88) + POWER(x96,88) + POWER(x97,88) + POWER(x98,88)
       + POWER(x99,88) + POWER(x100,88)) - x102 =L= 0;

e89.. sqr((-1.68434760004258) + POWER(x1,89) + POWER(x2,89) + POWER(x3,89) + 
      POWER(x4,89) + POWER(x5,89) + POWER(x6,89) + POWER(x7,89) + POWER(x8,89)
       + POWER(x9,89) + POWER(x10,89) + POWER(x11,89) + POWER(x12,89) + POWER(
      x13,89) + POWER(x14,89) + POWER(x15,89) + POWER(x16,89) + POWER(x17,89)
       + POWER(x18,89) + POWER(x19,89) + POWER(x20,89) + POWER(x21,89) + POWER(
      x22,89) + POWER(x23,89) + POWER(x24,89) + POWER(x25,89) + POWER(x26,89)
       + POWER(x27,89) + POWER(x28,89) + POWER(x29,89) + POWER(x30,89) + POWER(
      x31,89) + POWER(x32,89) + POWER(x33,89) + POWER(x34,89) + POWER(x35,89)
       + POWER(x36,89) + POWER(x37,89) + POWER(x38,89) + POWER(x39,89) + POWER(
      x40,89) + POWER(x41,89) + POWER(x42,89) + POWER(x43,89) + POWER(x44,89)
       + POWER(x45,89) + POWER(x46,89) + POWER(x47,89) + POWER(x48,89) + POWER(
      x49,89) + POWER(x50,89) + POWER(x51,89) + POWER(x52,89) + POWER(x53,89)
       + POWER(x54,89) + POWER(x55,89) + POWER(x56,89) + POWER(x57,89) + POWER(
      x58,89) + POWER(x59,89) + POWER(x60,89) + POWER(x61,89) + POWER(x62,89)
       + POWER(x63,89) + POWER(x64,89) + POWER(x65,89) + POWER(x66,89) + POWER(
      x67,89) + POWER(x68,89) + POWER(x69,89) + POWER(x70,89) + POWER(x71,89)
       + POWER(x72,89) + POWER(x73,89) + POWER(x74,89) + POWER(x75,89) + POWER(
      x76,89) + POWER(x77,89) + POWER(x78,89) + POWER(x79,89) + POWER(x80,89)
       + POWER(x81,89) + POWER(x82,89) + POWER(x83,89) + POWER(x84,89) + POWER(
      x85,89) + POWER(x86,89) + POWER(x87,89) + POWER(x88,89) + POWER(x89,89)
       + POWER(x90,89) + POWER(x91,89) + POWER(x92,89) + POWER(x93,89) + POWER(
      x94,89) + POWER(x95,89) + POWER(x96,89) + POWER(x97,89) + POWER(x98,89)
       + POWER(x99,89) + POWER(x100,89)) - x102 =L= 0;

e90.. sqr((-1.67293923304349) + POWER(x1,90) + POWER(x2,90) + POWER(x3,90) + 
      POWER(x4,90) + POWER(x5,90) + POWER(x6,90) + POWER(x7,90) + POWER(x8,90)
       + POWER(x9,90) + POWER(x10,90) + POWER(x11,90) + POWER(x12,90) + POWER(
      x13,90) + POWER(x14,90) + POWER(x15,90) + POWER(x16,90) + POWER(x17,90)
       + POWER(x18,90) + POWER(x19,90) + POWER(x20,90) + POWER(x21,90) + POWER(
      x22,90) + POWER(x23,90) + POWER(x24,90) + POWER(x25,90) + POWER(x26,90)
       + POWER(x27,90) + POWER(x28,90) + POWER(x29,90) + POWER(x30,90) + POWER(
      x31,90) + POWER(x32,90) + POWER(x33,90) + POWER(x34,90) + POWER(x35,90)
       + POWER(x36,90) + POWER(x37,90) + POWER(x38,90) + POWER(x39,90) + POWER(
      x40,90) + POWER(x41,90) + POWER(x42,90) + POWER(x43,90) + POWER(x44,90)
       + POWER(x45,90) + POWER(x46,90) + POWER(x47,90) + POWER(x48,90) + POWER(
      x49,90) + POWER(x50,90) + POWER(x51,90) + POWER(x52,90) + POWER(x53,90)
       + POWER(x54,90) + POWER(x55,90) + POWER(x56,90) + POWER(x57,90) + POWER(
      x58,90) + POWER(x59,90) + POWER(x60,90) + POWER(x61,90) + POWER(x62,90)
       + POWER(x63,90) + POWER(x64,90) + POWER(x65,90) + POWER(x66,90) + POWER(
      x67,90) + POWER(x68,90) + POWER(x69,90) + POWER(x70,90) + POWER(x71,90)
       + POWER(x72,90) + POWER(x73,90) + POWER(x74,90) + POWER(x75,90) + POWER(
      x76,90) + POWER(x77,90) + POWER(x78,90) + POWER(x79,90) + POWER(x80,90)
       + POWER(x81,90) + POWER(x82,90) + POWER(x83,90) + POWER(x84,90) + POWER(
      x85,90) + POWER(x86,90) + POWER(x87,90) + POWER(x88,90) + POWER(x89,90)
       + POWER(x90,90) + POWER(x91,90) + POWER(x92,90) + POWER(x93,90) + POWER(
      x94,90) + POWER(x95,90) + POWER(x96,90) + POWER(x97,90) + POWER(x98,90)
       + POWER(x99,90) + POWER(x100,90)) - x102 =L= 0;

e91.. sqr((-1.66179560281226) + POWER(x1,91) + POWER(x2,91) + POWER(x3,91) + 
      POWER(x4,91) + POWER(x5,91) + POWER(x6,91) + POWER(x7,91) + POWER(x8,91)
       + POWER(x9,91) + POWER(x10,91) + POWER(x11,91) + POWER(x12,91) + POWER(
      x13,91) + POWER(x14,91) + POWER(x15,91) + POWER(x16,91) + POWER(x17,91)
       + POWER(x18,91) + POWER(x19,91) + POWER(x20,91) + POWER(x21,91) + POWER(
      x22,91) + POWER(x23,91) + POWER(x24,91) + POWER(x25,91) + POWER(x26,91)
       + POWER(x27,91) + POWER(x28,91) + POWER(x29,91) + POWER(x30,91) + POWER(
      x31,91) + POWER(x32,91) + POWER(x33,91) + POWER(x34,91) + POWER(x35,91)
       + POWER(x36,91) + POWER(x37,91) + POWER(x38,91) + POWER(x39,91) + POWER(
      x40,91) + POWER(x41,91) + POWER(x42,91) + POWER(x43,91) + POWER(x44,91)
       + POWER(x45,91) + POWER(x46,91) + POWER(x47,91) + POWER(x48,91) + POWER(
      x49,91) + POWER(x50,91) + POWER(x51,91) + POWER(x52,91) + POWER(x53,91)
       + POWER(x54,91) + POWER(x55,91) + POWER(x56,91) + POWER(x57,91) + POWER(
      x58,91) + POWER(x59,91) + POWER(x60,91) + POWER(x61,91) + POWER(x62,91)
       + POWER(x63,91) + POWER(x64,91) + POWER(x65,91) + POWER(x66,91) + POWER(
      x67,91) + POWER(x68,91) + POWER(x69,91) + POWER(x70,91) + POWER(x71,91)
       + POWER(x72,91) + POWER(x73,91) + POWER(x74,91) + POWER(x75,91) + POWER(
      x76,91) + POWER(x77,91) + POWER(x78,91) + POWER(x79,91) + POWER(x80,91)
       + POWER(x81,91) + POWER(x82,91) + POWER(x83,91) + POWER(x84,91) + POWER(
      x85,91) + POWER(x86,91) + POWER(x87,91) + POWER(x88,91) + POWER(x89,91)
       + POWER(x90,91) + POWER(x91,91) + POWER(x92,91) + POWER(x93,91) + POWER(
      x94,91) + POWER(x95,91) + POWER(x96,91) + POWER(x97,91) + POWER(x98,91)
       + POWER(x99,91) + POWER(x100,91)) - x102 =L= 0;

e92.. sqr((-1.65090814005114) + POWER(x1,92) + POWER(x2,92) + POWER(x3,92) + 
      POWER(x4,92) + POWER(x5,92) + POWER(x6,92) + POWER(x7,92) + POWER(x8,92)
       + POWER(x9,92) + POWER(x10,92) + POWER(x11,92) + POWER(x12,92) + POWER(
      x13,92) + POWER(x14,92) + POWER(x15,92) + POWER(x16,92) + POWER(x17,92)
       + POWER(x18,92) + POWER(x19,92) + POWER(x20,92) + POWER(x21,92) + POWER(
      x22,92) + POWER(x23,92) + POWER(x24,92) + POWER(x25,92) + POWER(x26,92)
       + POWER(x27,92) + POWER(x28,92) + POWER(x29,92) + POWER(x30,92) + POWER(
      x31,92) + POWER(x32,92) + POWER(x33,92) + POWER(x34,92) + POWER(x35,92)
       + POWER(x36,92) + POWER(x37,92) + POWER(x38,92) + POWER(x39,92) + POWER(
      x40,92) + POWER(x41,92) + POWER(x42,92) + POWER(x43,92) + POWER(x44,92)
       + POWER(x45,92) + POWER(x46,92) + POWER(x47,92) + POWER(x48,92) + POWER(
      x49,92) + POWER(x50,92) + POWER(x51,92) + POWER(x52,92) + POWER(x53,92)
       + POWER(x54,92) + POWER(x55,92) + POWER(x56,92) + POWER(x57,92) + POWER(
      x58,92) + POWER(x59,92) + POWER(x60,92) + POWER(x61,92) + POWER(x62,92)
       + POWER(x63,92) + POWER(x64,92) + POWER(x65,92) + POWER(x66,92) + POWER(
      x67,92) + POWER(x68,92) + POWER(x69,92) + POWER(x70,92) + POWER(x71,92)
       + POWER(x72,92) + POWER(x73,92) + POWER(x74,92) + POWER(x75,92) + POWER(
      x76,92) + POWER(x77,92) + POWER(x78,92) + POWER(x79,92) + POWER(x80,92)
       + POWER(x81,92) + POWER(x82,92) + POWER(x83,92) + POWER(x84,92) + POWER(
      x85,92) + POWER(x86,92) + POWER(x87,92) + POWER(x88,92) + POWER(x89,92)
       + POWER(x90,92) + POWER(x91,92) + POWER(x92,92) + POWER(x93,92) + POWER(
      x94,92) + POWER(x95,92) + POWER(x96,92) + POWER(x97,92) + POWER(x98,92)
       + POWER(x99,92) + POWER(x100,92)) - x102 =L= 0;

e93.. sqr((-1.64026863985162) + POWER(x1,93) + POWER(x2,93) + POWER(x3,93) + 
      POWER(x4,93) + POWER(x5,93) + POWER(x6,93) + POWER(x7,93) + POWER(x8,93)
       + POWER(x9,93) + POWER(x10,93) + POWER(x11,93) + POWER(x12,93) + POWER(
      x13,93) + POWER(x14,93) + POWER(x15,93) + POWER(x16,93) + POWER(x17,93)
       + POWER(x18,93) + POWER(x19,93) + POWER(x20,93) + POWER(x21,93) + POWER(
      x22,93) + POWER(x23,93) + POWER(x24,93) + POWER(x25,93) + POWER(x26,93)
       + POWER(x27,93) + POWER(x28,93) + POWER(x29,93) + POWER(x30,93) + POWER(
      x31,93) + POWER(x32,93) + POWER(x33,93) + POWER(x34,93) + POWER(x35,93)
       + POWER(x36,93) + POWER(x37,93) + POWER(x38,93) + POWER(x39,93) + POWER(
      x40,93) + POWER(x41,93) + POWER(x42,93) + POWER(x43,93) + POWER(x44,93)
       + POWER(x45,93) + POWER(x46,93) + POWER(x47,93) + POWER(x48,93) + POWER(
      x49,93) + POWER(x50,93) + POWER(x51,93) + POWER(x52,93) + POWER(x53,93)
       + POWER(x54,93) + POWER(x55,93) + POWER(x56,93) + POWER(x57,93) + POWER(
      x58,93) + POWER(x59,93) + POWER(x60,93) + POWER(x61,93) + POWER(x62,93)
       + POWER(x63,93) + POWER(x64,93) + POWER(x65,93) + POWER(x66,93) + POWER(
      x67,93) + POWER(x68,93) + POWER(x69,93) + POWER(x70,93) + POWER(x71,93)
       + POWER(x72,93) + POWER(x73,93) + POWER(x74,93) + POWER(x75,93) + POWER(
      x76,93) + POWER(x77,93) + POWER(x78,93) + POWER(x79,93) + POWER(x80,93)
       + POWER(x81,93) + POWER(x82,93) + POWER(x83,93) + POWER(x84,93) + POWER(
      x85,93) + POWER(x86,93) + POWER(x87,93) + POWER(x88,93) + POWER(x89,93)
       + POWER(x90,93) + POWER(x91,93) + POWER(x92,93) + POWER(x93,93) + POWER(
      x94,93) + POWER(x95,93) + POWER(x96,93) + POWER(x97,93) + POWER(x98,93)
       + POWER(x99,93) + POWER(x100,93)) - x102 =L= 0;

e94.. sqr((-1.62986924251787) + POWER(x1,94) + POWER(x2,94) + POWER(x3,94) + 
      POWER(x4,94) + POWER(x5,94) + POWER(x6,94) + POWER(x7,94) + POWER(x8,94)
       + POWER(x9,94) + POWER(x10,94) + POWER(x11,94) + POWER(x12,94) + POWER(
      x13,94) + POWER(x14,94) + POWER(x15,94) + POWER(x16,94) + POWER(x17,94)
       + POWER(x18,94) + POWER(x19,94) + POWER(x20,94) + POWER(x21,94) + POWER(
      x22,94) + POWER(x23,94) + POWER(x24,94) + POWER(x25,94) + POWER(x26,94)
       + POWER(x27,94) + POWER(x28,94) + POWER(x29,94) + POWER(x30,94) + POWER(
      x31,94) + POWER(x32,94) + POWER(x33,94) + POWER(x34,94) + POWER(x35,94)
       + POWER(x36,94) + POWER(x37,94) + POWER(x38,94) + POWER(x39,94) + POWER(
      x40,94) + POWER(x41,94) + POWER(x42,94) + POWER(x43,94) + POWER(x44,94)
       + POWER(x45,94) + POWER(x46,94) + POWER(x47,94) + POWER(x48,94) + POWER(
      x49,94) + POWER(x50,94) + POWER(x51,94) + POWER(x52,94) + POWER(x53,94)
       + POWER(x54,94) + POWER(x55,94) + POWER(x56,94) + POWER(x57,94) + POWER(
      x58,94) + POWER(x59,94) + POWER(x60,94) + POWER(x61,94) + POWER(x62,94)
       + POWER(x63,94) + POWER(x64,94) + POWER(x65,94) + POWER(x66,94) + POWER(
      x67,94) + POWER(x68,94) + POWER(x69,94) + POWER(x70,94) + POWER(x71,94)
       + POWER(x72,94) + POWER(x73,94) + POWER(x74,94) + POWER(x75,94) + POWER(
      x76,94) + POWER(x77,94) + POWER(x78,94) + POWER(x79,94) + POWER(x80,94)
       + POWER(x81,94) + POWER(x82,94) + POWER(x83,94) + POWER(x84,94) + POWER(
      x85,94) + POWER(x86,94) + POWER(x87,94) + POWER(x88,94) + POWER(x89,94)
       + POWER(x90,94) + POWER(x91,94) + POWER(x92,94) + POWER(x93,94) + POWER(
      x94,94) + POWER(x95,94) + POWER(x96,94) + POWER(x97,94) + POWER(x98,94)
       + POWER(x99,94) + POWER(x100,94)) - x102 =L= 0;

e95.. sqr((-1.61970241558886) + POWER(x1,95) + POWER(x2,95) + POWER(x3,95) + 
      POWER(x4,95) + POWER(x5,95) + POWER(x6,95) + POWER(x7,95) + POWER(x8,95)
       + POWER(x9,95) + POWER(x10,95) + POWER(x11,95) + POWER(x12,95) + POWER(
      x13,95) + POWER(x14,95) + POWER(x15,95) + POWER(x16,95) + POWER(x17,95)
       + POWER(x18,95) + POWER(x19,95) + POWER(x20,95) + POWER(x21,95) + POWER(
      x22,95) + POWER(x23,95) + POWER(x24,95) + POWER(x25,95) + POWER(x26,95)
       + POWER(x27,95) + POWER(x28,95) + POWER(x29,95) + POWER(x30,95) + POWER(
      x31,95) + POWER(x32,95) + POWER(x33,95) + POWER(x34,95) + POWER(x35,95)
       + POWER(x36,95) + POWER(x37,95) + POWER(x38,95) + POWER(x39,95) + POWER(
      x40,95) + POWER(x41,95) + POWER(x42,95) + POWER(x43,95) + POWER(x44,95)
       + POWER(x45,95) + POWER(x46,95) + POWER(x47,95) + POWER(x48,95) + POWER(
      x49,95) + POWER(x50,95) + POWER(x51,95) + POWER(x52,95) + POWER(x53,95)
       + POWER(x54,95) + POWER(x55,95) + POWER(x56,95) + POWER(x57,95) + POWER(
      x58,95) + POWER(x59,95) + POWER(x60,95) + POWER(x61,95) + POWER(x62,95)
       + POWER(x63,95) + POWER(x64,95) + POWER(x65,95) + POWER(x66,95) + POWER(
      x67,95) + POWER(x68,95) + POWER(x69,95) + POWER(x70,95) + POWER(x71,95)
       + POWER(x72,95) + POWER(x73,95) + POWER(x74,95) + POWER(x75,95) + POWER(
      x76,95) + POWER(x77,95) + POWER(x78,95) + POWER(x79,95) + POWER(x80,95)
       + POWER(x81,95) + POWER(x82,95) + POWER(x83,95) + POWER(x84,95) + POWER(
      x85,95) + POWER(x86,95) + POWER(x87,95) + POWER(x88,95) + POWER(x89,95)
       + POWER(x90,95) + POWER(x91,95) + POWER(x92,95) + POWER(x93,95) + POWER(
      x94,95) + POWER(x95,95) + POWER(x96,95) + POWER(x97,95) + POWER(x98,95)
       + POWER(x99,95) + POWER(x100,95)) - x102 =L= 0;

e96.. sqr((-1.6097609369724) + POWER(x1,96) + POWER(x2,96) + POWER(x3,96) + 
      POWER(x4,96) + POWER(x5,96) + POWER(x6,96) + POWER(x7,96) + POWER(x8,96)
       + POWER(x9,96) + POWER(x10,96) + POWER(x11,96) + POWER(x12,96) + POWER(
      x13,96) + POWER(x14,96) + POWER(x15,96) + POWER(x16,96) + POWER(x17,96)
       + POWER(x18,96) + POWER(x19,96) + POWER(x20,96) + POWER(x21,96) + POWER(
      x22,96) + POWER(x23,96) + POWER(x24,96) + POWER(x25,96) + POWER(x26,96)
       + POWER(x27,96) + POWER(x28,96) + POWER(x29,96) + POWER(x30,96) + POWER(
      x31,96) + POWER(x32,96) + POWER(x33,96) + POWER(x34,96) + POWER(x35,96)
       + POWER(x36,96) + POWER(x37,96) + POWER(x38,96) + POWER(x39,96) + POWER(
      x40,96) + POWER(x41,96) + POWER(x42,96) + POWER(x43,96) + POWER(x44,96)
       + POWER(x45,96) + POWER(x46,96) + POWER(x47,96) + POWER(x48,96) + POWER(
      x49,96) + POWER(x50,96) + POWER(x51,96) + POWER(x52,96) + POWER(x53,96)
       + POWER(x54,96) + POWER(x55,96) + POWER(x56,96) + POWER(x57,96) + POWER(
      x58,96) + POWER(x59,96) + POWER(x60,96) + POWER(x61,96) + POWER(x62,96)
       + POWER(x63,96) + POWER(x64,96) + POWER(x65,96) + POWER(x66,96) + POWER(
      x67,96) + POWER(x68,96) + POWER(x69,96) + POWER(x70,96) + POWER(x71,96)
       + POWER(x72,96) + POWER(x73,96) + POWER(x74,96) + POWER(x75,96) + POWER(
      x76,96) + POWER(x77,96) + POWER(x78,96) + POWER(x79,96) + POWER(x80,96)
       + POWER(x81,96) + POWER(x82,96) + POWER(x83,96) + POWER(x84,96) + POWER(
      x85,96) + POWER(x86,96) + POWER(x87,96) + POWER(x88,96) + POWER(x89,96)
       + POWER(x90,96) + POWER(x91,96) + POWER(x92,96) + POWER(x93,96) + POWER(
      x94,96) + POWER(x95,96) + POWER(x96,96) + POWER(x97,96) + POWER(x98,96)
       + POWER(x99,96) + POWER(x100,96)) - x102 =L= 0;

e97.. sqr((-1.60003787911185) + POWER(x1,97) + POWER(x2,97) + POWER(x3,97) + 
      POWER(x4,97) + POWER(x5,97) + POWER(x6,97) + POWER(x7,97) + POWER(x8,97)
       + POWER(x9,97) + POWER(x10,97) + POWER(x11,97) + POWER(x12,97) + POWER(
      x13,97) + POWER(x14,97) + POWER(x15,97) + POWER(x16,97) + POWER(x17,97)
       + POWER(x18,97) + POWER(x19,97) + POWER(x20,97) + POWER(x21,97) + POWER(
      x22,97) + POWER(x23,97) + POWER(x24,97) + POWER(x25,97) + POWER(x26,97)
       + POWER(x27,97) + POWER(x28,97) + POWER(x29,97) + POWER(x30,97) + POWER(
      x31,97) + POWER(x32,97) + POWER(x33,97) + POWER(x34,97) + POWER(x35,97)
       + POWER(x36,97) + POWER(x37,97) + POWER(x38,97) + POWER(x39,97) + POWER(
      x40,97) + POWER(x41,97) + POWER(x42,97) + POWER(x43,97) + POWER(x44,97)
       + POWER(x45,97) + POWER(x46,97) + POWER(x47,97) + POWER(x48,97) + POWER(
      x49,97) + POWER(x50,97) + POWER(x51,97) + POWER(x52,97) + POWER(x53,97)
       + POWER(x54,97) + POWER(x55,97) + POWER(x56,97) + POWER(x57,97) + POWER(
      x58,97) + POWER(x59,97) + POWER(x60,97) + POWER(x61,97) + POWER(x62,97)
       + POWER(x63,97) + POWER(x64,97) + POWER(x65,97) + POWER(x66,97) + POWER(
      x67,97) + POWER(x68,97) + POWER(x69,97) + POWER(x70,97) + POWER(x71,97)
       + POWER(x72,97) + POWER(x73,97) + POWER(x74,97) + POWER(x75,97) + POWER(
      x76,97) + POWER(x77,97) + POWER(x78,97) + POWER(x79,97) + POWER(x80,97)
       + POWER(x81,97) + POWER(x82,97) + POWER(x83,97) + POWER(x84,97) + POWER(
      x85,97) + POWER(x86,97) + POWER(x87,97) + POWER(x88,97) + POWER(x89,97)
       + POWER(x90,97) + POWER(x91,97) + POWER(x92,97) + POWER(x93,97) + POWER(
      x94,97) + POWER(x95,97) + POWER(x96,97) + POWER(x97,97) + POWER(x98,97)
       + POWER(x99,97) + POWER(x100,97)) - x102 =L= 0;

e98.. sqr((-1.59052659411245) + POWER(x1,98) + POWER(x2,98) + POWER(x3,98) + 
      POWER(x4,98) + POWER(x5,98) + POWER(x6,98) + POWER(x7,98) + POWER(x8,98)
       + POWER(x9,98) + POWER(x10,98) + POWER(x11,98) + POWER(x12,98) + POWER(
      x13,98) + POWER(x14,98) + POWER(x15,98) + POWER(x16,98) + POWER(x17,98)
       + POWER(x18,98) + POWER(x19,98) + POWER(x20,98) + POWER(x21,98) + POWER(
      x22,98) + POWER(x23,98) + POWER(x24,98) + POWER(x25,98) + POWER(x26,98)
       + POWER(x27,98) + POWER(x28,98) + POWER(x29,98) + POWER(x30,98) + POWER(
      x31,98) + POWER(x32,98) + POWER(x33,98) + POWER(x34,98) + POWER(x35,98)
       + POWER(x36,98) + POWER(x37,98) + POWER(x38,98) + POWER(x39,98) + POWER(
      x40,98) + POWER(x41,98) + POWER(x42,98) + POWER(x43,98) + POWER(x44,98)
       + POWER(x45,98) + POWER(x46,98) + POWER(x47,98) + POWER(x48,98) + POWER(
      x49,98) + POWER(x50,98) + POWER(x51,98) + POWER(x52,98) + POWER(x53,98)
       + POWER(x54,98) + POWER(x55,98) + POWER(x56,98) + POWER(x57,98) + POWER(
      x58,98) + POWER(x59,98) + POWER(x60,98) + POWER(x61,98) + POWER(x62,98)
       + POWER(x63,98) + POWER(x64,98) + POWER(x65,98) + POWER(x66,98) + POWER(
      x67,98) + POWER(x68,98) + POWER(x69,98) + POWER(x70,98) + POWER(x71,98)
       + POWER(x72,98) + POWER(x73,98) + POWER(x74,98) + POWER(x75,98) + POWER(
      x76,98) + POWER(x77,98) + POWER(x78,98) + POWER(x79,98) + POWER(x80,98)
       + POWER(x81,98) + POWER(x82,98) + POWER(x83,98) + POWER(x84,98) + POWER(
      x85,98) + POWER(x86,98) + POWER(x87,98) + POWER(x88,98) + POWER(x89,98)
       + POWER(x90,98) + POWER(x91,98) + POWER(x92,98) + POWER(x93,98) + POWER(
      x94,98) + POWER(x95,98) + POWER(x96,98) + POWER(x97,98) + POWER(x98,98)
       + POWER(x99,98) + POWER(x100,98)) - x102 =L= 0;

e99.. sqr((-1.58122069976007) + POWER(x1,99) + POWER(x2,99) + POWER(x3,99) + 
      POWER(x4,99) + POWER(x5,99) + POWER(x6,99) + POWER(x7,99) + POWER(x8,99)
       + POWER(x9,99) + POWER(x10,99) + POWER(x11,99) + POWER(x12,99) + POWER(
      x13,99) + POWER(x14,99) + POWER(x15,99) + POWER(x16,99) + POWER(x17,99)
       + POWER(x18,99) + POWER(x19,99) + POWER(x20,99) + POWER(x21,99) + POWER(
      x22,99) + POWER(x23,99) + POWER(x24,99) + POWER(x25,99) + POWER(x26,99)
       + POWER(x27,99) + POWER(x28,99) + POWER(x29,99) + POWER(x30,99) + POWER(
      x31,99) + POWER(x32,99) + POWER(x33,99) + POWER(x34,99) + POWER(x35,99)
       + POWER(x36,99) + POWER(x37,99) + POWER(x38,99) + POWER(x39,99) + POWER(
      x40,99) + POWER(x41,99) + POWER(x42,99) + POWER(x43,99) + POWER(x44,99)
       + POWER(x45,99) + POWER(x46,99) + POWER(x47,99) + POWER(x48,99) + POWER(
      x49,99) + POWER(x50,99) + POWER(x51,99) + POWER(x52,99) + POWER(x53,99)
       + POWER(x54,99) + POWER(x55,99) + POWER(x56,99) + POWER(x57,99) + POWER(
      x58,99) + POWER(x59,99) + POWER(x60,99) + POWER(x61,99) + POWER(x62,99)
       + POWER(x63,99) + POWER(x64,99) + POWER(x65,99) + POWER(x66,99) + POWER(
      x67,99) + POWER(x68,99) + POWER(x69,99) + POWER(x70,99) + POWER(x71,99)
       + POWER(x72,99) + POWER(x73,99) + POWER(x74,99) + POWER(x75,99) + POWER(
      x76,99) + POWER(x77,99) + POWER(x78,99) + POWER(x79,99) + POWER(x80,99)
       + POWER(x81,99) + POWER(x82,99) + POWER(x83,99) + POWER(x84,99) + POWER(
      x85,99) + POWER(x86,99) + POWER(x87,99) + POWER(x88,99) + POWER(x89,99)
       + POWER(x90,99) + POWER(x91,99) + POWER(x92,99) + POWER(x93,99) + POWER(
      x94,99) + POWER(x95,99) + POWER(x96,99) + POWER(x97,99) + POWER(x98,99)
       + POWER(x99,99) + POWER(x100,99)) - x102 =L= 0;

e100.. sqr((-1.57211406637055) + POWER(x1,100) + POWER(x2,100) + POWER(x3,100)
        + POWER(x4,100) + POWER(x5,100) + POWER(x6,100) + POWER(x7,100) + 
       POWER(x8,100) + POWER(x9,100) + POWER(x10,100) + POWER(x11,100) + POWER(
       x12,100) + POWER(x13,100) + POWER(x14,100) + POWER(x15,100) + POWER(x16,
       100) + POWER(x17,100) + POWER(x18,100) + POWER(x19,100) + POWER(x20,100)
        + POWER(x21,100) + POWER(x22,100) + POWER(x23,100) + POWER(x24,100) + 
       POWER(x25,100) + POWER(x26,100) + POWER(x27,100) + POWER(x28,100) + 
       POWER(x29,100) + POWER(x30,100) + POWER(x31,100) + POWER(x32,100) + 
       POWER(x33,100) + POWER(x34,100) + POWER(x35,100) + POWER(x36,100) + 
       POWER(x37,100) + POWER(x38,100) + POWER(x39,100) + POWER(x40,100) + 
       POWER(x41,100) + POWER(x42,100) + POWER(x43,100) + POWER(x44,100) + 
       POWER(x45,100) + POWER(x46,100) + POWER(x47,100) + POWER(x48,100) + 
       POWER(x49,100) + POWER(x50,100) + POWER(x51,100) + POWER(x52,100) + 
       POWER(x53,100) + POWER(x54,100) + POWER(x55,100) + POWER(x56,100) + 
       POWER(x57,100) + POWER(x58,100) + POWER(x59,100) + POWER(x60,100) + 
       POWER(x61,100) + POWER(x62,100) + POWER(x63,100) + POWER(x64,100) + 
       POWER(x65,100) + POWER(x66,100) + POWER(x67,100) + POWER(x68,100) + 
       POWER(x69,100) + POWER(x70,100) + POWER(x71,100) + POWER(x72,100) + 
       POWER(x73,100) + POWER(x74,100) + POWER(x75,100) + POWER(x76,100) + 
       POWER(x77,100) + POWER(x78,100) + POWER(x79,100) + POWER(x80,100) + 
       POWER(x81,100) + POWER(x82,100) + POWER(x83,100) + POWER(x84,100) + 
       POWER(x85,100) + POWER(x86,100) + POWER(x87,100) + POWER(x88,100) + 
       POWER(x89,100) + POWER(x90,100) + POWER(x91,100) + POWER(x92,100) + 
       POWER(x93,100) + POWER(x94,100) + POWER(x95,100) + POWER(x96,100) + 
       POWER(x97,100) + POWER(x98,100) + POWER(x99,100) + POWER(x100,100))
        - x102 =L= 0;

e101..  - x1 + x2 =G= 0;

e102..  - x2 + x3 =G= 0;

e103..  - x3 + x4 =G= 0;

e104..  - x4 + x5 =G= 0;

e105..  - x5 + x6 =G= 0;

e106..  - x6 + x7 =G= 0;

e107..  - x7 + x8 =G= 0;

e108..  - x8 + x9 =G= 0;

e109..  - x9 + x10 =G= 0;

e110..  - x10 + x11 =G= 0;

e111..  - x11 + x12 =G= 0;

e112..  - x12 + x13 =G= 0;

e113..  - x13 + x14 =G= 0;

e114..  - x14 + x15 =G= 0;

e115..  - x15 + x16 =G= 0;

e116..  - x16 + x17 =G= 0;

e117..  - x17 + x18 =G= 0;

e118..  - x18 + x19 =G= 0;

e119..  - x19 + x20 =G= 0;

e120..  - x20 + x21 =G= 0;

e121..  - x21 + x22 =G= 0;

e122..  - x22 + x23 =G= 0;

e123..  - x23 + x24 =G= 0;

e124..  - x24 + x25 =G= 0;

e125..  - x25 + x26 =G= 0;

e126..  - x26 + x27 =G= 0;

e127..  - x27 + x28 =G= 0;

e128..  - x28 + x29 =G= 0;

e129..  - x29 + x30 =G= 0;

e130..  - x30 + x31 =G= 0;

e131..  - x31 + x32 =G= 0;

e132..  - x32 + x33 =G= 0;

e133..  - x33 + x34 =G= 0;

e134..  - x34 + x35 =G= 0;

e135..  - x35 + x36 =G= 0;

e136..  - x36 + x37 =G= 0;

e137..  - x37 + x38 =G= 0;

e138..  - x38 + x39 =G= 0;

e139..  - x39 + x40 =G= 0;

e140..  - x40 + x41 =G= 0;

e141..  - x41 + x42 =G= 0;

e142..  - x42 + x43 =G= 0;

e143..  - x43 + x44 =G= 0;

e144..  - x44 + x45 =G= 0;

e145..  - x45 + x46 =G= 0;

e146..  - x46 + x47 =G= 0;

e147..  - x47 + x48 =G= 0;

e148..  - x48 + x49 =G= 0;

e149..  - x49 + x50 =G= 0;

e150..  - x50 + x51 =G= 0;

e151..  - x51 + x52 =G= 0;

e152..  - x52 + x53 =G= 0;

e153..  - x53 + x54 =G= 0;

e154..  - x54 + x55 =G= 0;

e155..  - x55 + x56 =G= 0;

e156..  - x56 + x57 =G= 0;

e157..  - x57 + x58 =G= 0;

e158..  - x58 + x59 =G= 0;

e159..  - x59 + x60 =G= 0;

e160..  - x60 + x61 =G= 0;

e161..  - x61 + x62 =G= 0;

e162..  - x62 + x63 =G= 0;

e163..  - x63 + x64 =G= 0;

e164..  - x64 + x65 =G= 0;

e165..  - x65 + x66 =G= 0;

e166..  - x66 + x67 =G= 0;

e167..  - x67 + x68 =G= 0;

e168..  - x68 + x69 =G= 0;

e169..  - x69 + x70 =G= 0;

e170..  - x70 + x71 =G= 0;

e171..  - x71 + x72 =G= 0;

e172..  - x72 + x73 =G= 0;

e173..  - x73 + x74 =G= 0;

e174..  - x74 + x75 =G= 0;

e175..  - x75 + x76 =G= 0;

e176..  - x76 + x77 =G= 0;

e177..  - x77 + x78 =G= 0;

e178..  - x78 + x79 =G= 0;

e179..  - x79 + x80 =G= 0;

e180..  - x80 + x81 =G= 0;

e181..  - x81 + x82 =G= 0;

e182..  - x82 + x83 =G= 0;

e183..  - x83 + x84 =G= 0;

e184..  - x84 + x85 =G= 0;

e185..  - x85 + x86 =G= 0;

e186..  - x86 + x87 =G= 0;

e187..  - x87 + x88 =G= 0;

e188..  - x88 + x89 =G= 0;

e189..  - x89 + x90 =G= 0;

e190..  - x90 + x91 =G= 0;

e191..  - x91 + x92 =G= 0;

e192..  - x92 + x93 =G= 0;

e193..  - x93 + x94 =G= 0;

e194..  - x94 + x95 =G= 0;

e195..  - x95 + x96 =G= 0;

e196..  - x96 + x97 =G= 0;

e197..  - x97 + x98 =G= 0;

e198..  - x98 + x99 =G= 0;

e199..  - x99 + x100 =G= 0;

e200..    objvar - x102 =E= 0;

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

* set non default levels

x2.l = 0.01; 
x3.l = 0.02; 
x4.l = 0.03; 
x5.l = 0.04; 
x6.l = 0.05; 
x7.l = 0.06; 
x8.l = 0.07; 
x9.l = 0.08; 
x10.l = 0.09; 
x11.l = 0.1; 
x12.l = 0.11; 
x13.l = 0.12; 
x14.l = 0.13; 
x15.l = 0.14; 
x16.l = 0.15; 
x17.l = 0.16; 
x18.l = 0.17; 
x19.l = 0.18; 
x20.l = 0.19; 
x21.l = 0.2; 
x22.l = 0.21; 
x23.l = 0.22; 
x24.l = 0.23; 
x25.l = 0.24; 
x26.l = 0.25; 
x27.l = 0.26; 
x28.l = 0.27; 
x29.l = 0.28; 
x30.l = 0.29; 
x31.l = 0.3; 
x32.l = 0.31; 
x33.l = 0.32; 
x34.l = 0.33; 
x35.l = 0.34; 
x36.l = 0.35; 
x37.l = 0.36; 
x38.l = 0.37; 
x39.l = 0.38; 
x40.l = 0.39; 
x41.l = 0.4; 
x42.l = 0.41; 
x43.l = 0.42; 
x44.l = 0.43; 
x45.l = 0.44; 
x46.l = 0.45; 
x47.l = 0.46; 
x48.l = 0.47; 
x49.l = 0.48; 
x50.l = 0.49; 
x51.l = 0.5; 
x52.l = 0.51; 
x53.l = 0.52; 
x54.l = 0.53; 
x55.l = 0.54; 
x56.l = 0.55; 
x57.l = 0.56; 
x58.l = 0.57; 
x59.l = 0.58; 
x60.l = 0.59; 
x61.l = 0.6; 
x62.l = 0.61; 
x63.l = 0.62; 
x64.l = 0.63; 
x65.l = 0.64; 
x66.l = 0.65; 
x67.l = 0.66; 
x68.l = 0.67; 
x69.l = 0.68; 
x70.l = 0.69; 
x71.l = 0.7; 
x72.l = 0.71; 
x73.l = 0.72; 
x74.l = 0.73; 
x75.l = 0.74; 
x76.l = 0.75; 
x77.l = 0.76; 
x78.l = 0.77; 
x79.l = 0.78; 
x80.l = 0.79; 
x81.l = 0.8; 
x82.l = 0.81; 
x83.l = 0.82; 
x84.l = 0.83; 
x85.l = 0.84; 
x86.l = 0.85; 
x87.l = 0.86; 
x88.l = 0.87; 
x89.l = 0.88; 
x90.l = 0.89; 
x91.l = 0.9; 
x92.l = 0.91; 
x93.l = 0.92; 
x94.l = 0.93; 
x95.l = 0.94; 
x96.l = 0.95; 
x97.l = 0.96; 
x98.l = 0.97; 
x99.l = 0.98; 
x100.l = 0.99; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
