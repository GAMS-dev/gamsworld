*  NLP written by GAMS Convert at 07/31/01 15:58:28
*  
*  Equation counts
*     Total       E       G       L       N       X
*        51      51       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       151     151       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       301       1     300       0
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
          ,x143,x144,x145,x146,x147,x148,x149,x150,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51;


e1..  - (1/sqrt(sqr(x1 - x2) + sqr(x51 - x52) + sqr(x101 - x102)) + 1/sqrt(sqr(
     x1 - x3) + sqr(x51 - x53) + sqr(x101 - x103)) + 1/sqrt(sqr(x1 - x4) + sqr(
     x51 - x54) + sqr(x101 - x104)) + 1/sqrt(sqr(x1 - x5) + sqr(x51 - x55) + 
     sqr(x101 - x105)) + 1/sqrt(sqr(x1 - x6) + sqr(x51 - x56) + sqr(x101 - x106
     )) + 1/sqrt(sqr(x1 - x7) + sqr(x51 - x57) + sqr(x101 - x107)) + 1/sqrt(
     sqr(x1 - x8) + sqr(x51 - x58) + sqr(x101 - x108)) + 1/sqrt(sqr(x1 - x9) + 
     sqr(x51 - x59) + sqr(x101 - x109)) + 1/sqrt(sqr(x1 - x10) + sqr(x51 - x60)
      + sqr(x101 - x110)) + 1/sqrt(sqr(x1 - x11) + sqr(x51 - x61) + sqr(x101 - 
     x111)) + 1/sqrt(sqr(x1 - x12) + sqr(x51 - x62) + sqr(x101 - x112)) + 1/
     sqrt(sqr(x1 - x13) + sqr(x51 - x63) + sqr(x101 - x113)) + 1/sqrt(sqr(x1 - 
     x14) + sqr(x51 - x64) + sqr(x101 - x114)) + 1/sqrt(sqr(x1 - x15) + sqr(x51
      - x65) + sqr(x101 - x115)) + 1/sqrt(sqr(x1 - x16) + sqr(x51 - x66) + sqr(
     x101 - x116)) + 1/sqrt(sqr(x1 - x17) + sqr(x51 - x67) + sqr(x101 - x117))
      + 1/sqrt(sqr(x1 - x18) + sqr(x51 - x68) + sqr(x101 - x118)) + 1/sqrt(sqr(
     x1 - x19) + sqr(x51 - x69) + sqr(x101 - x119)) + 1/sqrt(sqr(x1 - x20) + 
     sqr(x51 - x70) + sqr(x101 - x120)) + 1/sqrt(sqr(x1 - x21) + sqr(x51 - x71)
      + sqr(x101 - x121)) + 1/sqrt(sqr(x1 - x22) + sqr(x51 - x72) + sqr(x101 - 
     x122)) + 1/sqrt(sqr(x1 - x23) + sqr(x51 - x73) + sqr(x101 - x123)) + 1/
     sqrt(sqr(x1 - x24) + sqr(x51 - x74) + sqr(x101 - x124)) + 1/sqrt(sqr(x1 - 
     x25) + sqr(x51 - x75) + sqr(x101 - x125)) + 1/sqrt(sqr(x1 - x26) + sqr(x51
      - x76) + sqr(x101 - x126)) + 1/sqrt(sqr(x1 - x27) + sqr(x51 - x77) + sqr(
     x101 - x127)) + 1/sqrt(sqr(x1 - x28) + sqr(x51 - x78) + sqr(x101 - x128))
      + 1/sqrt(sqr(x1 - x29) + sqr(x51 - x79) + sqr(x101 - x129)) + 1/sqrt(sqr(
     x1 - x30) + sqr(x51 - x80) + sqr(x101 - x130)) + 1/sqrt(sqr(x1 - x31) + 
     sqr(x51 - x81) + sqr(x101 - x131)) + 1/sqrt(sqr(x1 - x32) + sqr(x51 - x82)
      + sqr(x101 - x132)) + 1/sqrt(sqr(x1 - x33) + sqr(x51 - x83) + sqr(x101 - 
     x133)) + 1/sqrt(sqr(x1 - x34) + sqr(x51 - x84) + sqr(x101 - x134)) + 1/
     sqrt(sqr(x1 - x35) + sqr(x51 - x85) + sqr(x101 - x135)) + 1/sqrt(sqr(x1 - 
     x36) + sqr(x51 - x86) + sqr(x101 - x136)) + 1/sqrt(sqr(x1 - x37) + sqr(x51
      - x87) + sqr(x101 - x137)) + 1/sqrt(sqr(x1 - x38) + sqr(x51 - x88) + sqr(
     x101 - x138)) + 1/sqrt(sqr(x1 - x39) + sqr(x51 - x89) + sqr(x101 - x139))
      + 1/sqrt(sqr(x1 - x40) + sqr(x51 - x90) + sqr(x101 - x140)) + 1/sqrt(sqr(
     x1 - x41) + sqr(x51 - x91) + sqr(x101 - x141)) + 1/sqrt(sqr(x1 - x42) + 
     sqr(x51 - x92) + sqr(x101 - x142)) + 1/sqrt(sqr(x1 - x43) + sqr(x51 - x93)
      + sqr(x101 - x143)) + 1/sqrt(sqr(x1 - x44) + sqr(x51 - x94) + sqr(x101 - 
     x144)) + 1/sqrt(sqr(x1 - x45) + sqr(x51 - x95) + sqr(x101 - x145)) + 1/
     sqrt(sqr(x1 - x46) + sqr(x51 - x96) + sqr(x101 - x146)) + 1/sqrt(sqr(x1 - 
     x47) + sqr(x51 - x97) + sqr(x101 - x147)) + 1/sqrt(sqr(x1 - x48) + sqr(x51
      - x98) + sqr(x101 - x148)) + 1/sqrt(sqr(x1 - x49) + sqr(x51 - x99) + sqr(
     x101 - x149)) + 1/sqrt(sqr(x1 - x50) + sqr(x51 - x100) + sqr(x101 - x150))
      + 1/sqrt(sqr(x2 - x3) + sqr(x52 - x53) + sqr(x102 - x103)) + 1/sqrt(sqr(
     x2 - x4) + sqr(x52 - x54) + sqr(x102 - x104)) + 1/sqrt(sqr(x2 - x5) + sqr(
     x52 - x55) + sqr(x102 - x105)) + 1/sqrt(sqr(x2 - x6) + sqr(x52 - x56) + 
     sqr(x102 - x106)) + 1/sqrt(sqr(x2 - x7) + sqr(x52 - x57) + sqr(x102 - x107
     )) + 1/sqrt(sqr(x2 - x8) + sqr(x52 - x58) + sqr(x102 - x108)) + 1/sqrt(
     sqr(x2 - x9) + sqr(x52 - x59) + sqr(x102 - x109)) + 1/sqrt(sqr(x2 - x10)
      + sqr(x52 - x60) + sqr(x102 - x110)) + 1/sqrt(sqr(x2 - x11) + sqr(x52 - 
     x61) + sqr(x102 - x111)) + 1/sqrt(sqr(x2 - x12) + sqr(x52 - x62) + sqr(
     x102 - x112)) + 1/sqrt(sqr(x2 - x13) + sqr(x52 - x63) + sqr(x102 - x113))
      + 1/sqrt(sqr(x2 - x14) + sqr(x52 - x64) + sqr(x102 - x114)) + 1/sqrt(sqr(
     x2 - x15) + sqr(x52 - x65) + sqr(x102 - x115)) + 1/sqrt(sqr(x2 - x16) + 
     sqr(x52 - x66) + sqr(x102 - x116)) + 1/sqrt(sqr(x2 - x17) + sqr(x52 - x67)
      + sqr(x102 - x117)) + 1/sqrt(sqr(x2 - x18) + sqr(x52 - x68) + sqr(x102 - 
     x118)) + 1/sqrt(sqr(x2 - x19) + sqr(x52 - x69) + sqr(x102 - x119)) + 1/
     sqrt(sqr(x2 - x20) + sqr(x52 - x70) + sqr(x102 - x120)) + 1/sqrt(sqr(x2 - 
     x21) + sqr(x52 - x71) + sqr(x102 - x121)) + 1/sqrt(sqr(x2 - x22) + sqr(x52
      - x72) + sqr(x102 - x122)) + 1/sqrt(sqr(x2 - x23) + sqr(x52 - x73) + sqr(
     x102 - x123)) + 1/sqrt(sqr(x2 - x24) + sqr(x52 - x74) + sqr(x102 - x124))
      + 1/sqrt(sqr(x2 - x25) + sqr(x52 - x75) + sqr(x102 - x125)) + 1/sqrt(sqr(
     x2 - x26) + sqr(x52 - x76) + sqr(x102 - x126)) + 1/sqrt(sqr(x2 - x27) + 
     sqr(x52 - x77) + sqr(x102 - x127)) + 1/sqrt(sqr(x2 - x28) + sqr(x52 - x78)
      + sqr(x102 - x128)) + 1/sqrt(sqr(x2 - x29) + sqr(x52 - x79) + sqr(x102 - 
     x129)) + 1/sqrt(sqr(x2 - x30) + sqr(x52 - x80) + sqr(x102 - x130)) + 1/
     sqrt(sqr(x2 - x31) + sqr(x52 - x81) + sqr(x102 - x131)) + 1/sqrt(sqr(x2 - 
     x32) + sqr(x52 - x82) + sqr(x102 - x132)) + 1/sqrt(sqr(x2 - x33) + sqr(x52
      - x83) + sqr(x102 - x133)) + 1/sqrt(sqr(x2 - x34) + sqr(x52 - x84) + sqr(
     x102 - x134)) + 1/sqrt(sqr(x2 - x35) + sqr(x52 - x85) + sqr(x102 - x135))
      + 1/sqrt(sqr(x2 - x36) + sqr(x52 - x86) + sqr(x102 - x136)) + 1/sqrt(sqr(
     x2 - x37) + sqr(x52 - x87) + sqr(x102 - x137)) + 1/sqrt(sqr(x2 - x38) + 
     sqr(x52 - x88) + sqr(x102 - x138)) + 1/sqrt(sqr(x2 - x39) + sqr(x52 - x89)
      + sqr(x102 - x139)) + 1/sqrt(sqr(x2 - x40) + sqr(x52 - x90) + sqr(x102 - 
     x140)) + 1/sqrt(sqr(x2 - x41) + sqr(x52 - x91) + sqr(x102 - x141)) + 1/
     sqrt(sqr(x2 - x42) + sqr(x52 - x92) + sqr(x102 - x142)) + 1/sqrt(sqr(x2 - 
     x43) + sqr(x52 - x93) + sqr(x102 - x143)) + 1/sqrt(sqr(x2 - x44) + sqr(x52
      - x94) + sqr(x102 - x144)) + 1/sqrt(sqr(x2 - x45) + sqr(x52 - x95) + sqr(
     x102 - x145)) + 1/sqrt(sqr(x2 - x46) + sqr(x52 - x96) + sqr(x102 - x146))
      + 1/sqrt(sqr(x2 - x47) + sqr(x52 - x97) + sqr(x102 - x147)) + 1/sqrt(sqr(
     x2 - x48) + sqr(x52 - x98) + sqr(x102 - x148)) + 1/sqrt(sqr(x2 - x49) + 
     sqr(x52 - x99) + sqr(x102 - x149)) + 1/sqrt(sqr(x2 - x50) + sqr(x52 - x100
     ) + sqr(x102 - x150)) + 1/sqrt(sqr(x3 - x4) + sqr(x53 - x54) + sqr(x103 - 
     x104)) + 1/sqrt(sqr(x3 - x5) + sqr(x53 - x55) + sqr(x103 - x105)) + 1/
     sqrt(sqr(x3 - x6) + sqr(x53 - x56) + sqr(x103 - x106)) + 1/sqrt(sqr(x3 - 
     x7) + sqr(x53 - x57) + sqr(x103 - x107)) + 1/sqrt(sqr(x3 - x8) + sqr(x53
      - x58) + sqr(x103 - x108)) + 1/sqrt(sqr(x3 - x9) + sqr(x53 - x59) + sqr(
     x103 - x109)) + 1/sqrt(sqr(x3 - x10) + sqr(x53 - x60) + sqr(x103 - x110))
      + 1/sqrt(sqr(x3 - x11) + sqr(x53 - x61) + sqr(x103 - x111)) + 1/sqrt(sqr(
     x3 - x12) + sqr(x53 - x62) + sqr(x103 - x112)) + 1/sqrt(sqr(x3 - x13) + 
     sqr(x53 - x63) + sqr(x103 - x113)) + 1/sqrt(sqr(x3 - x14) + sqr(x53 - x64)
      + sqr(x103 - x114)) + 1/sqrt(sqr(x3 - x15) + sqr(x53 - x65) + sqr(x103 - 
     x115)) + 1/sqrt(sqr(x3 - x16) + sqr(x53 - x66) + sqr(x103 - x116)) + 1/
     sqrt(sqr(x3 - x17) + sqr(x53 - x67) + sqr(x103 - x117)) + 1/sqrt(sqr(x3 - 
     x18) + sqr(x53 - x68) + sqr(x103 - x118)) + 1/sqrt(sqr(x3 - x19) + sqr(x53
      - x69) + sqr(x103 - x119)) + 1/sqrt(sqr(x3 - x20) + sqr(x53 - x70) + sqr(
     x103 - x120)) + 1/sqrt(sqr(x3 - x21) + sqr(x53 - x71) + sqr(x103 - x121))
      + 1/sqrt(sqr(x3 - x22) + sqr(x53 - x72) + sqr(x103 - x122)) + 1/sqrt(sqr(
     x3 - x23) + sqr(x53 - x73) + sqr(x103 - x123)) + 1/sqrt(sqr(x3 - x24) + 
     sqr(x53 - x74) + sqr(x103 - x124)) + 1/sqrt(sqr(x3 - x25) + sqr(x53 - x75)
      + sqr(x103 - x125)) + 1/sqrt(sqr(x3 - x26) + sqr(x53 - x76) + sqr(x103 - 
     x126)) + 1/sqrt(sqr(x3 - x27) + sqr(x53 - x77) + sqr(x103 - x127)) + 1/
     sqrt(sqr(x3 - x28) + sqr(x53 - x78) + sqr(x103 - x128)) + 1/sqrt(sqr(x3 - 
     x29) + sqr(x53 - x79) + sqr(x103 - x129)) + 1/sqrt(sqr(x3 - x30) + sqr(x53
      - x80) + sqr(x103 - x130)) + 1/sqrt(sqr(x3 - x31) + sqr(x53 - x81) + sqr(
     x103 - x131)) + 1/sqrt(sqr(x3 - x32) + sqr(x53 - x82) + sqr(x103 - x132))
      + 1/sqrt(sqr(x3 - x33) + sqr(x53 - x83) + sqr(x103 - x133)) + 1/sqrt(sqr(
     x3 - x34) + sqr(x53 - x84) + sqr(x103 - x134)) + 1/sqrt(sqr(x3 - x35) + 
     sqr(x53 - x85) + sqr(x103 - x135)) + 1/sqrt(sqr(x3 - x36) + sqr(x53 - x86)
      + sqr(x103 - x136)) + 1/sqrt(sqr(x3 - x37) + sqr(x53 - x87) + sqr(x103 - 
     x137)) + 1/sqrt(sqr(x3 - x38) + sqr(x53 - x88) + sqr(x103 - x138)) + 1/
     sqrt(sqr(x3 - x39) + sqr(x53 - x89) + sqr(x103 - x139)) + 1/sqrt(sqr(x3 - 
     x40) + sqr(x53 - x90) + sqr(x103 - x140)) + 1/sqrt(sqr(x3 - x41) + sqr(x53
      - x91) + sqr(x103 - x141)) + 1/sqrt(sqr(x3 - x42) + sqr(x53 - x92) + sqr(
     x103 - x142)) + 1/sqrt(sqr(x3 - x43) + sqr(x53 - x93) + sqr(x103 - x143))
      + 1/sqrt(sqr(x3 - x44) + sqr(x53 - x94) + sqr(x103 - x144)) + 1/sqrt(sqr(
     x3 - x45) + sqr(x53 - x95) + sqr(x103 - x145)) + 1/sqrt(sqr(x3 - x46) + 
     sqr(x53 - x96) + sqr(x103 - x146)) + 1/sqrt(sqr(x3 - x47) + sqr(x53 - x97)
      + sqr(x103 - x147)) + 1/sqrt(sqr(x3 - x48) + sqr(x53 - x98) + sqr(x103 - 
     x148)) + 1/sqrt(sqr(x3 - x49) + sqr(x53 - x99) + sqr(x103 - x149)) + 1/
     sqrt(sqr(x3 - x50) + sqr(x53 - x100) + sqr(x103 - x150)) + 1/sqrt(sqr(x4
      - x5) + sqr(x54 - x55) + sqr(x104 - x105)) + 1/sqrt(sqr(x4 - x6) + sqr(
     x54 - x56) + sqr(x104 - x106)) + 1/sqrt(sqr(x4 - x7) + sqr(x54 - x57) + 
     sqr(x104 - x107)) + 1/sqrt(sqr(x4 - x8) + sqr(x54 - x58) + sqr(x104 - x108
     )) + 1/sqrt(sqr(x4 - x9) + sqr(x54 - x59) + sqr(x104 - x109)) + 1/sqrt(
     sqr(x4 - x10) + sqr(x54 - x60) + sqr(x104 - x110)) + 1/sqrt(sqr(x4 - x11)
      + sqr(x54 - x61) + sqr(x104 - x111)) + 1/sqrt(sqr(x4 - x12) + sqr(x54 - 
     x62) + sqr(x104 - x112)) + 1/sqrt(sqr(x4 - x13) + sqr(x54 - x63) + sqr(
     x104 - x113)) + 1/sqrt(sqr(x4 - x14) + sqr(x54 - x64) + sqr(x104 - x114))
      + 1/sqrt(sqr(x4 - x15) + sqr(x54 - x65) + sqr(x104 - x115)) + 1/sqrt(sqr(
     x4 - x16) + sqr(x54 - x66) + sqr(x104 - x116)) + 1/sqrt(sqr(x4 - x17) + 
     sqr(x54 - x67) + sqr(x104 - x117)) + 1/sqrt(sqr(x4 - x18) + sqr(x54 - x68)
      + sqr(x104 - x118)) + 1/sqrt(sqr(x4 - x19) + sqr(x54 - x69) + sqr(x104 - 
     x119)) + 1/sqrt(sqr(x4 - x20) + sqr(x54 - x70) + sqr(x104 - x120)) + 1/
     sqrt(sqr(x4 - x21) + sqr(x54 - x71) + sqr(x104 - x121)) + 1/sqrt(sqr(x4 - 
     x22) + sqr(x54 - x72) + sqr(x104 - x122)) + 1/sqrt(sqr(x4 - x23) + sqr(x54
      - x73) + sqr(x104 - x123)) + 1/sqrt(sqr(x4 - x24) + sqr(x54 - x74) + sqr(
     x104 - x124)) + 1/sqrt(sqr(x4 - x25) + sqr(x54 - x75) + sqr(x104 - x125))
      + 1/sqrt(sqr(x4 - x26) + sqr(x54 - x76) + sqr(x104 - x126)) + 1/sqrt(sqr(
     x4 - x27) + sqr(x54 - x77) + sqr(x104 - x127)) + 1/sqrt(sqr(x4 - x28) + 
     sqr(x54 - x78) + sqr(x104 - x128)) + 1/sqrt(sqr(x4 - x29) + sqr(x54 - x79)
      + sqr(x104 - x129)) + 1/sqrt(sqr(x4 - x30) + sqr(x54 - x80) + sqr(x104 - 
     x130)) + 1/sqrt(sqr(x4 - x31) + sqr(x54 - x81) + sqr(x104 - x131)) + 1/
     sqrt(sqr(x4 - x32) + sqr(x54 - x82) + sqr(x104 - x132)) + 1/sqrt(sqr(x4 - 
     x33) + sqr(x54 - x83) + sqr(x104 - x133)) + 1/sqrt(sqr(x4 - x34) + sqr(x54
      - x84) + sqr(x104 - x134)) + 1/sqrt(sqr(x4 - x35) + sqr(x54 - x85) + sqr(
     x104 - x135)) + 1/sqrt(sqr(x4 - x36) + sqr(x54 - x86) + sqr(x104 - x136))
      + 1/sqrt(sqr(x4 - x37) + sqr(x54 - x87) + sqr(x104 - x137)) + 1/sqrt(sqr(
     x4 - x38) + sqr(x54 - x88) + sqr(x104 - x138)) + 1/sqrt(sqr(x4 - x39) + 
     sqr(x54 - x89) + sqr(x104 - x139)) + 1/sqrt(sqr(x4 - x40) + sqr(x54 - x90)
      + sqr(x104 - x140)) + 1/sqrt(sqr(x4 - x41) + sqr(x54 - x91) + sqr(x104 - 
     x141)) + 1/sqrt(sqr(x4 - x42) + sqr(x54 - x92) + sqr(x104 - x142)) + 1/
     sqrt(sqr(x4 - x43) + sqr(x54 - x93) + sqr(x104 - x143)) + 1/sqrt(sqr(x4 - 
     x44) + sqr(x54 - x94) + sqr(x104 - x144)) + 1/sqrt(sqr(x4 - x45) + sqr(x54
      - x95) + sqr(x104 - x145)) + 1/sqrt(sqr(x4 - x46) + sqr(x54 - x96) + sqr(
     x104 - x146)) + 1/sqrt(sqr(x4 - x47) + sqr(x54 - x97) + sqr(x104 - x147))
      + 1/sqrt(sqr(x4 - x48) + sqr(x54 - x98) + sqr(x104 - x148)) + 1/sqrt(sqr(
     x4 - x49) + sqr(x54 - x99) + sqr(x104 - x149)) + 1/sqrt(sqr(x4 - x50) + 
     sqr(x54 - x100) + sqr(x104 - x150)) + 1/sqrt(sqr(x5 - x6) + sqr(x55 - x56)
      + sqr(x105 - x106)) + 1/sqrt(sqr(x5 - x7) + sqr(x55 - x57) + sqr(x105 - 
     x107)) + 1/sqrt(sqr(x5 - x8) + sqr(x55 - x58) + sqr(x105 - x108)) + 1/
     sqrt(sqr(x5 - x9) + sqr(x55 - x59) + sqr(x105 - x109)) + 1/sqrt(sqr(x5 - 
     x10) + sqr(x55 - x60) + sqr(x105 - x110)) + 1/sqrt(sqr(x5 - x11) + sqr(x55
      - x61) + sqr(x105 - x111)) + 1/sqrt(sqr(x5 - x12) + sqr(x55 - x62) + sqr(
     x105 - x112)) + 1/sqrt(sqr(x5 - x13) + sqr(x55 - x63) + sqr(x105 - x113))
      + 1/sqrt(sqr(x5 - x14) + sqr(x55 - x64) + sqr(x105 - x114)) + 1/sqrt(sqr(
     x5 - x15) + sqr(x55 - x65) + sqr(x105 - x115)) + 1/sqrt(sqr(x5 - x16) + 
     sqr(x55 - x66) + sqr(x105 - x116)) + 1/sqrt(sqr(x5 - x17) + sqr(x55 - x67)
      + sqr(x105 - x117)) + 1/sqrt(sqr(x5 - x18) + sqr(x55 - x68) + sqr(x105 - 
     x118)) + 1/sqrt(sqr(x5 - x19) + sqr(x55 - x69) + sqr(x105 - x119)) + 1/
     sqrt(sqr(x5 - x20) + sqr(x55 - x70) + sqr(x105 - x120)) + 1/sqrt(sqr(x5 - 
     x21) + sqr(x55 - x71) + sqr(x105 - x121)) + 1/sqrt(sqr(x5 - x22) + sqr(x55
      - x72) + sqr(x105 - x122)) + 1/sqrt(sqr(x5 - x23) + sqr(x55 - x73) + sqr(
     x105 - x123)) + 1/sqrt(sqr(x5 - x24) + sqr(x55 - x74) + sqr(x105 - x124))
      + 1/sqrt(sqr(x5 - x25) + sqr(x55 - x75) + sqr(x105 - x125)) + 1/sqrt(sqr(
     x5 - x26) + sqr(x55 - x76) + sqr(x105 - x126)) + 1/sqrt(sqr(x5 - x27) + 
     sqr(x55 - x77) + sqr(x105 - x127)) + 1/sqrt(sqr(x5 - x28) + sqr(x55 - x78)
      + sqr(x105 - x128)) + 1/sqrt(sqr(x5 - x29) + sqr(x55 - x79) + sqr(x105 - 
     x129)) + 1/sqrt(sqr(x5 - x30) + sqr(x55 - x80) + sqr(x105 - x130)) + 1/
     sqrt(sqr(x5 - x31) + sqr(x55 - x81) + sqr(x105 - x131)) + 1/sqrt(sqr(x5 - 
     x32) + sqr(x55 - x82) + sqr(x105 - x132)) + 1/sqrt(sqr(x5 - x33) + sqr(x55
      - x83) + sqr(x105 - x133)) + 1/sqrt(sqr(x5 - x34) + sqr(x55 - x84) + sqr(
     x105 - x134)) + 1/sqrt(sqr(x5 - x35) + sqr(x55 - x85) + sqr(x105 - x135))
      + 1/sqrt(sqr(x5 - x36) + sqr(x55 - x86) + sqr(x105 - x136)) + 1/sqrt(sqr(
     x5 - x37) + sqr(x55 - x87) + sqr(x105 - x137)) + 1/sqrt(sqr(x5 - x38) + 
     sqr(x55 - x88) + sqr(x105 - x138)) + 1/sqrt(sqr(x5 - x39) + sqr(x55 - x89)
      + sqr(x105 - x139)) + 1/sqrt(sqr(x5 - x40) + sqr(x55 - x90) + sqr(x105 - 
     x140)) + 1/sqrt(sqr(x5 - x41) + sqr(x55 - x91) + sqr(x105 - x141)) + 1/
     sqrt(sqr(x5 - x42) + sqr(x55 - x92) + sqr(x105 - x142)) + 1/sqrt(sqr(x5 - 
     x43) + sqr(x55 - x93) + sqr(x105 - x143)) + 1/sqrt(sqr(x5 - x44) + sqr(x55
      - x94) + sqr(x105 - x144)) + 1/sqrt(sqr(x5 - x45) + sqr(x55 - x95) + sqr(
     x105 - x145)) + 1/sqrt(sqr(x5 - x46) + sqr(x55 - x96) + sqr(x105 - x146))
      + 1/sqrt(sqr(x5 - x47) + sqr(x55 - x97) + sqr(x105 - x147)) + 1/sqrt(sqr(
     x5 - x48) + sqr(x55 - x98) + sqr(x105 - x148)) + 1/sqrt(sqr(x5 - x49) + 
     sqr(x55 - x99) + sqr(x105 - x149)) + 1/sqrt(sqr(x5 - x50) + sqr(x55 - x100
     ) + sqr(x105 - x150)) + 1/sqrt(sqr(x6 - x7) + sqr(x56 - x57) + sqr(x106 - 
     x107)) + 1/sqrt(sqr(x6 - x8) + sqr(x56 - x58) + sqr(x106 - x108)) + 1/
     sqrt(sqr(x6 - x9) + sqr(x56 - x59) + sqr(x106 - x109)) + 1/sqrt(sqr(x6 - 
     x10) + sqr(x56 - x60) + sqr(x106 - x110)) + 1/sqrt(sqr(x6 - x11) + sqr(x56
      - x61) + sqr(x106 - x111)) + 1/sqrt(sqr(x6 - x12) + sqr(x56 - x62) + sqr(
     x106 - x112)) + 1/sqrt(sqr(x6 - x13) + sqr(x56 - x63) + sqr(x106 - x113))
      + 1/sqrt(sqr(x6 - x14) + sqr(x56 - x64) + sqr(x106 - x114)) + 1/sqrt(sqr(
     x6 - x15) + sqr(x56 - x65) + sqr(x106 - x115)) + 1/sqrt(sqr(x6 - x16) + 
     sqr(x56 - x66) + sqr(x106 - x116)) + 1/sqrt(sqr(x6 - x17) + sqr(x56 - x67)
      + sqr(x106 - x117)) + 1/sqrt(sqr(x6 - x18) + sqr(x56 - x68) + sqr(x106 - 
     x118)) + 1/sqrt(sqr(x6 - x19) + sqr(x56 - x69) + sqr(x106 - x119)) + 1/
     sqrt(sqr(x6 - x20) + sqr(x56 - x70) + sqr(x106 - x120)) + 1/sqrt(sqr(x6 - 
     x21) + sqr(x56 - x71) + sqr(x106 - x121)) + 1/sqrt(sqr(x6 - x22) + sqr(x56
      - x72) + sqr(x106 - x122)) + 1/sqrt(sqr(x6 - x23) + sqr(x56 - x73) + sqr(
     x106 - x123)) + 1/sqrt(sqr(x6 - x24) + sqr(x56 - x74) + sqr(x106 - x124))
      + 1/sqrt(sqr(x6 - x25) + sqr(x56 - x75) + sqr(x106 - x125)) + 1/sqrt(sqr(
     x6 - x26) + sqr(x56 - x76) + sqr(x106 - x126)) + 1/sqrt(sqr(x6 - x27) + 
     sqr(x56 - x77) + sqr(x106 - x127)) + 1/sqrt(sqr(x6 - x28) + sqr(x56 - x78)
      + sqr(x106 - x128)) + 1/sqrt(sqr(x6 - x29) + sqr(x56 - x79) + sqr(x106 - 
     x129)) + 1/sqrt(sqr(x6 - x30) + sqr(x56 - x80) + sqr(x106 - x130)) + 1/
     sqrt(sqr(x6 - x31) + sqr(x56 - x81) + sqr(x106 - x131)) + 1/sqrt(sqr(x6 - 
     x32) + sqr(x56 - x82) + sqr(x106 - x132)) + 1/sqrt(sqr(x6 - x33) + sqr(x56
      - x83) + sqr(x106 - x133)) + 1/sqrt(sqr(x6 - x34) + sqr(x56 - x84) + sqr(
     x106 - x134)) + 1/sqrt(sqr(x6 - x35) + sqr(x56 - x85) + sqr(x106 - x135))
      + 1/sqrt(sqr(x6 - x36) + sqr(x56 - x86) + sqr(x106 - x136)) + 1/sqrt(sqr(
     x6 - x37) + sqr(x56 - x87) + sqr(x106 - x137)) + 1/sqrt(sqr(x6 - x38) + 
     sqr(x56 - x88) + sqr(x106 - x138)) + 1/sqrt(sqr(x6 - x39) + sqr(x56 - x89)
      + sqr(x106 - x139)) + 1/sqrt(sqr(x6 - x40) + sqr(x56 - x90) + sqr(x106 - 
     x140)) + 1/sqrt(sqr(x6 - x41) + sqr(x56 - x91) + sqr(x106 - x141)) + 1/
     sqrt(sqr(x6 - x42) + sqr(x56 - x92) + sqr(x106 - x142)) + 1/sqrt(sqr(x6 - 
     x43) + sqr(x56 - x93) + sqr(x106 - x143)) + 1/sqrt(sqr(x6 - x44) + sqr(x56
      - x94) + sqr(x106 - x144)) + 1/sqrt(sqr(x6 - x45) + sqr(x56 - x95) + sqr(
     x106 - x145)) + 1/sqrt(sqr(x6 - x46) + sqr(x56 - x96) + sqr(x106 - x146))
      + 1/sqrt(sqr(x6 - x47) + sqr(x56 - x97) + sqr(x106 - x147)) + 1/sqrt(sqr(
     x6 - x48) + sqr(x56 - x98) + sqr(x106 - x148)) + 1/sqrt(sqr(x6 - x49) + 
     sqr(x56 - x99) + sqr(x106 - x149)) + 1/sqrt(sqr(x6 - x50) + sqr(x56 - x100
     ) + sqr(x106 - x150)) + 1/sqrt(sqr(x7 - x8) + sqr(x57 - x58) + sqr(x107 - 
     x108)) + 1/sqrt(sqr(x7 - x9) + sqr(x57 - x59) + sqr(x107 - x109)) + 1/
     sqrt(sqr(x7 - x10) + sqr(x57 - x60) + sqr(x107 - x110)) + 1/sqrt(sqr(x7 - 
     x11) + sqr(x57 - x61) + sqr(x107 - x111)) + 1/sqrt(sqr(x7 - x12) + sqr(x57
      - x62) + sqr(x107 - x112)) + 1/sqrt(sqr(x7 - x13) + sqr(x57 - x63) + sqr(
     x107 - x113)) + 1/sqrt(sqr(x7 - x14) + sqr(x57 - x64) + sqr(x107 - x114))
      + 1/sqrt(sqr(x7 - x15) + sqr(x57 - x65) + sqr(x107 - x115)) + 1/sqrt(sqr(
     x7 - x16) + sqr(x57 - x66) + sqr(x107 - x116)) + 1/sqrt(sqr(x7 - x17) + 
     sqr(x57 - x67) + sqr(x107 - x117)) + 1/sqrt(sqr(x7 - x18) + sqr(x57 - x68)
      + sqr(x107 - x118)) + 1/sqrt(sqr(x7 - x19) + sqr(x57 - x69) + sqr(x107 - 
     x119)) + 1/sqrt(sqr(x7 - x20) + sqr(x57 - x70) + sqr(x107 - x120)) + 1/
     sqrt(sqr(x7 - x21) + sqr(x57 - x71) + sqr(x107 - x121)) + 1/sqrt(sqr(x7 - 
     x22) + sqr(x57 - x72) + sqr(x107 - x122)) + 1/sqrt(sqr(x7 - x23) + sqr(x57
      - x73) + sqr(x107 - x123)) + 1/sqrt(sqr(x7 - x24) + sqr(x57 - x74) + sqr(
     x107 - x124)) + 1/sqrt(sqr(x7 - x25) + sqr(x57 - x75) + sqr(x107 - x125))
      + 1/sqrt(sqr(x7 - x26) + sqr(x57 - x76) + sqr(x107 - x126)) + 1/sqrt(sqr(
     x7 - x27) + sqr(x57 - x77) + sqr(x107 - x127)) + 1/sqrt(sqr(x7 - x28) + 
     sqr(x57 - x78) + sqr(x107 - x128)) + 1/sqrt(sqr(x7 - x29) + sqr(x57 - x79)
      + sqr(x107 - x129)) + 1/sqrt(sqr(x7 - x30) + sqr(x57 - x80) + sqr(x107 - 
     x130)) + 1/sqrt(sqr(x7 - x31) + sqr(x57 - x81) + sqr(x107 - x131)) + 1/
     sqrt(sqr(x7 - x32) + sqr(x57 - x82) + sqr(x107 - x132)) + 1/sqrt(sqr(x7 - 
     x33) + sqr(x57 - x83) + sqr(x107 - x133)) + 1/sqrt(sqr(x7 - x34) + sqr(x57
      - x84) + sqr(x107 - x134)) + 1/sqrt(sqr(x7 - x35) + sqr(x57 - x85) + sqr(
     x107 - x135)) + 1/sqrt(sqr(x7 - x36) + sqr(x57 - x86) + sqr(x107 - x136))
      + 1/sqrt(sqr(x7 - x37) + sqr(x57 - x87) + sqr(x107 - x137)) + 1/sqrt(sqr(
     x7 - x38) + sqr(x57 - x88) + sqr(x107 - x138)) + 1/sqrt(sqr(x7 - x39) + 
     sqr(x57 - x89) + sqr(x107 - x139)) + 1/sqrt(sqr(x7 - x40) + sqr(x57 - x90)
      + sqr(x107 - x140)) + 1/sqrt(sqr(x7 - x41) + sqr(x57 - x91) + sqr(x107 - 
     x141)) + 1/sqrt(sqr(x7 - x42) + sqr(x57 - x92) + sqr(x107 - x142)) + 1/
     sqrt(sqr(x7 - x43) + sqr(x57 - x93) + sqr(x107 - x143)) + 1/sqrt(sqr(x7 - 
     x44) + sqr(x57 - x94) + sqr(x107 - x144)) + 1/sqrt(sqr(x7 - x45) + sqr(x57
      - x95) + sqr(x107 - x145)) + 1/sqrt(sqr(x7 - x46) + sqr(x57 - x96) + sqr(
     x107 - x146)) + 1/sqrt(sqr(x7 - x47) + sqr(x57 - x97) + sqr(x107 - x147))
      + 1/sqrt(sqr(x7 - x48) + sqr(x57 - x98) + sqr(x107 - x148)) + 1/sqrt(sqr(
     x7 - x49) + sqr(x57 - x99) + sqr(x107 - x149)) + 1/sqrt(sqr(x7 - x50) + 
     sqr(x57 - x100) + sqr(x107 - x150)) + 1/sqrt(sqr(x8 - x9) + sqr(x58 - x59)
      + sqr(x108 - x109)) + 1/sqrt(sqr(x8 - x10) + sqr(x58 - x60) + sqr(x108 - 
     x110)) + 1/sqrt(sqr(x8 - x11) + sqr(x58 - x61) + sqr(x108 - x111)) + 1/
     sqrt(sqr(x8 - x12) + sqr(x58 - x62) + sqr(x108 - x112)) + 1/sqrt(sqr(x8 - 
     x13) + sqr(x58 - x63) + sqr(x108 - x113)) + 1/sqrt(sqr(x8 - x14) + sqr(x58
      - x64) + sqr(x108 - x114)) + 1/sqrt(sqr(x8 - x15) + sqr(x58 - x65) + sqr(
     x108 - x115)) + 1/sqrt(sqr(x8 - x16) + sqr(x58 - x66) + sqr(x108 - x116))
      + 1/sqrt(sqr(x8 - x17) + sqr(x58 - x67) + sqr(x108 - x117)) + 1/sqrt(sqr(
     x8 - x18) + sqr(x58 - x68) + sqr(x108 - x118)) + 1/sqrt(sqr(x8 - x19) + 
     sqr(x58 - x69) + sqr(x108 - x119)) + 1/sqrt(sqr(x8 - x20) + sqr(x58 - x70)
      + sqr(x108 - x120)) + 1/sqrt(sqr(x8 - x21) + sqr(x58 - x71) + sqr(x108 - 
     x121)) + 1/sqrt(sqr(x8 - x22) + sqr(x58 - x72) + sqr(x108 - x122)) + 1/
     sqrt(sqr(x8 - x23) + sqr(x58 - x73) + sqr(x108 - x123)) + 1/sqrt(sqr(x8 - 
     x24) + sqr(x58 - x74) + sqr(x108 - x124)) + 1/sqrt(sqr(x8 - x25) + sqr(x58
      - x75) + sqr(x108 - x125)) + 1/sqrt(sqr(x8 - x26) + sqr(x58 - x76) + sqr(
     x108 - x126)) + 1/sqrt(sqr(x8 - x27) + sqr(x58 - x77) + sqr(x108 - x127))
      + 1/sqrt(sqr(x8 - x28) + sqr(x58 - x78) + sqr(x108 - x128)) + 1/sqrt(sqr(
     x8 - x29) + sqr(x58 - x79) + sqr(x108 - x129)) + 1/sqrt(sqr(x8 - x30) + 
     sqr(x58 - x80) + sqr(x108 - x130)) + 1/sqrt(sqr(x8 - x31) + sqr(x58 - x81)
      + sqr(x108 - x131)) + 1/sqrt(sqr(x8 - x32) + sqr(x58 - x82) + sqr(x108 - 
     x132)) + 1/sqrt(sqr(x8 - x33) + sqr(x58 - x83) + sqr(x108 - x133)) + 1/
     sqrt(sqr(x8 - x34) + sqr(x58 - x84) + sqr(x108 - x134)) + 1/sqrt(sqr(x8 - 
     x35) + sqr(x58 - x85) + sqr(x108 - x135)) + 1/sqrt(sqr(x8 - x36) + sqr(x58
      - x86) + sqr(x108 - x136)) + 1/sqrt(sqr(x8 - x37) + sqr(x58 - x87) + sqr(
     x108 - x137)) + 1/sqrt(sqr(x8 - x38) + sqr(x58 - x88) + sqr(x108 - x138))
      + 1/sqrt(sqr(x8 - x39) + sqr(x58 - x89) + sqr(x108 - x139)) + 1/sqrt(sqr(
     x8 - x40) + sqr(x58 - x90) + sqr(x108 - x140)) + 1/sqrt(sqr(x8 - x41) + 
     sqr(x58 - x91) + sqr(x108 - x141)) + 1/sqrt(sqr(x8 - x42) + sqr(x58 - x92)
      + sqr(x108 - x142)) + 1/sqrt(sqr(x8 - x43) + sqr(x58 - x93) + sqr(x108 - 
     x143)) + 1/sqrt(sqr(x8 - x44) + sqr(x58 - x94) + sqr(x108 - x144)) + 1/
     sqrt(sqr(x8 - x45) + sqr(x58 - x95) + sqr(x108 - x145)) + 1/sqrt(sqr(x8 - 
     x46) + sqr(x58 - x96) + sqr(x108 - x146)) + 1/sqrt(sqr(x8 - x47) + sqr(x58
      - x97) + sqr(x108 - x147)) + 1/sqrt(sqr(x8 - x48) + sqr(x58 - x98) + sqr(
     x108 - x148)) + 1/sqrt(sqr(x8 - x49) + sqr(x58 - x99) + sqr(x108 - x149))
      + 1/sqrt(sqr(x8 - x50) + sqr(x58 - x100) + sqr(x108 - x150)) + 1/sqrt(
     sqr(x9 - x10) + sqr(x59 - x60) + sqr(x109 - x110)) + 1/sqrt(sqr(x9 - x11)
      + sqr(x59 - x61) + sqr(x109 - x111)) + 1/sqrt(sqr(x9 - x12) + sqr(x59 - 
     x62) + sqr(x109 - x112)) + 1/sqrt(sqr(x9 - x13) + sqr(x59 - x63) + sqr(
     x109 - x113)) + 1/sqrt(sqr(x9 - x14) + sqr(x59 - x64) + sqr(x109 - x114))
      + 1/sqrt(sqr(x9 - x15) + sqr(x59 - x65) + sqr(x109 - x115)) + 1/sqrt(sqr(
     x9 - x16) + sqr(x59 - x66) + sqr(x109 - x116)) + 1/sqrt(sqr(x9 - x17) + 
     sqr(x59 - x67) + sqr(x109 - x117)) + 1/sqrt(sqr(x9 - x18) + sqr(x59 - x68)
      + sqr(x109 - x118)) + 1/sqrt(sqr(x9 - x19) + sqr(x59 - x69) + sqr(x109 - 
     x119)) + 1/sqrt(sqr(x9 - x20) + sqr(x59 - x70) + sqr(x109 - x120)) + 1/
     sqrt(sqr(x9 - x21) + sqr(x59 - x71) + sqr(x109 - x121)) + 1/sqrt(sqr(x9 - 
     x22) + sqr(x59 - x72) + sqr(x109 - x122)) + 1/sqrt(sqr(x9 - x23) + sqr(x59
      - x73) + sqr(x109 - x123)) + 1/sqrt(sqr(x9 - x24) + sqr(x59 - x74) + sqr(
     x109 - x124)) + 1/sqrt(sqr(x9 - x25) + sqr(x59 - x75) + sqr(x109 - x125))
      + 1/sqrt(sqr(x9 - x26) + sqr(x59 - x76) + sqr(x109 - x126)) + 1/sqrt(sqr(
     x9 - x27) + sqr(x59 - x77) + sqr(x109 - x127)) + 1/sqrt(sqr(x9 - x28) + 
     sqr(x59 - x78) + sqr(x109 - x128)) + 1/sqrt(sqr(x9 - x29) + sqr(x59 - x79)
      + sqr(x109 - x129)) + 1/sqrt(sqr(x9 - x30) + sqr(x59 - x80) + sqr(x109 - 
     x130)) + 1/sqrt(sqr(x9 - x31) + sqr(x59 - x81) + sqr(x109 - x131)) + 1/
     sqrt(sqr(x9 - x32) + sqr(x59 - x82) + sqr(x109 - x132)) + 1/sqrt(sqr(x9 - 
     x33) + sqr(x59 - x83) + sqr(x109 - x133)) + 1/sqrt(sqr(x9 - x34) + sqr(x59
      - x84) + sqr(x109 - x134)) + 1/sqrt(sqr(x9 - x35) + sqr(x59 - x85) + sqr(
     x109 - x135)) + 1/sqrt(sqr(x9 - x36) + sqr(x59 - x86) + sqr(x109 - x136))
      + 1/sqrt(sqr(x9 - x37) + sqr(x59 - x87) + sqr(x109 - x137)) + 1/sqrt(sqr(
     x9 - x38) + sqr(x59 - x88) + sqr(x109 - x138)) + 1/sqrt(sqr(x9 - x39) + 
     sqr(x59 - x89) + sqr(x109 - x139)) + 1/sqrt(sqr(x9 - x40) + sqr(x59 - x90)
      + sqr(x109 - x140)) + 1/sqrt(sqr(x9 - x41) + sqr(x59 - x91) + sqr(x109 - 
     x141)) + 1/sqrt(sqr(x9 - x42) + sqr(x59 - x92) + sqr(x109 - x142)) + 1/
     sqrt(sqr(x9 - x43) + sqr(x59 - x93) + sqr(x109 - x143)) + 1/sqrt(sqr(x9 - 
     x44) + sqr(x59 - x94) + sqr(x109 - x144)) + 1/sqrt(sqr(x9 - x45) + sqr(x59
      - x95) + sqr(x109 - x145)) + 1/sqrt(sqr(x9 - x46) + sqr(x59 - x96) + sqr(
     x109 - x146)) + 1/sqrt(sqr(x9 - x47) + sqr(x59 - x97) + sqr(x109 - x147))
      + 1/sqrt(sqr(x9 - x48) + sqr(x59 - x98) + sqr(x109 - x148)) + 1/sqrt(sqr(
     x9 - x49) + sqr(x59 - x99) + sqr(x109 - x149)) + 1/sqrt(sqr(x9 - x50) + 
     sqr(x59 - x100) + sqr(x109 - x150)) + 1/sqrt(sqr(x10 - x11) + sqr(x60 - 
     x61) + sqr(x110 - x111)) + 1/sqrt(sqr(x10 - x12) + sqr(x60 - x62) + sqr(
     x110 - x112)) + 1/sqrt(sqr(x10 - x13) + sqr(x60 - x63) + sqr(x110 - x113))
      + 1/sqrt(sqr(x10 - x14) + sqr(x60 - x64) + sqr(x110 - x114)) + 1/sqrt(
     sqr(x10 - x15) + sqr(x60 - x65) + sqr(x110 - x115)) + 1/sqrt(sqr(x10 - x16
     ) + sqr(x60 - x66) + sqr(x110 - x116)) + 1/sqrt(sqr(x10 - x17) + sqr(x60
      - x67) + sqr(x110 - x117)) + 1/sqrt(sqr(x10 - x18) + sqr(x60 - x68) + 
     sqr(x110 - x118)) + 1/sqrt(sqr(x10 - x19) + sqr(x60 - x69) + sqr(x110 - 
     x119)) + 1/sqrt(sqr(x10 - x20) + sqr(x60 - x70) + sqr(x110 - x120)) + 1/
     sqrt(sqr(x10 - x21) + sqr(x60 - x71) + sqr(x110 - x121)) + 1/sqrt(sqr(x10
      - x22) + sqr(x60 - x72) + sqr(x110 - x122)) + 1/sqrt(sqr(x10 - x23) + 
     sqr(x60 - x73) + sqr(x110 - x123)) + 1/sqrt(sqr(x10 - x24) + sqr(x60 - x74
     ) + sqr(x110 - x124)) + 1/sqrt(sqr(x10 - x25) + sqr(x60 - x75) + sqr(x110
      - x125)) + 1/sqrt(sqr(x10 - x26) + sqr(x60 - x76) + sqr(x110 - x126)) + 1
     /sqrt(sqr(x10 - x27) + sqr(x60 - x77) + sqr(x110 - x127)) + 1/sqrt(sqr(x10
      - x28) + sqr(x60 - x78) + sqr(x110 - x128)) + 1/sqrt(sqr(x10 - x29) + 
     sqr(x60 - x79) + sqr(x110 - x129)) + 1/sqrt(sqr(x10 - x30) + sqr(x60 - x80
     ) + sqr(x110 - x130)) + 1/sqrt(sqr(x10 - x31) + sqr(x60 - x81) + sqr(x110
      - x131)) + 1/sqrt(sqr(x10 - x32) + sqr(x60 - x82) + sqr(x110 - x132)) + 1
     /sqrt(sqr(x10 - x33) + sqr(x60 - x83) + sqr(x110 - x133)) + 1/sqrt(sqr(x10
      - x34) + sqr(x60 - x84) + sqr(x110 - x134)) + 1/sqrt(sqr(x10 - x35) + 
     sqr(x60 - x85) + sqr(x110 - x135)) + 1/sqrt(sqr(x10 - x36) + sqr(x60 - x86
     ) + sqr(x110 - x136)) + 1/sqrt(sqr(x10 - x37) + sqr(x60 - x87) + sqr(x110
      - x137)) + 1/sqrt(sqr(x10 - x38) + sqr(x60 - x88) + sqr(x110 - x138)) + 1
     /sqrt(sqr(x10 - x39) + sqr(x60 - x89) + sqr(x110 - x139)) + 1/sqrt(sqr(x10
      - x40) + sqr(x60 - x90) + sqr(x110 - x140)) + 1/sqrt(sqr(x10 - x41) + 
     sqr(x60 - x91) + sqr(x110 - x141)) + 1/sqrt(sqr(x10 - x42) + sqr(x60 - x92
     ) + sqr(x110 - x142)) + 1/sqrt(sqr(x10 - x43) + sqr(x60 - x93) + sqr(x110
      - x143)) + 1/sqrt(sqr(x10 - x44) + sqr(x60 - x94) + sqr(x110 - x144)) + 1
     /sqrt(sqr(x10 - x45) + sqr(x60 - x95) + sqr(x110 - x145)) + 1/sqrt(sqr(x10
      - x46) + sqr(x60 - x96) + sqr(x110 - x146)) + 1/sqrt(sqr(x10 - x47) + 
     sqr(x60 - x97) + sqr(x110 - x147)) + 1/sqrt(sqr(x10 - x48) + sqr(x60 - x98
     ) + sqr(x110 - x148)) + 1/sqrt(sqr(x10 - x49) + sqr(x60 - x99) + sqr(x110
      - x149)) + 1/sqrt(sqr(x10 - x50) + sqr(x60 - x100) + sqr(x110 - x150)) + 
     1/sqrt(sqr(x11 - x12) + sqr(x61 - x62) + sqr(x111 - x112)) + 1/sqrt(sqr(
     x11 - x13) + sqr(x61 - x63) + sqr(x111 - x113)) + 1/sqrt(sqr(x11 - x14) + 
     sqr(x61 - x64) + sqr(x111 - x114)) + 1/sqrt(sqr(x11 - x15) + sqr(x61 - x65
     ) + sqr(x111 - x115)) + 1/sqrt(sqr(x11 - x16) + sqr(x61 - x66) + sqr(x111
      - x116)) + 1/sqrt(sqr(x11 - x17) + sqr(x61 - x67) + sqr(x111 - x117)) + 1
     /sqrt(sqr(x11 - x18) + sqr(x61 - x68) + sqr(x111 - x118)) + 1/sqrt(sqr(x11
      - x19) + sqr(x61 - x69) + sqr(x111 - x119)) + 1/sqrt(sqr(x11 - x20) + 
     sqr(x61 - x70) + sqr(x111 - x120)) + 1/sqrt(sqr(x11 - x21) + sqr(x61 - x71
     ) + sqr(x111 - x121)) + 1/sqrt(sqr(x11 - x22) + sqr(x61 - x72) + sqr(x111
      - x122)) + 1/sqrt(sqr(x11 - x23) + sqr(x61 - x73) + sqr(x111 - x123)) + 1
     /sqrt(sqr(x11 - x24) + sqr(x61 - x74) + sqr(x111 - x124)) + 1/sqrt(sqr(x11
      - x25) + sqr(x61 - x75) + sqr(x111 - x125)) + 1/sqrt(sqr(x11 - x26) + 
     sqr(x61 - x76) + sqr(x111 - x126)) + 1/sqrt(sqr(x11 - x27) + sqr(x61 - x77
     ) + sqr(x111 - x127)) + 1/sqrt(sqr(x11 - x28) + sqr(x61 - x78) + sqr(x111
      - x128)) + 1/sqrt(sqr(x11 - x29) + sqr(x61 - x79) + sqr(x111 - x129)) + 1
     /sqrt(sqr(x11 - x30) + sqr(x61 - x80) + sqr(x111 - x130)) + 1/sqrt(sqr(x11
      - x31) + sqr(x61 - x81) + sqr(x111 - x131)) + 1/sqrt(sqr(x11 - x32) + 
     sqr(x61 - x82) + sqr(x111 - x132)) + 1/sqrt(sqr(x11 - x33) + sqr(x61 - x83
     ) + sqr(x111 - x133)) + 1/sqrt(sqr(x11 - x34) + sqr(x61 - x84) + sqr(x111
      - x134)) + 1/sqrt(sqr(x11 - x35) + sqr(x61 - x85) + sqr(x111 - x135)) + 1
     /sqrt(sqr(x11 - x36) + sqr(x61 - x86) + sqr(x111 - x136)) + 1/sqrt(sqr(x11
      - x37) + sqr(x61 - x87) + sqr(x111 - x137)) + 1/sqrt(sqr(x11 - x38) + 
     sqr(x61 - x88) + sqr(x111 - x138)) + 1/sqrt(sqr(x11 - x39) + sqr(x61 - x89
     ) + sqr(x111 - x139)) + 1/sqrt(sqr(x11 - x40) + sqr(x61 - x90) + sqr(x111
      - x140)) + 1/sqrt(sqr(x11 - x41) + sqr(x61 - x91) + sqr(x111 - x141)) + 1
     /sqrt(sqr(x11 - x42) + sqr(x61 - x92) + sqr(x111 - x142)) + 1/sqrt(sqr(x11
      - x43) + sqr(x61 - x93) + sqr(x111 - x143)) + 1/sqrt(sqr(x11 - x44) + 
     sqr(x61 - x94) + sqr(x111 - x144)) + 1/sqrt(sqr(x11 - x45) + sqr(x61 - x95
     ) + sqr(x111 - x145)) + 1/sqrt(sqr(x11 - x46) + sqr(x61 - x96) + sqr(x111
      - x146)) + 1/sqrt(sqr(x11 - x47) + sqr(x61 - x97) + sqr(x111 - x147)) + 1
     /sqrt(sqr(x11 - x48) + sqr(x61 - x98) + sqr(x111 - x148)) + 1/sqrt(sqr(x11
      - x49) + sqr(x61 - x99) + sqr(x111 - x149)) + 1/sqrt(sqr(x11 - x50) + 
     sqr(x61 - x100) + sqr(x111 - x150)) + 1/sqrt(sqr(x12 - x13) + sqr(x62 - 
     x63) + sqr(x112 - x113)) + 1/sqrt(sqr(x12 - x14) + sqr(x62 - x64) + sqr(
     x112 - x114)) + 1/sqrt(sqr(x12 - x15) + sqr(x62 - x65) + sqr(x112 - x115))
      + 1/sqrt(sqr(x12 - x16) + sqr(x62 - x66) + sqr(x112 - x116)) + 1/sqrt(
     sqr(x12 - x17) + sqr(x62 - x67) + sqr(x112 - x117)) + 1/sqrt(sqr(x12 - x18
     ) + sqr(x62 - x68) + sqr(x112 - x118)) + 1/sqrt(sqr(x12 - x19) + sqr(x62
      - x69) + sqr(x112 - x119)) + 1/sqrt(sqr(x12 - x20) + sqr(x62 - x70) + 
     sqr(x112 - x120)) + 1/sqrt(sqr(x12 - x21) + sqr(x62 - x71) + sqr(x112 - 
     x121)) + 1/sqrt(sqr(x12 - x22) + sqr(x62 - x72) + sqr(x112 - x122)) + 1/
     sqrt(sqr(x12 - x23) + sqr(x62 - x73) + sqr(x112 - x123)) + 1/sqrt(sqr(x12
      - x24) + sqr(x62 - x74) + sqr(x112 - x124)) + 1/sqrt(sqr(x12 - x25) + 
     sqr(x62 - x75) + sqr(x112 - x125)) + 1/sqrt(sqr(x12 - x26) + sqr(x62 - x76
     ) + sqr(x112 - x126)) + 1/sqrt(sqr(x12 - x27) + sqr(x62 - x77) + sqr(x112
      - x127)) + 1/sqrt(sqr(x12 - x28) + sqr(x62 - x78) + sqr(x112 - x128)) + 1
     /sqrt(sqr(x12 - x29) + sqr(x62 - x79) + sqr(x112 - x129)) + 1/sqrt(sqr(x12
      - x30) + sqr(x62 - x80) + sqr(x112 - x130)) + 1/sqrt(sqr(x12 - x31) + 
     sqr(x62 - x81) + sqr(x112 - x131)) + 1/sqrt(sqr(x12 - x32) + sqr(x62 - x82
     ) + sqr(x112 - x132)) + 1/sqrt(sqr(x12 - x33) + sqr(x62 - x83) + sqr(x112
      - x133)) + 1/sqrt(sqr(x12 - x34) + sqr(x62 - x84) + sqr(x112 - x134)) + 1
     /sqrt(sqr(x12 - x35) + sqr(x62 - x85) + sqr(x112 - x135)) + 1/sqrt(sqr(x12
      - x36) + sqr(x62 - x86) + sqr(x112 - x136)) + 1/sqrt(sqr(x12 - x37) + 
     sqr(x62 - x87) + sqr(x112 - x137)) + 1/sqrt(sqr(x12 - x38) + sqr(x62 - x88
     ) + sqr(x112 - x138)) + 1/sqrt(sqr(x12 - x39) + sqr(x62 - x89) + sqr(x112
      - x139)) + 1/sqrt(sqr(x12 - x40) + sqr(x62 - x90) + sqr(x112 - x140)) + 1
     /sqrt(sqr(x12 - x41) + sqr(x62 - x91) + sqr(x112 - x141)) + 1/sqrt(sqr(x12
      - x42) + sqr(x62 - x92) + sqr(x112 - x142)) + 1/sqrt(sqr(x12 - x43) + 
     sqr(x62 - x93) + sqr(x112 - x143)) + 1/sqrt(sqr(x12 - x44) + sqr(x62 - x94
     ) + sqr(x112 - x144)) + 1/sqrt(sqr(x12 - x45) + sqr(x62 - x95) + sqr(x112
      - x145)) + 1/sqrt(sqr(x12 - x46) + sqr(x62 - x96) + sqr(x112 - x146)) + 1
     /sqrt(sqr(x12 - x47) + sqr(x62 - x97) + sqr(x112 - x147)) + 1/sqrt(sqr(x12
      - x48) + sqr(x62 - x98) + sqr(x112 - x148)) + 1/sqrt(sqr(x12 - x49) + 
     sqr(x62 - x99) + sqr(x112 - x149)) + 1/sqrt(sqr(x12 - x50) + sqr(x62 - 
     x100) + sqr(x112 - x150)) + 1/sqrt(sqr(x13 - x14) + sqr(x63 - x64) + sqr(
     x113 - x114)) + 1/sqrt(sqr(x13 - x15) + sqr(x63 - x65) + sqr(x113 - x115))
      + 1/sqrt(sqr(x13 - x16) + sqr(x63 - x66) + sqr(x113 - x116)) + 1/sqrt(
     sqr(x13 - x17) + sqr(x63 - x67) + sqr(x113 - x117)) + 1/sqrt(sqr(x13 - x18
     ) + sqr(x63 - x68) + sqr(x113 - x118)) + 1/sqrt(sqr(x13 - x19) + sqr(x63
      - x69) + sqr(x113 - x119)) + 1/sqrt(sqr(x13 - x20) + sqr(x63 - x70) + 
     sqr(x113 - x120)) + 1/sqrt(sqr(x13 - x21) + sqr(x63 - x71) + sqr(x113 - 
     x121)) + 1/sqrt(sqr(x13 - x22) + sqr(x63 - x72) + sqr(x113 - x122)) + 1/
     sqrt(sqr(x13 - x23) + sqr(x63 - x73) + sqr(x113 - x123)) + 1/sqrt(sqr(x13
      - x24) + sqr(x63 - x74) + sqr(x113 - x124)) + 1/sqrt(sqr(x13 - x25) + 
     sqr(x63 - x75) + sqr(x113 - x125)) + 1/sqrt(sqr(x13 - x26) + sqr(x63 - x76
     ) + sqr(x113 - x126)) + 1/sqrt(sqr(x13 - x27) + sqr(x63 - x77) + sqr(x113
      - x127)) + 1/sqrt(sqr(x13 - x28) + sqr(x63 - x78) + sqr(x113 - x128)) + 1
     /sqrt(sqr(x13 - x29) + sqr(x63 - x79) + sqr(x113 - x129)) + 1/sqrt(sqr(x13
      - x30) + sqr(x63 - x80) + sqr(x113 - x130)) + 1/sqrt(sqr(x13 - x31) + 
     sqr(x63 - x81) + sqr(x113 - x131)) + 1/sqrt(sqr(x13 - x32) + sqr(x63 - x82
     ) + sqr(x113 - x132)) + 1/sqrt(sqr(x13 - x33) + sqr(x63 - x83) + sqr(x113
      - x133)) + 1/sqrt(sqr(x13 - x34) + sqr(x63 - x84) + sqr(x113 - x134)) + 1
     /sqrt(sqr(x13 - x35) + sqr(x63 - x85) + sqr(x113 - x135)) + 1/sqrt(sqr(x13
      - x36) + sqr(x63 - x86) + sqr(x113 - x136)) + 1/sqrt(sqr(x13 - x37) + 
     sqr(x63 - x87) + sqr(x113 - x137)) + 1/sqrt(sqr(x13 - x38) + sqr(x63 - x88
     ) + sqr(x113 - x138)) + 1/sqrt(sqr(x13 - x39) + sqr(x63 - x89) + sqr(x113
      - x139)) + 1/sqrt(sqr(x13 - x40) + sqr(x63 - x90) + sqr(x113 - x140)) + 1
     /sqrt(sqr(x13 - x41) + sqr(x63 - x91) + sqr(x113 - x141)) + 1/sqrt(sqr(x13
      - x42) + sqr(x63 - x92) + sqr(x113 - x142)) + 1/sqrt(sqr(x13 - x43) + 
     sqr(x63 - x93) + sqr(x113 - x143)) + 1/sqrt(sqr(x13 - x44) + sqr(x63 - x94
     ) + sqr(x113 - x144)) + 1/sqrt(sqr(x13 - x45) + sqr(x63 - x95) + sqr(x113
      - x145)) + 1/sqrt(sqr(x13 - x46) + sqr(x63 - x96) + sqr(x113 - x146)) + 1
     /sqrt(sqr(x13 - x47) + sqr(x63 - x97) + sqr(x113 - x147)) + 1/sqrt(sqr(x13
      - x48) + sqr(x63 - x98) + sqr(x113 - x148)) + 1/sqrt(sqr(x13 - x49) + 
     sqr(x63 - x99) + sqr(x113 - x149)) + 1/sqrt(sqr(x13 - x50) + sqr(x63 - 
     x100) + sqr(x113 - x150)) + 1/sqrt(sqr(x14 - x15) + sqr(x64 - x65) + sqr(
     x114 - x115)) + 1/sqrt(sqr(x14 - x16) + sqr(x64 - x66) + sqr(x114 - x116))
      + 1/sqrt(sqr(x14 - x17) + sqr(x64 - x67) + sqr(x114 - x117)) + 1/sqrt(
     sqr(x14 - x18) + sqr(x64 - x68) + sqr(x114 - x118)) + 1/sqrt(sqr(x14 - x19
     ) + sqr(x64 - x69) + sqr(x114 - x119)) + 1/sqrt(sqr(x14 - x20) + sqr(x64
      - x70) + sqr(x114 - x120)) + 1/sqrt(sqr(x14 - x21) + sqr(x64 - x71) + 
     sqr(x114 - x121)) + 1/sqrt(sqr(x14 - x22) + sqr(x64 - x72) + sqr(x114 - 
     x122)) + 1/sqrt(sqr(x14 - x23) + sqr(x64 - x73) + sqr(x114 - x123)) + 1/
     sqrt(sqr(x14 - x24) + sqr(x64 - x74) + sqr(x114 - x124)) + 1/sqrt(sqr(x14
      - x25) + sqr(x64 - x75) + sqr(x114 - x125)) + 1/sqrt(sqr(x14 - x26) + 
     sqr(x64 - x76) + sqr(x114 - x126)) + 1/sqrt(sqr(x14 - x27) + sqr(x64 - x77
     ) + sqr(x114 - x127)) + 1/sqrt(sqr(x14 - x28) + sqr(x64 - x78) + sqr(x114
      - x128)) + 1/sqrt(sqr(x14 - x29) + sqr(x64 - x79) + sqr(x114 - x129)) + 1
     /sqrt(sqr(x14 - x30) + sqr(x64 - x80) + sqr(x114 - x130)) + 1/sqrt(sqr(x14
      - x31) + sqr(x64 - x81) + sqr(x114 - x131)) + 1/sqrt(sqr(x14 - x32) + 
     sqr(x64 - x82) + sqr(x114 - x132)) + 1/sqrt(sqr(x14 - x33) + sqr(x64 - x83
     ) + sqr(x114 - x133)) + 1/sqrt(sqr(x14 - x34) + sqr(x64 - x84) + sqr(x114
      - x134)) + 1/sqrt(sqr(x14 - x35) + sqr(x64 - x85) + sqr(x114 - x135)) + 1
     /sqrt(sqr(x14 - x36) + sqr(x64 - x86) + sqr(x114 - x136)) + 1/sqrt(sqr(x14
      - x37) + sqr(x64 - x87) + sqr(x114 - x137)) + 1/sqrt(sqr(x14 - x38) + 
     sqr(x64 - x88) + sqr(x114 - x138)) + 1/sqrt(sqr(x14 - x39) + sqr(x64 - x89
     ) + sqr(x114 - x139)) + 1/sqrt(sqr(x14 - x40) + sqr(x64 - x90) + sqr(x114
      - x140)) + 1/sqrt(sqr(x14 - x41) + sqr(x64 - x91) + sqr(x114 - x141)) + 1
     /sqrt(sqr(x14 - x42) + sqr(x64 - x92) + sqr(x114 - x142)) + 1/sqrt(sqr(x14
      - x43) + sqr(x64 - x93) + sqr(x114 - x143)) + 1/sqrt(sqr(x14 - x44) + 
     sqr(x64 - x94) + sqr(x114 - x144)) + 1/sqrt(sqr(x14 - x45) + sqr(x64 - x95
     ) + sqr(x114 - x145)) + 1/sqrt(sqr(x14 - x46) + sqr(x64 - x96) + sqr(x114
      - x146)) + 1/sqrt(sqr(x14 - x47) + sqr(x64 - x97) + sqr(x114 - x147)) + 1
     /sqrt(sqr(x14 - x48) + sqr(x64 - x98) + sqr(x114 - x148)) + 1/sqrt(sqr(x14
      - x49) + sqr(x64 - x99) + sqr(x114 - x149)) + 1/sqrt(sqr(x14 - x50) + 
     sqr(x64 - x100) + sqr(x114 - x150)) + 1/sqrt(sqr(x15 - x16) + sqr(x65 - 
     x66) + sqr(x115 - x116)) + 1/sqrt(sqr(x15 - x17) + sqr(x65 - x67) + sqr(
     x115 - x117)) + 1/sqrt(sqr(x15 - x18) + sqr(x65 - x68) + sqr(x115 - x118))
      + 1/sqrt(sqr(x15 - x19) + sqr(x65 - x69) + sqr(x115 - x119)) + 1/sqrt(
     sqr(x15 - x20) + sqr(x65 - x70) + sqr(x115 - x120)) + 1/sqrt(sqr(x15 - x21
     ) + sqr(x65 - x71) + sqr(x115 - x121)) + 1/sqrt(sqr(x15 - x22) + sqr(x65
      - x72) + sqr(x115 - x122)) + 1/sqrt(sqr(x15 - x23) + sqr(x65 - x73) + 
     sqr(x115 - x123)) + 1/sqrt(sqr(x15 - x24) + sqr(x65 - x74) + sqr(x115 - 
     x124)) + 1/sqrt(sqr(x15 - x25) + sqr(x65 - x75) + sqr(x115 - x125)) + 1/
     sqrt(sqr(x15 - x26) + sqr(x65 - x76) + sqr(x115 - x126)) + 1/sqrt(sqr(x15
      - x27) + sqr(x65 - x77) + sqr(x115 - x127)) + 1/sqrt(sqr(x15 - x28) + 
     sqr(x65 - x78) + sqr(x115 - x128)) + 1/sqrt(sqr(x15 - x29) + sqr(x65 - x79
     ) + sqr(x115 - x129)) + 1/sqrt(sqr(x15 - x30) + sqr(x65 - x80) + sqr(x115
      - x130)) + 1/sqrt(sqr(x15 - x31) + sqr(x65 - x81) + sqr(x115 - x131)) + 1
     /sqrt(sqr(x15 - x32) + sqr(x65 - x82) + sqr(x115 - x132)) + 1/sqrt(sqr(x15
      - x33) + sqr(x65 - x83) + sqr(x115 - x133)) + 1/sqrt(sqr(x15 - x34) + 
     sqr(x65 - x84) + sqr(x115 - x134)) + 1/sqrt(sqr(x15 - x35) + sqr(x65 - x85
     ) + sqr(x115 - x135)) + 1/sqrt(sqr(x15 - x36) + sqr(x65 - x86) + sqr(x115
      - x136)) + 1/sqrt(sqr(x15 - x37) + sqr(x65 - x87) + sqr(x115 - x137)) + 1
     /sqrt(sqr(x15 - x38) + sqr(x65 - x88) + sqr(x115 - x138)) + 1/sqrt(sqr(x15
      - x39) + sqr(x65 - x89) + sqr(x115 - x139)) + 1/sqrt(sqr(x15 - x40) + 
     sqr(x65 - x90) + sqr(x115 - x140)) + 1/sqrt(sqr(x15 - x41) + sqr(x65 - x91
     ) + sqr(x115 - x141)) + 1/sqrt(sqr(x15 - x42) + sqr(x65 - x92) + sqr(x115
      - x142)) + 1/sqrt(sqr(x15 - x43) + sqr(x65 - x93) + sqr(x115 - x143)) + 1
     /sqrt(sqr(x15 - x44) + sqr(x65 - x94) + sqr(x115 - x144)) + 1/sqrt(sqr(x15
      - x45) + sqr(x65 - x95) + sqr(x115 - x145)) + 1/sqrt(sqr(x15 - x46) + 
     sqr(x65 - x96) + sqr(x115 - x146)) + 1/sqrt(sqr(x15 - x47) + sqr(x65 - x97
     ) + sqr(x115 - x147)) + 1/sqrt(sqr(x15 - x48) + sqr(x65 - x98) + sqr(x115
      - x148)) + 1/sqrt(sqr(x15 - x49) + sqr(x65 - x99) + sqr(x115 - x149)) + 1
     /sqrt(sqr(x15 - x50) + sqr(x65 - x100) + sqr(x115 - x150)) + 1/sqrt(sqr(
     x16 - x17) + sqr(x66 - x67) + sqr(x116 - x117)) + 1/sqrt(sqr(x16 - x18) + 
     sqr(x66 - x68) + sqr(x116 - x118)) + 1/sqrt(sqr(x16 - x19) + sqr(x66 - x69
     ) + sqr(x116 - x119)) + 1/sqrt(sqr(x16 - x20) + sqr(x66 - x70) + sqr(x116
      - x120)) + 1/sqrt(sqr(x16 - x21) + sqr(x66 - x71) + sqr(x116 - x121)) + 1
     /sqrt(sqr(x16 - x22) + sqr(x66 - x72) + sqr(x116 - x122)) + 1/sqrt(sqr(x16
      - x23) + sqr(x66 - x73) + sqr(x116 - x123)) + 1/sqrt(sqr(x16 - x24) + 
     sqr(x66 - x74) + sqr(x116 - x124)) + 1/sqrt(sqr(x16 - x25) + sqr(x66 - x75
     ) + sqr(x116 - x125)) + 1/sqrt(sqr(x16 - x26) + sqr(x66 - x76) + sqr(x116
      - x126)) + 1/sqrt(sqr(x16 - x27) + sqr(x66 - x77) + sqr(x116 - x127)) + 1
     /sqrt(sqr(x16 - x28) + sqr(x66 - x78) + sqr(x116 - x128)) + 1/sqrt(sqr(x16
      - x29) + sqr(x66 - x79) + sqr(x116 - x129)) + 1/sqrt(sqr(x16 - x30) + 
     sqr(x66 - x80) + sqr(x116 - x130)) + 1/sqrt(sqr(x16 - x31) + sqr(x66 - x81
     ) + sqr(x116 - x131)) + 1/sqrt(sqr(x16 - x32) + sqr(x66 - x82) + sqr(x116
      - x132)) + 1/sqrt(sqr(x16 - x33) + sqr(x66 - x83) + sqr(x116 - x133)) + 1
     /sqrt(sqr(x16 - x34) + sqr(x66 - x84) + sqr(x116 - x134)) + 1/sqrt(sqr(x16
      - x35) + sqr(x66 - x85) + sqr(x116 - x135)) + 1/sqrt(sqr(x16 - x36) + 
     sqr(x66 - x86) + sqr(x116 - x136)) + 1/sqrt(sqr(x16 - x37) + sqr(x66 - x87
     ) + sqr(x116 - x137)) + 1/sqrt(sqr(x16 - x38) + sqr(x66 - x88) + sqr(x116
      - x138)) + 1/sqrt(sqr(x16 - x39) + sqr(x66 - x89) + sqr(x116 - x139)) + 1
     /sqrt(sqr(x16 - x40) + sqr(x66 - x90) + sqr(x116 - x140)) + 1/sqrt(sqr(x16
      - x41) + sqr(x66 - x91) + sqr(x116 - x141)) + 1/sqrt(sqr(x16 - x42) + 
     sqr(x66 - x92) + sqr(x116 - x142)) + 1/sqrt(sqr(x16 - x43) + sqr(x66 - x93
     ) + sqr(x116 - x143)) + 1/sqrt(sqr(x16 - x44) + sqr(x66 - x94) + sqr(x116
      - x144)) + 1/sqrt(sqr(x16 - x45) + sqr(x66 - x95) + sqr(x116 - x145)) + 1
     /sqrt(sqr(x16 - x46) + sqr(x66 - x96) + sqr(x116 - x146)) + 1/sqrt(sqr(x16
      - x47) + sqr(x66 - x97) + sqr(x116 - x147)) + 1/sqrt(sqr(x16 - x48) + 
     sqr(x66 - x98) + sqr(x116 - x148)) + 1/sqrt(sqr(x16 - x49) + sqr(x66 - x99
     ) + sqr(x116 - x149)) + 1/sqrt(sqr(x16 - x50) + sqr(x66 - x100) + sqr(x116
      - x150)) + 1/sqrt(sqr(x17 - x18) + sqr(x67 - x68) + sqr(x117 - x118)) + 1
     /sqrt(sqr(x17 - x19) + sqr(x67 - x69) + sqr(x117 - x119)) + 1/sqrt(sqr(x17
      - x20) + sqr(x67 - x70) + sqr(x117 - x120)) + 1/sqrt(sqr(x17 - x21) + 
     sqr(x67 - x71) + sqr(x117 - x121)) + 1/sqrt(sqr(x17 - x22) + sqr(x67 - x72
     ) + sqr(x117 - x122)) + 1/sqrt(sqr(x17 - x23) + sqr(x67 - x73) + sqr(x117
      - x123)) + 1/sqrt(sqr(x17 - x24) + sqr(x67 - x74) + sqr(x117 - x124)) + 1
     /sqrt(sqr(x17 - x25) + sqr(x67 - x75) + sqr(x117 - x125)) + 1/sqrt(sqr(x17
      - x26) + sqr(x67 - x76) + sqr(x117 - x126)) + 1/sqrt(sqr(x17 - x27) + 
     sqr(x67 - x77) + sqr(x117 - x127)) + 1/sqrt(sqr(x17 - x28) + sqr(x67 - x78
     ) + sqr(x117 - x128)) + 1/sqrt(sqr(x17 - x29) + sqr(x67 - x79) + sqr(x117
      - x129)) + 1/sqrt(sqr(x17 - x30) + sqr(x67 - x80) + sqr(x117 - x130)) + 1
     /sqrt(sqr(x17 - x31) + sqr(x67 - x81) + sqr(x117 - x131)) + 1/sqrt(sqr(x17
      - x32) + sqr(x67 - x82) + sqr(x117 - x132)) + 1/sqrt(sqr(x17 - x33) + 
     sqr(x67 - x83) + sqr(x117 - x133)) + 1/sqrt(sqr(x17 - x34) + sqr(x67 - x84
     ) + sqr(x117 - x134)) + 1/sqrt(sqr(x17 - x35) + sqr(x67 - x85) + sqr(x117
      - x135)) + 1/sqrt(sqr(x17 - x36) + sqr(x67 - x86) + sqr(x117 - x136)) + 1
     /sqrt(sqr(x17 - x37) + sqr(x67 - x87) + sqr(x117 - x137)) + 1/sqrt(sqr(x17
      - x38) + sqr(x67 - x88) + sqr(x117 - x138)) + 1/sqrt(sqr(x17 - x39) + 
     sqr(x67 - x89) + sqr(x117 - x139)) + 1/sqrt(sqr(x17 - x40) + sqr(x67 - x90
     ) + sqr(x117 - x140)) + 1/sqrt(sqr(x17 - x41) + sqr(x67 - x91) + sqr(x117
      - x141)) + 1/sqrt(sqr(x17 - x42) + sqr(x67 - x92) + sqr(x117 - x142)) + 1
     /sqrt(sqr(x17 - x43) + sqr(x67 - x93) + sqr(x117 - x143)) + 1/sqrt(sqr(x17
      - x44) + sqr(x67 - x94) + sqr(x117 - x144)) + 1/sqrt(sqr(x17 - x45) + 
     sqr(x67 - x95) + sqr(x117 - x145)) + 1/sqrt(sqr(x17 - x46) + sqr(x67 - x96
     ) + sqr(x117 - x146)) + 1/sqrt(sqr(x17 - x47) + sqr(x67 - x97) + sqr(x117
      - x147)) + 1/sqrt(sqr(x17 - x48) + sqr(x67 - x98) + sqr(x117 - x148)) + 1
     /sqrt(sqr(x17 - x49) + sqr(x67 - x99) + sqr(x117 - x149)) + 1/sqrt(sqr(x17
      - x50) + sqr(x67 - x100) + sqr(x117 - x150)) + 1/sqrt(sqr(x18 - x19) + 
     sqr(x68 - x69) + sqr(x118 - x119)) + 1/sqrt(sqr(x18 - x20) + sqr(x68 - x70
     ) + sqr(x118 - x120)) + 1/sqrt(sqr(x18 - x21) + sqr(x68 - x71) + sqr(x118
      - x121)) + 1/sqrt(sqr(x18 - x22) + sqr(x68 - x72) + sqr(x118 - x122)) + 1
     /sqrt(sqr(x18 - x23) + sqr(x68 - x73) + sqr(x118 - x123)) + 1/sqrt(sqr(x18
      - x24) + sqr(x68 - x74) + sqr(x118 - x124)) + 1/sqrt(sqr(x18 - x25) + 
     sqr(x68 - x75) + sqr(x118 - x125)) + 1/sqrt(sqr(x18 - x26) + sqr(x68 - x76
     ) + sqr(x118 - x126)) + 1/sqrt(sqr(x18 - x27) + sqr(x68 - x77) + sqr(x118
      - x127)) + 1/sqrt(sqr(x18 - x28) + sqr(x68 - x78) + sqr(x118 - x128)) + 1
     /sqrt(sqr(x18 - x29) + sqr(x68 - x79) + sqr(x118 - x129)) + 1/sqrt(sqr(x18
      - x30) + sqr(x68 - x80) + sqr(x118 - x130)) + 1/sqrt(sqr(x18 - x31) + 
     sqr(x68 - x81) + sqr(x118 - x131)) + 1/sqrt(sqr(x18 - x32) + sqr(x68 - x82
     ) + sqr(x118 - x132)) + 1/sqrt(sqr(x18 - x33) + sqr(x68 - x83) + sqr(x118
      - x133)) + 1/sqrt(sqr(x18 - x34) + sqr(x68 - x84) + sqr(x118 - x134)) + 1
     /sqrt(sqr(x18 - x35) + sqr(x68 - x85) + sqr(x118 - x135)) + 1/sqrt(sqr(x18
      - x36) + sqr(x68 - x86) + sqr(x118 - x136)) + 1/sqrt(sqr(x18 - x37) + 
     sqr(x68 - x87) + sqr(x118 - x137)) + 1/sqrt(sqr(x18 - x38) + sqr(x68 - x88
     ) + sqr(x118 - x138)) + 1/sqrt(sqr(x18 - x39) + sqr(x68 - x89) + sqr(x118
      - x139)) + 1/sqrt(sqr(x18 - x40) + sqr(x68 - x90) + sqr(x118 - x140)) + 1
     /sqrt(sqr(x18 - x41) + sqr(x68 - x91) + sqr(x118 - x141)) + 1/sqrt(sqr(x18
      - x42) + sqr(x68 - x92) + sqr(x118 - x142)) + 1/sqrt(sqr(x18 - x43) + 
     sqr(x68 - x93) + sqr(x118 - x143)) + 1/sqrt(sqr(x18 - x44) + sqr(x68 - x94
     ) + sqr(x118 - x144)) + 1/sqrt(sqr(x18 - x45) + sqr(x68 - x95) + sqr(x118
      - x145)) + 1/sqrt(sqr(x18 - x46) + sqr(x68 - x96) + sqr(x118 - x146)) + 1
     /sqrt(sqr(x18 - x47) + sqr(x68 - x97) + sqr(x118 - x147)) + 1/sqrt(sqr(x18
      - x48) + sqr(x68 - x98) + sqr(x118 - x148)) + 1/sqrt(sqr(x18 - x49) + 
     sqr(x68 - x99) + sqr(x118 - x149)) + 1/sqrt(sqr(x18 - x50) + sqr(x68 - 
     x100) + sqr(x118 - x150)) + 1/sqrt(sqr(x19 - x20) + sqr(x69 - x70) + sqr(
     x119 - x120)) + 1/sqrt(sqr(x19 - x21) + sqr(x69 - x71) + sqr(x119 - x121))
      + 1/sqrt(sqr(x19 - x22) + sqr(x69 - x72) + sqr(x119 - x122)) + 1/sqrt(
     sqr(x19 - x23) + sqr(x69 - x73) + sqr(x119 - x123)) + 1/sqrt(sqr(x19 - x24
     ) + sqr(x69 - x74) + sqr(x119 - x124)) + 1/sqrt(sqr(x19 - x25) + sqr(x69
      - x75) + sqr(x119 - x125)) + 1/sqrt(sqr(x19 - x26) + sqr(x69 - x76) + 
     sqr(x119 - x126)) + 1/sqrt(sqr(x19 - x27) + sqr(x69 - x77) + sqr(x119 - 
     x127)) + 1/sqrt(sqr(x19 - x28) + sqr(x69 - x78) + sqr(x119 - x128)) + 1/
     sqrt(sqr(x19 - x29) + sqr(x69 - x79) + sqr(x119 - x129)) + 1/sqrt(sqr(x19
      - x30) + sqr(x69 - x80) + sqr(x119 - x130)) + 1/sqrt(sqr(x19 - x31) + 
     sqr(x69 - x81) + sqr(x119 - x131)) + 1/sqrt(sqr(x19 - x32) + sqr(x69 - x82
     ) + sqr(x119 - x132)) + 1/sqrt(sqr(x19 - x33) + sqr(x69 - x83) + sqr(x119
      - x133)) + 1/sqrt(sqr(x19 - x34) + sqr(x69 - x84) + sqr(x119 - x134)) + 1
     /sqrt(sqr(x19 - x35) + sqr(x69 - x85) + sqr(x119 - x135)) + 1/sqrt(sqr(x19
      - x36) + sqr(x69 - x86) + sqr(x119 - x136)) + 1/sqrt(sqr(x19 - x37) + 
     sqr(x69 - x87) + sqr(x119 - x137)) + 1/sqrt(sqr(x19 - x38) + sqr(x69 - x88
     ) + sqr(x119 - x138)) + 1/sqrt(sqr(x19 - x39) + sqr(x69 - x89) + sqr(x119
      - x139)) + 1/sqrt(sqr(x19 - x40) + sqr(x69 - x90) + sqr(x119 - x140)) + 1
     /sqrt(sqr(x19 - x41) + sqr(x69 - x91) + sqr(x119 - x141)) + 1/sqrt(sqr(x19
      - x42) + sqr(x69 - x92) + sqr(x119 - x142)) + 1/sqrt(sqr(x19 - x43) + 
     sqr(x69 - x93) + sqr(x119 - x143)) + 1/sqrt(sqr(x19 - x44) + sqr(x69 - x94
     ) + sqr(x119 - x144)) + 1/sqrt(sqr(x19 - x45) + sqr(x69 - x95) + sqr(x119
      - x145)) + 1/sqrt(sqr(x19 - x46) + sqr(x69 - x96) + sqr(x119 - x146)) + 1
     /sqrt(sqr(x19 - x47) + sqr(x69 - x97) + sqr(x119 - x147)) + 1/sqrt(sqr(x19
      - x48) + sqr(x69 - x98) + sqr(x119 - x148)) + 1/sqrt(sqr(x19 - x49) + 
     sqr(x69 - x99) + sqr(x119 - x149)) + 1/sqrt(sqr(x19 - x50) + sqr(x69 - 
     x100) + sqr(x119 - x150)) + 1/sqrt(sqr(x20 - x21) + sqr(x70 - x71) + sqr(
     x120 - x121)) + 1/sqrt(sqr(x20 - x22) + sqr(x70 - x72) + sqr(x120 - x122))
      + 1/sqrt(sqr(x20 - x23) + sqr(x70 - x73) + sqr(x120 - x123)) + 1/sqrt(
     sqr(x20 - x24) + sqr(x70 - x74) + sqr(x120 - x124)) + 1/sqrt(sqr(x20 - x25
     ) + sqr(x70 - x75) + sqr(x120 - x125)) + 1/sqrt(sqr(x20 - x26) + sqr(x70
      - x76) + sqr(x120 - x126)) + 1/sqrt(sqr(x20 - x27) + sqr(x70 - x77) + 
     sqr(x120 - x127)) + 1/sqrt(sqr(x20 - x28) + sqr(x70 - x78) + sqr(x120 - 
     x128)) + 1/sqrt(sqr(x20 - x29) + sqr(x70 - x79) + sqr(x120 - x129)) + 1/
     sqrt(sqr(x20 - x30) + sqr(x70 - x80) + sqr(x120 - x130)) + 1/sqrt(sqr(x20
      - x31) + sqr(x70 - x81) + sqr(x120 - x131)) + 1/sqrt(sqr(x20 - x32) + 
     sqr(x70 - x82) + sqr(x120 - x132)) + 1/sqrt(sqr(x20 - x33) + sqr(x70 - x83
     ) + sqr(x120 - x133)) + 1/sqrt(sqr(x20 - x34) + sqr(x70 - x84) + sqr(x120
      - x134)) + 1/sqrt(sqr(x20 - x35) + sqr(x70 - x85) + sqr(x120 - x135)) + 1
     /sqrt(sqr(x20 - x36) + sqr(x70 - x86) + sqr(x120 - x136)) + 1/sqrt(sqr(x20
      - x37) + sqr(x70 - x87) + sqr(x120 - x137)) + 1/sqrt(sqr(x20 - x38) + 
     sqr(x70 - x88) + sqr(x120 - x138)) + 1/sqrt(sqr(x20 - x39) + sqr(x70 - x89
     ) + sqr(x120 - x139)) + 1/sqrt(sqr(x20 - x40) + sqr(x70 - x90) + sqr(x120
      - x140)) + 1/sqrt(sqr(x20 - x41) + sqr(x70 - x91) + sqr(x120 - x141)) + 1
     /sqrt(sqr(x20 - x42) + sqr(x70 - x92) + sqr(x120 - x142)) + 1/sqrt(sqr(x20
      - x43) + sqr(x70 - x93) + sqr(x120 - x143)) + 1/sqrt(sqr(x20 - x44) + 
     sqr(x70 - x94) + sqr(x120 - x144)) + 1/sqrt(sqr(x20 - x45) + sqr(x70 - x95
     ) + sqr(x120 - x145)) + 1/sqrt(sqr(x20 - x46) + sqr(x70 - x96) + sqr(x120
      - x146)) + 1/sqrt(sqr(x20 - x47) + sqr(x70 - x97) + sqr(x120 - x147)) + 1
     /sqrt(sqr(x20 - x48) + sqr(x70 - x98) + sqr(x120 - x148)) + 1/sqrt(sqr(x20
      - x49) + sqr(x70 - x99) + sqr(x120 - x149)) + 1/sqrt(sqr(x20 - x50) + 
     sqr(x70 - x100) + sqr(x120 - x150)) + 1/sqrt(sqr(x21 - x22) + sqr(x71 - 
     x72) + sqr(x121 - x122)) + 1/sqrt(sqr(x21 - x23) + sqr(x71 - x73) + sqr(
     x121 - x123)) + 1/sqrt(sqr(x21 - x24) + sqr(x71 - x74) + sqr(x121 - x124))
      + 1/sqrt(sqr(x21 - x25) + sqr(x71 - x75) + sqr(x121 - x125)) + 1/sqrt(
     sqr(x21 - x26) + sqr(x71 - x76) + sqr(x121 - x126)) + 1/sqrt(sqr(x21 - x27
     ) + sqr(x71 - x77) + sqr(x121 - x127)) + 1/sqrt(sqr(x21 - x28) + sqr(x71
      - x78) + sqr(x121 - x128)) + 1/sqrt(sqr(x21 - x29) + sqr(x71 - x79) + 
     sqr(x121 - x129)) + 1/sqrt(sqr(x21 - x30) + sqr(x71 - x80) + sqr(x121 - 
     x130)) + 1/sqrt(sqr(x21 - x31) + sqr(x71 - x81) + sqr(x121 - x131)) + 1/
     sqrt(sqr(x21 - x32) + sqr(x71 - x82) + sqr(x121 - x132)) + 1/sqrt(sqr(x21
      - x33) + sqr(x71 - x83) + sqr(x121 - x133)) + 1/sqrt(sqr(x21 - x34) + 
     sqr(x71 - x84) + sqr(x121 - x134)) + 1/sqrt(sqr(x21 - x35) + sqr(x71 - x85
     ) + sqr(x121 - x135)) + 1/sqrt(sqr(x21 - x36) + sqr(x71 - x86) + sqr(x121
      - x136)) + 1/sqrt(sqr(x21 - x37) + sqr(x71 - x87) + sqr(x121 - x137)) + 1
     /sqrt(sqr(x21 - x38) + sqr(x71 - x88) + sqr(x121 - x138)) + 1/sqrt(sqr(x21
      - x39) + sqr(x71 - x89) + sqr(x121 - x139)) + 1/sqrt(sqr(x21 - x40) + 
     sqr(x71 - x90) + sqr(x121 - x140)) + 1/sqrt(sqr(x21 - x41) + sqr(x71 - x91
     ) + sqr(x121 - x141)) + 1/sqrt(sqr(x21 - x42) + sqr(x71 - x92) + sqr(x121
      - x142)) + 1/sqrt(sqr(x21 - x43) + sqr(x71 - x93) + sqr(x121 - x143)) + 1
     /sqrt(sqr(x21 - x44) + sqr(x71 - x94) + sqr(x121 - x144)) + 1/sqrt(sqr(x21
      - x45) + sqr(x71 - x95) + sqr(x121 - x145)) + 1/sqrt(sqr(x21 - x46) + 
     sqr(x71 - x96) + sqr(x121 - x146)) + 1/sqrt(sqr(x21 - x47) + sqr(x71 - x97
     ) + sqr(x121 - x147)) + 1/sqrt(sqr(x21 - x48) + sqr(x71 - x98) + sqr(x121
      - x148)) + 1/sqrt(sqr(x21 - x49) + sqr(x71 - x99) + sqr(x121 - x149)) + 1
     /sqrt(sqr(x21 - x50) + sqr(x71 - x100) + sqr(x121 - x150)) + 1/sqrt(sqr(
     x22 - x23) + sqr(x72 - x73) + sqr(x122 - x123)) + 1/sqrt(sqr(x22 - x24) + 
     sqr(x72 - x74) + sqr(x122 - x124)) + 1/sqrt(sqr(x22 - x25) + sqr(x72 - x75
     ) + sqr(x122 - x125)) + 1/sqrt(sqr(x22 - x26) + sqr(x72 - x76) + sqr(x122
      - x126)) + 1/sqrt(sqr(x22 - x27) + sqr(x72 - x77) + sqr(x122 - x127)) + 1
     /sqrt(sqr(x22 - x28) + sqr(x72 - x78) + sqr(x122 - x128)) + 1/sqrt(sqr(x22
      - x29) + sqr(x72 - x79) + sqr(x122 - x129)) + 1/sqrt(sqr(x22 - x30) + 
     sqr(x72 - x80) + sqr(x122 - x130)) + 1/sqrt(sqr(x22 - x31) + sqr(x72 - x81
     ) + sqr(x122 - x131)) + 1/sqrt(sqr(x22 - x32) + sqr(x72 - x82) + sqr(x122
      - x132)) + 1/sqrt(sqr(x22 - x33) + sqr(x72 - x83) + sqr(x122 - x133)) + 1
     /sqrt(sqr(x22 - x34) + sqr(x72 - x84) + sqr(x122 - x134)) + 1/sqrt(sqr(x22
      - x35) + sqr(x72 - x85) + sqr(x122 - x135)) + 1/sqrt(sqr(x22 - x36) + 
     sqr(x72 - x86) + sqr(x122 - x136)) + 1/sqrt(sqr(x22 - x37) + sqr(x72 - x87
     ) + sqr(x122 - x137)) + 1/sqrt(sqr(x22 - x38) + sqr(x72 - x88) + sqr(x122
      - x138)) + 1/sqrt(sqr(x22 - x39) + sqr(x72 - x89) + sqr(x122 - x139)) + 1
     /sqrt(sqr(x22 - x40) + sqr(x72 - x90) + sqr(x122 - x140)) + 1/sqrt(sqr(x22
      - x41) + sqr(x72 - x91) + sqr(x122 - x141)) + 1/sqrt(sqr(x22 - x42) + 
     sqr(x72 - x92) + sqr(x122 - x142)) + 1/sqrt(sqr(x22 - x43) + sqr(x72 - x93
     ) + sqr(x122 - x143)) + 1/sqrt(sqr(x22 - x44) + sqr(x72 - x94) + sqr(x122
      - x144)) + 1/sqrt(sqr(x22 - x45) + sqr(x72 - x95) + sqr(x122 - x145)) + 1
     /sqrt(sqr(x22 - x46) + sqr(x72 - x96) + sqr(x122 - x146)) + 1/sqrt(sqr(x22
      - x47) + sqr(x72 - x97) + sqr(x122 - x147)) + 1/sqrt(sqr(x22 - x48) + 
     sqr(x72 - x98) + sqr(x122 - x148)) + 1/sqrt(sqr(x22 - x49) + sqr(x72 - x99
     ) + sqr(x122 - x149)) + 1/sqrt(sqr(x22 - x50) + sqr(x72 - x100) + sqr(x122
      - x150)) + 1/sqrt(sqr(x23 - x24) + sqr(x73 - x74) + sqr(x123 - x124)) + 1
     /sqrt(sqr(x23 - x25) + sqr(x73 - x75) + sqr(x123 - x125)) + 1/sqrt(sqr(x23
      - x26) + sqr(x73 - x76) + sqr(x123 - x126)) + 1/sqrt(sqr(x23 - x27) + 
     sqr(x73 - x77) + sqr(x123 - x127)) + 1/sqrt(sqr(x23 - x28) + sqr(x73 - x78
     ) + sqr(x123 - x128)) + 1/sqrt(sqr(x23 - x29) + sqr(x73 - x79) + sqr(x123
      - x129)) + 1/sqrt(sqr(x23 - x30) + sqr(x73 - x80) + sqr(x123 - x130)) + 1
     /sqrt(sqr(x23 - x31) + sqr(x73 - x81) + sqr(x123 - x131)) + 1/sqrt(sqr(x23
      - x32) + sqr(x73 - x82) + sqr(x123 - x132)) + 1/sqrt(sqr(x23 - x33) + 
     sqr(x73 - x83) + sqr(x123 - x133)) + 1/sqrt(sqr(x23 - x34) + sqr(x73 - x84
     ) + sqr(x123 - x134)) + 1/sqrt(sqr(x23 - x35) + sqr(x73 - x85) + sqr(x123
      - x135)) + 1/sqrt(sqr(x23 - x36) + sqr(x73 - x86) + sqr(x123 - x136)) + 1
     /sqrt(sqr(x23 - x37) + sqr(x73 - x87) + sqr(x123 - x137)) + 1/sqrt(sqr(x23
      - x38) + sqr(x73 - x88) + sqr(x123 - x138)) + 1/sqrt(sqr(x23 - x39) + 
     sqr(x73 - x89) + sqr(x123 - x139)) + 1/sqrt(sqr(x23 - x40) + sqr(x73 - x90
     ) + sqr(x123 - x140)) + 1/sqrt(sqr(x23 - x41) + sqr(x73 - x91) + sqr(x123
      - x141)) + 1/sqrt(sqr(x23 - x42) + sqr(x73 - x92) + sqr(x123 - x142)) + 1
     /sqrt(sqr(x23 - x43) + sqr(x73 - x93) + sqr(x123 - x143)) + 1/sqrt(sqr(x23
      - x44) + sqr(x73 - x94) + sqr(x123 - x144)) + 1/sqrt(sqr(x23 - x45) + 
     sqr(x73 - x95) + sqr(x123 - x145)) + 1/sqrt(sqr(x23 - x46) + sqr(x73 - x96
     ) + sqr(x123 - x146)) + 1/sqrt(sqr(x23 - x47) + sqr(x73 - x97) + sqr(x123
      - x147)) + 1/sqrt(sqr(x23 - x48) + sqr(x73 - x98) + sqr(x123 - x148)) + 1
     /sqrt(sqr(x23 - x49) + sqr(x73 - x99) + sqr(x123 - x149)) + 1/sqrt(sqr(x23
      - x50) + sqr(x73 - x100) + sqr(x123 - x150)) + 1/sqrt(sqr(x24 - x25) + 
     sqr(x74 - x75) + sqr(x124 - x125)) + 1/sqrt(sqr(x24 - x26) + sqr(x74 - x76
     ) + sqr(x124 - x126)) + 1/sqrt(sqr(x24 - x27) + sqr(x74 - x77) + sqr(x124
      - x127)) + 1/sqrt(sqr(x24 - x28) + sqr(x74 - x78) + sqr(x124 - x128)) + 1
     /sqrt(sqr(x24 - x29) + sqr(x74 - x79) + sqr(x124 - x129)) + 1/sqrt(sqr(x24
      - x30) + sqr(x74 - x80) + sqr(x124 - x130)) + 1/sqrt(sqr(x24 - x31) + 
     sqr(x74 - x81) + sqr(x124 - x131)) + 1/sqrt(sqr(x24 - x32) + sqr(x74 - x82
     ) + sqr(x124 - x132)) + 1/sqrt(sqr(x24 - x33) + sqr(x74 - x83) + sqr(x124
      - x133)) + 1/sqrt(sqr(x24 - x34) + sqr(x74 - x84) + sqr(x124 - x134)) + 1
     /sqrt(sqr(x24 - x35) + sqr(x74 - x85) + sqr(x124 - x135)) + 1/sqrt(sqr(x24
      - x36) + sqr(x74 - x86) + sqr(x124 - x136)) + 1/sqrt(sqr(x24 - x37) + 
     sqr(x74 - x87) + sqr(x124 - x137)) + 1/sqrt(sqr(x24 - x38) + sqr(x74 - x88
     ) + sqr(x124 - x138)) + 1/sqrt(sqr(x24 - x39) + sqr(x74 - x89) + sqr(x124
      - x139)) + 1/sqrt(sqr(x24 - x40) + sqr(x74 - x90) + sqr(x124 - x140)) + 1
     /sqrt(sqr(x24 - x41) + sqr(x74 - x91) + sqr(x124 - x141)) + 1/sqrt(sqr(x24
      - x42) + sqr(x74 - x92) + sqr(x124 - x142)) + 1/sqrt(sqr(x24 - x43) + 
     sqr(x74 - x93) + sqr(x124 - x143)) + 1/sqrt(sqr(x24 - x44) + sqr(x74 - x94
     ) + sqr(x124 - x144)) + 1/sqrt(sqr(x24 - x45) + sqr(x74 - x95) + sqr(x124
      - x145)) + 1/sqrt(sqr(x24 - x46) + sqr(x74 - x96) + sqr(x124 - x146)) + 1
     /sqrt(sqr(x24 - x47) + sqr(x74 - x97) + sqr(x124 - x147)) + 1/sqrt(sqr(x24
      - x48) + sqr(x74 - x98) + sqr(x124 - x148)) + 1/sqrt(sqr(x24 - x49) + 
     sqr(x74 - x99) + sqr(x124 - x149)) + 1/sqrt(sqr(x24 - x50) + sqr(x74 - 
     x100) + sqr(x124 - x150)) + 1/sqrt(sqr(x25 - x26) + sqr(x75 - x76) + sqr(
     x125 - x126)) + 1/sqrt(sqr(x25 - x27) + sqr(x75 - x77) + sqr(x125 - x127))
      + 1/sqrt(sqr(x25 - x28) + sqr(x75 - x78) + sqr(x125 - x128)) + 1/sqrt(
     sqr(x25 - x29) + sqr(x75 - x79) + sqr(x125 - x129)) + 1/sqrt(sqr(x25 - x30
     ) + sqr(x75 - x80) + sqr(x125 - x130)) + 1/sqrt(sqr(x25 - x31) + sqr(x75
      - x81) + sqr(x125 - x131)) + 1/sqrt(sqr(x25 - x32) + sqr(x75 - x82) + 
     sqr(x125 - x132)) + 1/sqrt(sqr(x25 - x33) + sqr(x75 - x83) + sqr(x125 - 
     x133)) + 1/sqrt(sqr(x25 - x34) + sqr(x75 - x84) + sqr(x125 - x134)) + 1/
     sqrt(sqr(x25 - x35) + sqr(x75 - x85) + sqr(x125 - x135)) + 1/sqrt(sqr(x25
      - x36) + sqr(x75 - x86) + sqr(x125 - x136)) + 1/sqrt(sqr(x25 - x37) + 
     sqr(x75 - x87) + sqr(x125 - x137)) + 1/sqrt(sqr(x25 - x38) + sqr(x75 - x88
     ) + sqr(x125 - x138)) + 1/sqrt(sqr(x25 - x39) + sqr(x75 - x89) + sqr(x125
      - x139)) + 1/sqrt(sqr(x25 - x40) + sqr(x75 - x90) + sqr(x125 - x140)) + 1
     /sqrt(sqr(x25 - x41) + sqr(x75 - x91) + sqr(x125 - x141)) + 1/sqrt(sqr(x25
      - x42) + sqr(x75 - x92) + sqr(x125 - x142)) + 1/sqrt(sqr(x25 - x43) + 
     sqr(x75 - x93) + sqr(x125 - x143)) + 1/sqrt(sqr(x25 - x44) + sqr(x75 - x94
     ) + sqr(x125 - x144)) + 1/sqrt(sqr(x25 - x45) + sqr(x75 - x95) + sqr(x125
      - x145)) + 1/sqrt(sqr(x25 - x46) + sqr(x75 - x96) + sqr(x125 - x146)) + 1
     /sqrt(sqr(x25 - x47) + sqr(x75 - x97) + sqr(x125 - x147)) + 1/sqrt(sqr(x25
      - x48) + sqr(x75 - x98) + sqr(x125 - x148)) + 1/sqrt(sqr(x25 - x49) + 
     sqr(x75 - x99) + sqr(x125 - x149)) + 1/sqrt(sqr(x25 - x50) + sqr(x75 - 
     x100) + sqr(x125 - x150)) + 1/sqrt(sqr(x26 - x27) + sqr(x76 - x77) + sqr(
     x126 - x127)) + 1/sqrt(sqr(x26 - x28) + sqr(x76 - x78) + sqr(x126 - x128))
      + 1/sqrt(sqr(x26 - x29) + sqr(x76 - x79) + sqr(x126 - x129)) + 1/sqrt(
     sqr(x26 - x30) + sqr(x76 - x80) + sqr(x126 - x130)) + 1/sqrt(sqr(x26 - x31
     ) + sqr(x76 - x81) + sqr(x126 - x131)) + 1/sqrt(sqr(x26 - x32) + sqr(x76
      - x82) + sqr(x126 - x132)) + 1/sqrt(sqr(x26 - x33) + sqr(x76 - x83) + 
     sqr(x126 - x133)) + 1/sqrt(sqr(x26 - x34) + sqr(x76 - x84) + sqr(x126 - 
     x134)) + 1/sqrt(sqr(x26 - x35) + sqr(x76 - x85) + sqr(x126 - x135)) + 1/
     sqrt(sqr(x26 - x36) + sqr(x76 - x86) + sqr(x126 - x136)) + 1/sqrt(sqr(x26
      - x37) + sqr(x76 - x87) + sqr(x126 - x137)) + 1/sqrt(sqr(x26 - x38) + 
     sqr(x76 - x88) + sqr(x126 - x138)) + 1/sqrt(sqr(x26 - x39) + sqr(x76 - x89
     ) + sqr(x126 - x139)) + 1/sqrt(sqr(x26 - x40) + sqr(x76 - x90) + sqr(x126
      - x140)) + 1/sqrt(sqr(x26 - x41) + sqr(x76 - x91) + sqr(x126 - x141)) + 1
     /sqrt(sqr(x26 - x42) + sqr(x76 - x92) + sqr(x126 - x142)) + 1/sqrt(sqr(x26
      - x43) + sqr(x76 - x93) + sqr(x126 - x143)) + 1/sqrt(sqr(x26 - x44) + 
     sqr(x76 - x94) + sqr(x126 - x144)) + 1/sqrt(sqr(x26 - x45) + sqr(x76 - x95
     ) + sqr(x126 - x145)) + 1/sqrt(sqr(x26 - x46) + sqr(x76 - x96) + sqr(x126
      - x146)) + 1/sqrt(sqr(x26 - x47) + sqr(x76 - x97) + sqr(x126 - x147)) + 1
     /sqrt(sqr(x26 - x48) + sqr(x76 - x98) + sqr(x126 - x148)) + 1/sqrt(sqr(x26
      - x49) + sqr(x76 - x99) + sqr(x126 - x149)) + 1/sqrt(sqr(x26 - x50) + 
     sqr(x76 - x100) + sqr(x126 - x150)) + 1/sqrt(sqr(x27 - x28) + sqr(x77 - 
     x78) + sqr(x127 - x128)) + 1/sqrt(sqr(x27 - x29) + sqr(x77 - x79) + sqr(
     x127 - x129)) + 1/sqrt(sqr(x27 - x30) + sqr(x77 - x80) + sqr(x127 - x130))
      + 1/sqrt(sqr(x27 - x31) + sqr(x77 - x81) + sqr(x127 - x131)) + 1/sqrt(
     sqr(x27 - x32) + sqr(x77 - x82) + sqr(x127 - x132)) + 1/sqrt(sqr(x27 - x33
     ) + sqr(x77 - x83) + sqr(x127 - x133)) + 1/sqrt(sqr(x27 - x34) + sqr(x77
      - x84) + sqr(x127 - x134)) + 1/sqrt(sqr(x27 - x35) + sqr(x77 - x85) + 
     sqr(x127 - x135)) + 1/sqrt(sqr(x27 - x36) + sqr(x77 - x86) + sqr(x127 - 
     x136)) + 1/sqrt(sqr(x27 - x37) + sqr(x77 - x87) + sqr(x127 - x137)) + 1/
     sqrt(sqr(x27 - x38) + sqr(x77 - x88) + sqr(x127 - x138)) + 1/sqrt(sqr(x27
      - x39) + sqr(x77 - x89) + sqr(x127 - x139)) + 1/sqrt(sqr(x27 - x40) + 
     sqr(x77 - x90) + sqr(x127 - x140)) + 1/sqrt(sqr(x27 - x41) + sqr(x77 - x91
     ) + sqr(x127 - x141)) + 1/sqrt(sqr(x27 - x42) + sqr(x77 - x92) + sqr(x127
      - x142)) + 1/sqrt(sqr(x27 - x43) + sqr(x77 - x93) + sqr(x127 - x143)) + 1
     /sqrt(sqr(x27 - x44) + sqr(x77 - x94) + sqr(x127 - x144)) + 1/sqrt(sqr(x27
      - x45) + sqr(x77 - x95) + sqr(x127 - x145)) + 1/sqrt(sqr(x27 - x46) + 
     sqr(x77 - x96) + sqr(x127 - x146)) + 1/sqrt(sqr(x27 - x47) + sqr(x77 - x97
     ) + sqr(x127 - x147)) + 1/sqrt(sqr(x27 - x48) + sqr(x77 - x98) + sqr(x127
      - x148)) + 1/sqrt(sqr(x27 - x49) + sqr(x77 - x99) + sqr(x127 - x149)) + 1
     /sqrt(sqr(x27 - x50) + sqr(x77 - x100) + sqr(x127 - x150)) + 1/sqrt(sqr(
     x28 - x29) + sqr(x78 - x79) + sqr(x128 - x129)) + 1/sqrt(sqr(x28 - x30) + 
     sqr(x78 - x80) + sqr(x128 - x130)) + 1/sqrt(sqr(x28 - x31) + sqr(x78 - x81
     ) + sqr(x128 - x131)) + 1/sqrt(sqr(x28 - x32) + sqr(x78 - x82) + sqr(x128
      - x132)) + 1/sqrt(sqr(x28 - x33) + sqr(x78 - x83) + sqr(x128 - x133)) + 1
     /sqrt(sqr(x28 - x34) + sqr(x78 - x84) + sqr(x128 - x134)) + 1/sqrt(sqr(x28
      - x35) + sqr(x78 - x85) + sqr(x128 - x135)) + 1/sqrt(sqr(x28 - x36) + 
     sqr(x78 - x86) + sqr(x128 - x136)) + 1/sqrt(sqr(x28 - x37) + sqr(x78 - x87
     ) + sqr(x128 - x137)) + 1/sqrt(sqr(x28 - x38) + sqr(x78 - x88) + sqr(x128
      - x138)) + 1/sqrt(sqr(x28 - x39) + sqr(x78 - x89) + sqr(x128 - x139)) + 1
     /sqrt(sqr(x28 - x40) + sqr(x78 - x90) + sqr(x128 - x140)) + 1/sqrt(sqr(x28
      - x41) + sqr(x78 - x91) + sqr(x128 - x141)) + 1/sqrt(sqr(x28 - x42) + 
     sqr(x78 - x92) + sqr(x128 - x142)) + 1/sqrt(sqr(x28 - x43) + sqr(x78 - x93
     ) + sqr(x128 - x143)) + 1/sqrt(sqr(x28 - x44) + sqr(x78 - x94) + sqr(x128
      - x144)) + 1/sqrt(sqr(x28 - x45) + sqr(x78 - x95) + sqr(x128 - x145)) + 1
     /sqrt(sqr(x28 - x46) + sqr(x78 - x96) + sqr(x128 - x146)) + 1/sqrt(sqr(x28
      - x47) + sqr(x78 - x97) + sqr(x128 - x147)) + 1/sqrt(sqr(x28 - x48) + 
     sqr(x78 - x98) + sqr(x128 - x148)) + 1/sqrt(sqr(x28 - x49) + sqr(x78 - x99
     ) + sqr(x128 - x149)) + 1/sqrt(sqr(x28 - x50) + sqr(x78 - x100) + sqr(x128
      - x150)) + 1/sqrt(sqr(x29 - x30) + sqr(x79 - x80) + sqr(x129 - x130)) + 1
     /sqrt(sqr(x29 - x31) + sqr(x79 - x81) + sqr(x129 - x131)) + 1/sqrt(sqr(x29
      - x32) + sqr(x79 - x82) + sqr(x129 - x132)) + 1/sqrt(sqr(x29 - x33) + 
     sqr(x79 - x83) + sqr(x129 - x133)) + 1/sqrt(sqr(x29 - x34) + sqr(x79 - x84
     ) + sqr(x129 - x134)) + 1/sqrt(sqr(x29 - x35) + sqr(x79 - x85) + sqr(x129
      - x135)) + 1/sqrt(sqr(x29 - x36) + sqr(x79 - x86) + sqr(x129 - x136)) + 1
     /sqrt(sqr(x29 - x37) + sqr(x79 - x87) + sqr(x129 - x137)) + 1/sqrt(sqr(x29
      - x38) + sqr(x79 - x88) + sqr(x129 - x138)) + 1/sqrt(sqr(x29 - x39) + 
     sqr(x79 - x89) + sqr(x129 - x139)) + 1/sqrt(sqr(x29 - x40) + sqr(x79 - x90
     ) + sqr(x129 - x140)) + 1/sqrt(sqr(x29 - x41) + sqr(x79 - x91) + sqr(x129
      - x141)) + 1/sqrt(sqr(x29 - x42) + sqr(x79 - x92) + sqr(x129 - x142)) + 1
     /sqrt(sqr(x29 - x43) + sqr(x79 - x93) + sqr(x129 - x143)) + 1/sqrt(sqr(x29
      - x44) + sqr(x79 - x94) + sqr(x129 - x144)) + 1/sqrt(sqr(x29 - x45) + 
     sqr(x79 - x95) + sqr(x129 - x145)) + 1/sqrt(sqr(x29 - x46) + sqr(x79 - x96
     ) + sqr(x129 - x146)) + 1/sqrt(sqr(x29 - x47) + sqr(x79 - x97) + sqr(x129
      - x147)) + 1/sqrt(sqr(x29 - x48) + sqr(x79 - x98) + sqr(x129 - x148)) + 1
     /sqrt(sqr(x29 - x49) + sqr(x79 - x99) + sqr(x129 - x149)) + 1/sqrt(sqr(x29
      - x50) + sqr(x79 - x100) + sqr(x129 - x150)) + 1/sqrt(sqr(x30 - x31) + 
     sqr(x80 - x81) + sqr(x130 - x131)) + 1/sqrt(sqr(x30 - x32) + sqr(x80 - x82
     ) + sqr(x130 - x132)) + 1/sqrt(sqr(x30 - x33) + sqr(x80 - x83) + sqr(x130
      - x133)) + 1/sqrt(sqr(x30 - x34) + sqr(x80 - x84) + sqr(x130 - x134)) + 1
     /sqrt(sqr(x30 - x35) + sqr(x80 - x85) + sqr(x130 - x135)) + 1/sqrt(sqr(x30
      - x36) + sqr(x80 - x86) + sqr(x130 - x136)) + 1/sqrt(sqr(x30 - x37) + 
     sqr(x80 - x87) + sqr(x130 - x137)) + 1/sqrt(sqr(x30 - x38) + sqr(x80 - x88
     ) + sqr(x130 - x138)) + 1/sqrt(sqr(x30 - x39) + sqr(x80 - x89) + sqr(x130
      - x139)) + 1/sqrt(sqr(x30 - x40) + sqr(x80 - x90) + sqr(x130 - x140)) + 1
     /sqrt(sqr(x30 - x41) + sqr(x80 - x91) + sqr(x130 - x141)) + 1/sqrt(sqr(x30
      - x42) + sqr(x80 - x92) + sqr(x130 - x142)) + 1/sqrt(sqr(x30 - x43) + 
     sqr(x80 - x93) + sqr(x130 - x143)) + 1/sqrt(sqr(x30 - x44) + sqr(x80 - x94
     ) + sqr(x130 - x144)) + 1/sqrt(sqr(x30 - x45) + sqr(x80 - x95) + sqr(x130
      - x145)) + 1/sqrt(sqr(x30 - x46) + sqr(x80 - x96) + sqr(x130 - x146)) + 1
     /sqrt(sqr(x30 - x47) + sqr(x80 - x97) + sqr(x130 - x147)) + 1/sqrt(sqr(x30
      - x48) + sqr(x80 - x98) + sqr(x130 - x148)) + 1/sqrt(sqr(x30 - x49) + 
     sqr(x80 - x99) + sqr(x130 - x149)) + 1/sqrt(sqr(x30 - x50) + sqr(x80 - 
     x100) + sqr(x130 - x150)) + 1/sqrt(sqr(x31 - x32) + sqr(x81 - x82) + sqr(
     x131 - x132)) + 1/sqrt(sqr(x31 - x33) + sqr(x81 - x83) + sqr(x131 - x133))
      + 1/sqrt(sqr(x31 - x34) + sqr(x81 - x84) + sqr(x131 - x134)) + 1/sqrt(
     sqr(x31 - x35) + sqr(x81 - x85) + sqr(x131 - x135)) + 1/sqrt(sqr(x31 - x36
     ) + sqr(x81 - x86) + sqr(x131 - x136)) + 1/sqrt(sqr(x31 - x37) + sqr(x81
      - x87) + sqr(x131 - x137)) + 1/sqrt(sqr(x31 - x38) + sqr(x81 - x88) + 
     sqr(x131 - x138)) + 1/sqrt(sqr(x31 - x39) + sqr(x81 - x89) + sqr(x131 - 
     x139)) + 1/sqrt(sqr(x31 - x40) + sqr(x81 - x90) + sqr(x131 - x140)) + 1/
     sqrt(sqr(x31 - x41) + sqr(x81 - x91) + sqr(x131 - x141)) + 1/sqrt(sqr(x31
      - x42) + sqr(x81 - x92) + sqr(x131 - x142)) + 1/sqrt(sqr(x31 - x43) + 
     sqr(x81 - x93) + sqr(x131 - x143)) + 1/sqrt(sqr(x31 - x44) + sqr(x81 - x94
     ) + sqr(x131 - x144)) + 1/sqrt(sqr(x31 - x45) + sqr(x81 - x95) + sqr(x131
      - x145)) + 1/sqrt(sqr(x31 - x46) + sqr(x81 - x96) + sqr(x131 - x146)) + 1
     /sqrt(sqr(x31 - x47) + sqr(x81 - x97) + sqr(x131 - x147)) + 1/sqrt(sqr(x31
      - x48) + sqr(x81 - x98) + sqr(x131 - x148)) + 1/sqrt(sqr(x31 - x49) + 
     sqr(x81 - x99) + sqr(x131 - x149)) + 1/sqrt(sqr(x31 - x50) + sqr(x81 - 
     x100) + sqr(x131 - x150)) + 1/sqrt(sqr(x32 - x33) + sqr(x82 - x83) + sqr(
     x132 - x133)) + 1/sqrt(sqr(x32 - x34) + sqr(x82 - x84) + sqr(x132 - x134))
      + 1/sqrt(sqr(x32 - x35) + sqr(x82 - x85) + sqr(x132 - x135)) + 1/sqrt(
     sqr(x32 - x36) + sqr(x82 - x86) + sqr(x132 - x136)) + 1/sqrt(sqr(x32 - x37
     ) + sqr(x82 - x87) + sqr(x132 - x137)) + 1/sqrt(sqr(x32 - x38) + sqr(x82
      - x88) + sqr(x132 - x138)) + 1/sqrt(sqr(x32 - x39) + sqr(x82 - x89) + 
     sqr(x132 - x139)) + 1/sqrt(sqr(x32 - x40) + sqr(x82 - x90) + sqr(x132 - 
     x140)) + 1/sqrt(sqr(x32 - x41) + sqr(x82 - x91) + sqr(x132 - x141)) + 1/
     sqrt(sqr(x32 - x42) + sqr(x82 - x92) + sqr(x132 - x142)) + 1/sqrt(sqr(x32
      - x43) + sqr(x82 - x93) + sqr(x132 - x143)) + 1/sqrt(sqr(x32 - x44) + 
     sqr(x82 - x94) + sqr(x132 - x144)) + 1/sqrt(sqr(x32 - x45) + sqr(x82 - x95
     ) + sqr(x132 - x145)) + 1/sqrt(sqr(x32 - x46) + sqr(x82 - x96) + sqr(x132
      - x146)) + 1/sqrt(sqr(x32 - x47) + sqr(x82 - x97) + sqr(x132 - x147)) + 1
     /sqrt(sqr(x32 - x48) + sqr(x82 - x98) + sqr(x132 - x148)) + 1/sqrt(sqr(x32
      - x49) + sqr(x82 - x99) + sqr(x132 - x149)) + 1/sqrt(sqr(x32 - x50) + 
     sqr(x82 - x100) + sqr(x132 - x150)) + 1/sqrt(sqr(x33 - x34) + sqr(x83 - 
     x84) + sqr(x133 - x134)) + 1/sqrt(sqr(x33 - x35) + sqr(x83 - x85) + sqr(
     x133 - x135)) + 1/sqrt(sqr(x33 - x36) + sqr(x83 - x86) + sqr(x133 - x136))
      + 1/sqrt(sqr(x33 - x37) + sqr(x83 - x87) + sqr(x133 - x137)) + 1/sqrt(
     sqr(x33 - x38) + sqr(x83 - x88) + sqr(x133 - x138)) + 1/sqrt(sqr(x33 - x39
     ) + sqr(x83 - x89) + sqr(x133 - x139)) + 1/sqrt(sqr(x33 - x40) + sqr(x83
      - x90) + sqr(x133 - x140)) + 1/sqrt(sqr(x33 - x41) + sqr(x83 - x91) + 
     sqr(x133 - x141)) + 1/sqrt(sqr(x33 - x42) + sqr(x83 - x92) + sqr(x133 - 
     x142)) + 1/sqrt(sqr(x33 - x43) + sqr(x83 - x93) + sqr(x133 - x143)) + 1/
     sqrt(sqr(x33 - x44) + sqr(x83 - x94) + sqr(x133 - x144)) + 1/sqrt(sqr(x33
      - x45) + sqr(x83 - x95) + sqr(x133 - x145)) + 1/sqrt(sqr(x33 - x46) + 
     sqr(x83 - x96) + sqr(x133 - x146)) + 1/sqrt(sqr(x33 - x47) + sqr(x83 - x97
     ) + sqr(x133 - x147)) + 1/sqrt(sqr(x33 - x48) + sqr(x83 - x98) + sqr(x133
      - x148)) + 1/sqrt(sqr(x33 - x49) + sqr(x83 - x99) + sqr(x133 - x149)) + 1
     /sqrt(sqr(x33 - x50) + sqr(x83 - x100) + sqr(x133 - x150)) + 1/sqrt(sqr(
     x34 - x35) + sqr(x84 - x85) + sqr(x134 - x135)) + 1/sqrt(sqr(x34 - x36) + 
     sqr(x84 - x86) + sqr(x134 - x136)) + 1/sqrt(sqr(x34 - x37) + sqr(x84 - x87
     ) + sqr(x134 - x137)) + 1/sqrt(sqr(x34 - x38) + sqr(x84 - x88) + sqr(x134
      - x138)) + 1/sqrt(sqr(x34 - x39) + sqr(x84 - x89) + sqr(x134 - x139)) + 1
     /sqrt(sqr(x34 - x40) + sqr(x84 - x90) + sqr(x134 - x140)) + 1/sqrt(sqr(x34
      - x41) + sqr(x84 - x91) + sqr(x134 - x141)) + 1/sqrt(sqr(x34 - x42) + 
     sqr(x84 - x92) + sqr(x134 - x142)) + 1/sqrt(sqr(x34 - x43) + sqr(x84 - x93
     ) + sqr(x134 - x143)) + 1/sqrt(sqr(x34 - x44) + sqr(x84 - x94) + sqr(x134
      - x144)) + 1/sqrt(sqr(x34 - x45) + sqr(x84 - x95) + sqr(x134 - x145)) + 1
     /sqrt(sqr(x34 - x46) + sqr(x84 - x96) + sqr(x134 - x146)) + 1/sqrt(sqr(x34
      - x47) + sqr(x84 - x97) + sqr(x134 - x147)) + 1/sqrt(sqr(x34 - x48) + 
     sqr(x84 - x98) + sqr(x134 - x148)) + 1/sqrt(sqr(x34 - x49) + sqr(x84 - x99
     ) + sqr(x134 - x149)) + 1/sqrt(sqr(x34 - x50) + sqr(x84 - x100) + sqr(x134
      - x150)) + 1/sqrt(sqr(x35 - x36) + sqr(x85 - x86) + sqr(x135 - x136)) + 1
     /sqrt(sqr(x35 - x37) + sqr(x85 - x87) + sqr(x135 - x137)) + 1/sqrt(sqr(x35
      - x38) + sqr(x85 - x88) + sqr(x135 - x138)) + 1/sqrt(sqr(x35 - x39) + 
     sqr(x85 - x89) + sqr(x135 - x139)) + 1/sqrt(sqr(x35 - x40) + sqr(x85 - x90
     ) + sqr(x135 - x140)) + 1/sqrt(sqr(x35 - x41) + sqr(x85 - x91) + sqr(x135
      - x141)) + 1/sqrt(sqr(x35 - x42) + sqr(x85 - x92) + sqr(x135 - x142)) + 1
     /sqrt(sqr(x35 - x43) + sqr(x85 - x93) + sqr(x135 - x143)) + 1/sqrt(sqr(x35
      - x44) + sqr(x85 - x94) + sqr(x135 - x144)) + 1/sqrt(sqr(x35 - x45) + 
     sqr(x85 - x95) + sqr(x135 - x145)) + 1/sqrt(sqr(x35 - x46) + sqr(x85 - x96
     ) + sqr(x135 - x146)) + 1/sqrt(sqr(x35 - x47) + sqr(x85 - x97) + sqr(x135
      - x147)) + 1/sqrt(sqr(x35 - x48) + sqr(x85 - x98) + sqr(x135 - x148)) + 1
     /sqrt(sqr(x35 - x49) + sqr(x85 - x99) + sqr(x135 - x149)) + 1/sqrt(sqr(x35
      - x50) + sqr(x85 - x100) + sqr(x135 - x150)) + 1/sqrt(sqr(x36 - x37) + 
     sqr(x86 - x87) + sqr(x136 - x137)) + 1/sqrt(sqr(x36 - x38) + sqr(x86 - x88
     ) + sqr(x136 - x138)) + 1/sqrt(sqr(x36 - x39) + sqr(x86 - x89) + sqr(x136
      - x139)) + 1/sqrt(sqr(x36 - x40) + sqr(x86 - x90) + sqr(x136 - x140)) + 1
     /sqrt(sqr(x36 - x41) + sqr(x86 - x91) + sqr(x136 - x141)) + 1/sqrt(sqr(x36
      - x42) + sqr(x86 - x92) + sqr(x136 - x142)) + 1/sqrt(sqr(x36 - x43) + 
     sqr(x86 - x93) + sqr(x136 - x143)) + 1/sqrt(sqr(x36 - x44) + sqr(x86 - x94
     ) + sqr(x136 - x144)) + 1/sqrt(sqr(x36 - x45) + sqr(x86 - x95) + sqr(x136
      - x145)) + 1/sqrt(sqr(x36 - x46) + sqr(x86 - x96) + sqr(x136 - x146)) + 1
     /sqrt(sqr(x36 - x47) + sqr(x86 - x97) + sqr(x136 - x147)) + 1/sqrt(sqr(x36
      - x48) + sqr(x86 - x98) + sqr(x136 - x148)) + 1/sqrt(sqr(x36 - x49) + 
     sqr(x86 - x99) + sqr(x136 - x149)) + 1/sqrt(sqr(x36 - x50) + sqr(x86 - 
     x100) + sqr(x136 - x150)) + 1/sqrt(sqr(x37 - x38) + sqr(x87 - x88) + sqr(
     x137 - x138)) + 1/sqrt(sqr(x37 - x39) + sqr(x87 - x89) + sqr(x137 - x139))
      + 1/sqrt(sqr(x37 - x40) + sqr(x87 - x90) + sqr(x137 - x140)) + 1/sqrt(
     sqr(x37 - x41) + sqr(x87 - x91) + sqr(x137 - x141)) + 1/sqrt(sqr(x37 - x42
     ) + sqr(x87 - x92) + sqr(x137 - x142)) + 1/sqrt(sqr(x37 - x43) + sqr(x87
      - x93) + sqr(x137 - x143)) + 1/sqrt(sqr(x37 - x44) + sqr(x87 - x94) + 
     sqr(x137 - x144)) + 1/sqrt(sqr(x37 - x45) + sqr(x87 - x95) + sqr(x137 - 
     x145)) + 1/sqrt(sqr(x37 - x46) + sqr(x87 - x96) + sqr(x137 - x146)) + 1/
     sqrt(sqr(x37 - x47) + sqr(x87 - x97) + sqr(x137 - x147)) + 1/sqrt(sqr(x37
      - x48) + sqr(x87 - x98) + sqr(x137 - x148)) + 1/sqrt(sqr(x37 - x49) + 
     sqr(x87 - x99) + sqr(x137 - x149)) + 1/sqrt(sqr(x37 - x50) + sqr(x87 - 
     x100) + sqr(x137 - x150)) + 1/sqrt(sqr(x38 - x39) + sqr(x88 - x89) + sqr(
     x138 - x139)) + 1/sqrt(sqr(x38 - x40) + sqr(x88 - x90) + sqr(x138 - x140))
      + 1/sqrt(sqr(x38 - x41) + sqr(x88 - x91) + sqr(x138 - x141)) + 1/sqrt(
     sqr(x38 - x42) + sqr(x88 - x92) + sqr(x138 - x142)) + 1/sqrt(sqr(x38 - x43
     ) + sqr(x88 - x93) + sqr(x138 - x143)) + 1/sqrt(sqr(x38 - x44) + sqr(x88
      - x94) + sqr(x138 - x144)) + 1/sqrt(sqr(x38 - x45) + sqr(x88 - x95) + 
     sqr(x138 - x145)) + 1/sqrt(sqr(x38 - x46) + sqr(x88 - x96) + sqr(x138 - 
     x146)) + 1/sqrt(sqr(x38 - x47) + sqr(x88 - x97) + sqr(x138 - x147)) + 1/
     sqrt(sqr(x38 - x48) + sqr(x88 - x98) + sqr(x138 - x148)) + 1/sqrt(sqr(x38
      - x49) + sqr(x88 - x99) + sqr(x138 - x149)) + 1/sqrt(sqr(x38 - x50) + 
     sqr(x88 - x100) + sqr(x138 - x150)) + 1/sqrt(sqr(x39 - x40) + sqr(x89 - 
     x90) + sqr(x139 - x140)) + 1/sqrt(sqr(x39 - x41) + sqr(x89 - x91) + sqr(
     x139 - x141)) + 1/sqrt(sqr(x39 - x42) + sqr(x89 - x92) + sqr(x139 - x142))
      + 1/sqrt(sqr(x39 - x43) + sqr(x89 - x93) + sqr(x139 - x143)) + 1/sqrt(
     sqr(x39 - x44) + sqr(x89 - x94) + sqr(x139 - x144)) + 1/sqrt(sqr(x39 - x45
     ) + sqr(x89 - x95) + sqr(x139 - x145)) + 1/sqrt(sqr(x39 - x46) + sqr(x89
      - x96) + sqr(x139 - x146)) + 1/sqrt(sqr(x39 - x47) + sqr(x89 - x97) + 
     sqr(x139 - x147)) + 1/sqrt(sqr(x39 - x48) + sqr(x89 - x98) + sqr(x139 - 
     x148)) + 1/sqrt(sqr(x39 - x49) + sqr(x89 - x99) + sqr(x139 - x149)) + 1/
     sqrt(sqr(x39 - x50) + sqr(x89 - x100) + sqr(x139 - x150)) + 1/sqrt(sqr(x40
      - x41) + sqr(x90 - x91) + sqr(x140 - x141)) + 1/sqrt(sqr(x40 - x42) + 
     sqr(x90 - x92) + sqr(x140 - x142)) + 1/sqrt(sqr(x40 - x43) + sqr(x90 - x93
     ) + sqr(x140 - x143)) + 1/sqrt(sqr(x40 - x44) + sqr(x90 - x94) + sqr(x140
      - x144)) + 1/sqrt(sqr(x40 - x45) + sqr(x90 - x95) + sqr(x140 - x145)) + 1
     /sqrt(sqr(x40 - x46) + sqr(x90 - x96) + sqr(x140 - x146)) + 1/sqrt(sqr(x40
      - x47) + sqr(x90 - x97) + sqr(x140 - x147)) + 1/sqrt(sqr(x40 - x48) + 
     sqr(x90 - x98) + sqr(x140 - x148)) + 1/sqrt(sqr(x40 - x49) + sqr(x90 - x99
     ) + sqr(x140 - x149)) + 1/sqrt(sqr(x40 - x50) + sqr(x90 - x100) + sqr(x140
      - x150)) + 1/sqrt(sqr(x41 - x42) + sqr(x91 - x92) + sqr(x141 - x142)) + 1
     /sqrt(sqr(x41 - x43) + sqr(x91 - x93) + sqr(x141 - x143)) + 1/sqrt(sqr(x41
      - x44) + sqr(x91 - x94) + sqr(x141 - x144)) + 1/sqrt(sqr(x41 - x45) + 
     sqr(x91 - x95) + sqr(x141 - x145)) + 1/sqrt(sqr(x41 - x46) + sqr(x91 - x96
     ) + sqr(x141 - x146)) + 1/sqrt(sqr(x41 - x47) + sqr(x91 - x97) + sqr(x141
      - x147)) + 1/sqrt(sqr(x41 - x48) + sqr(x91 - x98) + sqr(x141 - x148)) + 1
     /sqrt(sqr(x41 - x49) + sqr(x91 - x99) + sqr(x141 - x149)) + 1/sqrt(sqr(x41
      - x50) + sqr(x91 - x100) + sqr(x141 - x150)) + 1/sqrt(sqr(x42 - x43) + 
     sqr(x92 - x93) + sqr(x142 - x143)) + 1/sqrt(sqr(x42 - x44) + sqr(x92 - x94
     ) + sqr(x142 - x144)) + 1/sqrt(sqr(x42 - x45) + sqr(x92 - x95) + sqr(x142
      - x145)) + 1/sqrt(sqr(x42 - x46) + sqr(x92 - x96) + sqr(x142 - x146)) + 1
     /sqrt(sqr(x42 - x47) + sqr(x92 - x97) + sqr(x142 - x147)) + 1/sqrt(sqr(x42
      - x48) + sqr(x92 - x98) + sqr(x142 - x148)) + 1/sqrt(sqr(x42 - x49) + 
     sqr(x92 - x99) + sqr(x142 - x149)) + 1/sqrt(sqr(x42 - x50) + sqr(x92 - 
     x100) + sqr(x142 - x150)) + 1/sqrt(sqr(x43 - x44) + sqr(x93 - x94) + sqr(
     x143 - x144)) + 1/sqrt(sqr(x43 - x45) + sqr(x93 - x95) + sqr(x143 - x145))
      + 1/sqrt(sqr(x43 - x46) + sqr(x93 - x96) + sqr(x143 - x146)) + 1/sqrt(
     sqr(x43 - x47) + sqr(x93 - x97) + sqr(x143 - x147)) + 1/sqrt(sqr(x43 - x48
     ) + sqr(x93 - x98) + sqr(x143 - x148)) + 1/sqrt(sqr(x43 - x49) + sqr(x93
      - x99) + sqr(x143 - x149)) + 1/sqrt(sqr(x43 - x50) + sqr(x93 - x100) + 
     sqr(x143 - x150)) + 1/sqrt(sqr(x44 - x45) + sqr(x94 - x95) + sqr(x144 - 
     x145)) + 1/sqrt(sqr(x44 - x46) + sqr(x94 - x96) + sqr(x144 - x146)) + 1/
     sqrt(sqr(x44 - x47) + sqr(x94 - x97) + sqr(x144 - x147)) + 1/sqrt(sqr(x44
      - x48) + sqr(x94 - x98) + sqr(x144 - x148)) + 1/sqrt(sqr(x44 - x49) + 
     sqr(x94 - x99) + sqr(x144 - x149)) + 1/sqrt(sqr(x44 - x50) + sqr(x94 - 
     x100) + sqr(x144 - x150)) + 1/sqrt(sqr(x45 - x46) + sqr(x95 - x96) + sqr(
     x145 - x146)) + 1/sqrt(sqr(x45 - x47) + sqr(x95 - x97) + sqr(x145 - x147))
      + 1/sqrt(sqr(x45 - x48) + sqr(x95 - x98) + sqr(x145 - x148)) + 1/sqrt(
     sqr(x45 - x49) + sqr(x95 - x99) + sqr(x145 - x149)) + 1/sqrt(sqr(x45 - x50
     ) + sqr(x95 - x100) + sqr(x145 - x150)) + 1/sqrt(sqr(x46 - x47) + sqr(x96
      - x97) + sqr(x146 - x147)) + 1/sqrt(sqr(x46 - x48) + sqr(x96 - x98) + 
     sqr(x146 - x148)) + 1/sqrt(sqr(x46 - x49) + sqr(x96 - x99) + sqr(x146 - 
     x149)) + 1/sqrt(sqr(x46 - x50) + sqr(x96 - x100) + sqr(x146 - x150)) + 1/
     sqrt(sqr(x47 - x48) + sqr(x97 - x98) + sqr(x147 - x148)) + 1/sqrt(sqr(x47
      - x49) + sqr(x97 - x99) + sqr(x147 - x149)) + 1/sqrt(sqr(x47 - x50) + 
     sqr(x97 - x100) + sqr(x147 - x150)) + 1/sqrt(sqr(x48 - x49) + sqr(x98 - 
     x99) + sqr(x148 - x149)) + 1/sqrt(sqr(x48 - x50) + sqr(x98 - x100) + sqr(
     x148 - x150)) + 1/sqrt(sqr(x49 - x50) + sqr(x99 - x100) + sqr(x149 - x150)
     )) + objvar =E= 0;

e2.. sqr(x1) + sqr(x51) + sqr(x101) =E= 1;

e3.. sqr(x2) + sqr(x52) + sqr(x102) =E= 1;

e4.. sqr(x3) + sqr(x53) + sqr(x103) =E= 1;

e5.. sqr(x4) + sqr(x54) + sqr(x104) =E= 1;

e6.. sqr(x5) + sqr(x55) + sqr(x105) =E= 1;

e7.. sqr(x6) + sqr(x56) + sqr(x106) =E= 1;

e8.. sqr(x7) + sqr(x57) + sqr(x107) =E= 1;

e9.. sqr(x8) + sqr(x58) + sqr(x108) =E= 1;

e10.. sqr(x9) + sqr(x59) + sqr(x109) =E= 1;

e11.. sqr(x10) + sqr(x60) + sqr(x110) =E= 1;

e12.. sqr(x11) + sqr(x61) + sqr(x111) =E= 1;

e13.. sqr(x12) + sqr(x62) + sqr(x112) =E= 1;

e14.. sqr(x13) + sqr(x63) + sqr(x113) =E= 1;

e15.. sqr(x14) + sqr(x64) + sqr(x114) =E= 1;

e16.. sqr(x15) + sqr(x65) + sqr(x115) =E= 1;

e17.. sqr(x16) + sqr(x66) + sqr(x116) =E= 1;

e18.. sqr(x17) + sqr(x67) + sqr(x117) =E= 1;

e19.. sqr(x18) + sqr(x68) + sqr(x118) =E= 1;

e20.. sqr(x19) + sqr(x69) + sqr(x119) =E= 1;

e21.. sqr(x20) + sqr(x70) + sqr(x120) =E= 1;

e22.. sqr(x21) + sqr(x71) + sqr(x121) =E= 1;

e23.. sqr(x22) + sqr(x72) + sqr(x122) =E= 1;

e24.. sqr(x23) + sqr(x73) + sqr(x123) =E= 1;

e25.. sqr(x24) + sqr(x74) + sqr(x124) =E= 1;

e26.. sqr(x25) + sqr(x75) + sqr(x125) =E= 1;

e27.. sqr(x26) + sqr(x76) + sqr(x126) =E= 1;

e28.. sqr(x27) + sqr(x77) + sqr(x127) =E= 1;

e29.. sqr(x28) + sqr(x78) + sqr(x128) =E= 1;

e30.. sqr(x29) + sqr(x79) + sqr(x129) =E= 1;

e31.. sqr(x30) + sqr(x80) + sqr(x130) =E= 1;

e32.. sqr(x31) + sqr(x81) + sqr(x131) =E= 1;

e33.. sqr(x32) + sqr(x82) + sqr(x132) =E= 1;

e34.. sqr(x33) + sqr(x83) + sqr(x133) =E= 1;

e35.. sqr(x34) + sqr(x84) + sqr(x134) =E= 1;

e36.. sqr(x35) + sqr(x85) + sqr(x135) =E= 1;

e37.. sqr(x36) + sqr(x86) + sqr(x136) =E= 1;

e38.. sqr(x37) + sqr(x87) + sqr(x137) =E= 1;

e39.. sqr(x38) + sqr(x88) + sqr(x138) =E= 1;

e40.. sqr(x39) + sqr(x89) + sqr(x139) =E= 1;

e41.. sqr(x40) + sqr(x90) + sqr(x140) =E= 1;

e42.. sqr(x41) + sqr(x91) + sqr(x141) =E= 1;

e43.. sqr(x42) + sqr(x92) + sqr(x142) =E= 1;

e44.. sqr(x43) + sqr(x93) + sqr(x143) =E= 1;

e45.. sqr(x44) + sqr(x94) + sqr(x144) =E= 1;

e46.. sqr(x45) + sqr(x95) + sqr(x145) =E= 1;

e47.. sqr(x46) + sqr(x96) + sqr(x146) =E= 1;

e48.. sqr(x47) + sqr(x97) + sqr(x147) =E= 1;

e49.. sqr(x48) + sqr(x98) + sqr(x148) =E= 1;

e50.. sqr(x49) + sqr(x99) + sqr(x149) =E= 1;

e51.. sqr(x50) + sqr(x100) + sqr(x150) =E= 1;

* set non default bounds


* set non default levels

x1.l = 0.412915943504718; 
x2.l = 0.3838430960645; 
x3.l = -0.875163658226184; 
x4.l = -0.245760628172242; 
x5.l = -0.0702993897778083; 
x6.l = 0.0513742837947186; 
x7.l = -0.530077754824334; 
x8.l = 0.612931927822947; 
x9.l = 0.0902147810017304; 
x10.l = -0.607029792519237; 
x11.l = 0.226602472891738; 
x12.l = -0.461415158914053; 
x13.l = 0.995212907982449; 
x14.l = 0.0543381770090441; 
x15.l = 0.361698274073243; 
x16.l = -0.068382870884331; 
x17.l = 0.519241857953898; 
x18.l = -0.00046974709253693; 
x19.l = -0.458480726824807; 
x20.l = -0.829624965949446; 
x21.l = -0.43975255775501; 
x22.l = -0.416033582294912; 
x23.l = 0.270123381197924; 
x24.l = 0.121889781143431; 
x25.l = -0.78773772401658; 
x26.l = 0.306186483969191; 
x27.l = 0.0972891428088812; 
x28.l = -0.1939877314045; 
x29.l = 0.114781428562405; 
x30.l = -0.0713821085130848; 
x31.l = 0.45566318842306; 
x32.l = -0.0159124038305379; 
x33.l = 0.400811568951403; 
x34.l = 0.69574264402932; 
x35.l = -0.0433905175011045; 
x36.l = -0.116090216013241; 
x37.l = -0.715907336995362; 
x38.l = -0.143124356348335; 
x39.l = -0.587140189822367; 
x40.l = -0.110020382752765; 
x41.l = -0.0171893128215058; 
x42.l = 0.677951797257343; 
x43.l = -0.361711133483903; 
x44.l = 0.62874865356649; 
x45.l = -0.500538790690622; 
x46.l = 0.111577365020531; 
x47.l = -0.223543148037772; 
x48.l = -0.685468159033124; 
x49.l = 0.0216693946753158; 
x50.l = -0.287417083131714; 
x51.l = 0.771020737311453; 
x52.l = -0.578255330779784; 
x53.l = -0.286641581254972; 
x54.l = 0.738368670585217; 
x55.l = 0.258809684877274; 
x56.l = 0.312323590525228; 
x57.l = 0.731225797811487; 
x58.l = -0.77729603067813; 
x59.l = 0.0404702297131352; 
x60.l = -0.00080350903065797; 
x61.l = -0.00268022003502952; 
x62.l = -0.248903894664738; 
x63.l = -0.0555034948358933; 
x64.l = -0.70455301525129; 
x65.l = 0.388543566592611; 
x66.l = -0.0823639193144952; 
x67.l = 0.812741649197509; 
x68.l = 0.928346955901181; 
x69.l = -0.820835634806987; 
x70.l = 0.356807331541876; 
x71.l = 0.533612477974662; 
x72.l = 0.561849569548856; 
x73.l = 0.293109181957298; 
x74.l = 0.167992724833905; 
x75.l = -0.493781355212929; 
x76.l = -0.549625073571091; 
x77.l = 0.803209607420834; 
x78.l = -0.33149728022952; 
x79.l = -0.700258736193931; 
x80.l = 0.203640999103717; 
x81.l = 0.379337496768655; 
x82.l = -0.000238458138369305; 
x83.l = 0.633095941850339; 
x84.l = -0.718290996434478; 
x85.l = 0.455524269739257; 
x86.l = 0.507154876398668; 
x87.l = -0.479694970009749; 
x88.l = -0.82678325367307; 
x89.l = -0.611612577688738; 
x90.l = 0.0254664921612672; 
x91.l = 0.0104141064003352; 
x92.l = 0.618411541089136; 
x93.l = 0.847347064020686; 
x94.l = 0.189334135530726; 
x95.l = 0.804834808110123; 
x96.l = 0.24546802245074; 
x97.l = -0.290924922947003; 
x98.l = -0.275117341525081; 
x99.l = -0.171863346376444; 
x100.l = 0.927914864005114; 
x101.l = -0.484796293545353; 
x102.l = -0.719920308109434; 
x103.l = -0.389775801218869; 
x104.l = 0.628023423081181; 
x105.l = 0.963366774811439; 
x106.l = 0.948585609086502; 
x107.l = -0.429332512693072; 
x108.l = -0.141863781661385; 
x109.l = 0.995099720528438; 
x110.l = -0.794678667995618; 
x111.l = 0.973983642419067; 
x112.l = 0.851553229308094; 
x113.l = -0.080440225298782; 
x114.l = -0.707567955195577; 
x115.l = 0.847471684123977; 
x116.l = 0.994253472593771; 
x117.l = -0.264270514072789; 
x118.l = -0.371714552858346; 
x119.l = 0.340623375241935; 
x120.l = 0.429430953741514; 
x121.l = 0.722409448510793; 
x122.l = 0.715011272359134; 
x123.l = 0.917126145294378; 
x124.l = -0.978223556072786; 
x125.l = 0.368305920947874; 
x126.l = -0.777278660157705; 
x127.l = 0.587698178692416; 
x128.l = 0.923297521530826; 
x129.l = -0.70460125322146; 
x130.l = 0.976439930599044; 
x131.l = 0.805278909609224; 
x132.l = 0.999873361252339; 
x133.l = 0.662223236233331; 
x134.l = 0.00046660503194269; 
x135.l = 0.8891652842242; 
x136.l = 0.854000581434843; 
x137.l = 0.507315898216836; 
x138.l = 0.544008152572778; 
x139.l = 0.530279598238789; 
x140.l = -0.993603025939402; 
x141.l = -0.999798016557648; 
x142.l = 0.397427385119971; 
x143.l = 0.388803303753084; 
x144.l = -0.754206679737828; 
x145.l = 0.318907275972674; 
x146.l = -0.96296206652661; 
x147.l = 0.930264021755997; 
x148.l = -0.674124507301071; 
x149.l = 0.984882443496022; 
x150.l = -0.237414038090479; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
