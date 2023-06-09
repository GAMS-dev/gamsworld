*  NLP written by GAMS Convert at 10/06/06 11:47:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        156      156        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        156        1      155        0
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
          ,objvar;

Positive Variables  x101,x111,x120,x128,x135,x141,x146,x150,x153,x155;

Equations  e1;


e1..  - ((-1 + x1*x1 + x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*x7 + x8*x8 + 
     x9*x9 + x10*x10)*(-1 + x1*x1 + x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*
     x7 + x8*x8 + x9*x9 + x10*x10) + (x1*x11 + x2*x12 + x3*x13 + x4*x14 + x5*
     x15 + x6*x16 + x7*x17 + x8*x18 + x9*x19 + x10*x20)*(x1*x11 + x2*x12 + x3*
     x13 + x4*x14 + x5*x15 + x6*x16 + x7*x17 + x8*x18 + x9*x19 + x10*x20) + (x1
     *x21 + x2*x22 + x3*x23 + x4*x24 + x5*x25 + x6*x26 + x7*x27 + x8*x28 + x9*
     x29 + x10*x30)*(x1*x21 + x2*x22 + x3*x23 + x4*x24 + x5*x25 + x6*x26 + x7*
     x27 + x8*x28 + x9*x29 + x10*x30) + (x1*x31 + x2*x32 + x3*x33 + x4*x34 + x5
     *x35 + x6*x36 + x7*x37 + x8*x38 + x9*x39 + x10*x40)*(x1*x31 + x2*x32 + x3*
     x33 + x4*x34 + x5*x35 + x6*x36 + x7*x37 + x8*x38 + x9*x39 + x10*x40) + (x1
     *x41 + x2*x42 + x3*x43 + x4*x44 + x5*x45 + x6*x46 + x7*x47 + x8*x48 + x9*
     x49 + x10*x50)*(x1*x41 + x2*x42 + x3*x43 + x4*x44 + x5*x45 + x6*x46 + x7*
     x47 + x8*x48 + x9*x49 + x10*x50) + (x1*x51 + x2*x52 + x3*x53 + x4*x54 + x5
     *x55 + x6*x56 + x7*x57 + x8*x58 + x9*x59 + x10*x60)*(x1*x51 + x2*x52 + x3*
     x53 + x4*x54 + x5*x55 + x6*x56 + x7*x57 + x8*x58 + x9*x59 + x10*x60) + (x1
     *x61 + x2*x62 + x3*x63 + x4*x64 + x5*x65 + x6*x66 + x7*x67 + x8*x68 + x9*
     x69 + x10*x70)*(x1*x61 + x2*x62 + x3*x63 + x4*x64 + x5*x65 + x6*x66 + x7*
     x67 + x8*x68 + x9*x69 + x10*x70) + (x1*x71 + x2*x72 + x3*x73 + x4*x74 + x5
     *x75 + x6*x76 + x7*x77 + x8*x78 + x9*x79 + x10*x80)*(x1*x71 + x2*x72 + x3*
     x73 + x4*x74 + x5*x75 + x6*x76 + x7*x77 + x8*x78 + x9*x79 + x10*x80) + (x1
     *x81 + x2*x82 + x3*x83 + x4*x84 + x5*x85 + x6*x86 + x7*x87 + x8*x88 + x9*
     x89 + x10*x90)*(x1*x81 + x2*x82 + x3*x83 + x4*x84 + x5*x85 + x6*x86 + x7*
     x87 + x8*x88 + x9*x89 + x10*x90) + (x1*x91 + x2*x92 + x3*x93 + x4*x94 + x5
     *x95 + x6*x96 + x7*x97 + x8*x98 + x9*x99 + x10*x100)*(x1*x91 + x2*x92 + x3
     *x93 + x4*x94 + x5*x95 + x6*x96 + x7*x97 + x8*x98 + x9*x99 + x10*x100) + (
     -1 + x11*x11 + x12*x12 + x13*x13 + x14*x14 + x15*x15 + x16*x16 + x17*x17
      + x18*x18 + x19*x19 + x20*x20)*(-1 + x11*x11 + x12*x12 + x13*x13 + x14*
     x14 + x15*x15 + x16*x16 + x17*x17 + x18*x18 + x19*x19 + x20*x20) + (x11*
     x21 + x12*x22 + x13*x23 + x14*x24 + x15*x25 + x16*x26 + x17*x27 + x18*x28
      + x19*x29 + x20*x30)*(x11*x21 + x12*x22 + x13*x23 + x14*x24 + x15*x25 + 
     x16*x26 + x17*x27 + x18*x28 + x19*x29 + x20*x30) + (x11*x31 + x12*x32 + 
     x13*x33 + x14*x34 + x15*x35 + x16*x36 + x17*x37 + x18*x38 + x19*x39 + x20*
     x40)*(x11*x31 + x12*x32 + x13*x33 + x14*x34 + x15*x35 + x16*x36 + x17*x37
      + x18*x38 + x19*x39 + x20*x40) + (x11*x41 + x12*x42 + x13*x43 + x14*x44
      + x15*x45 + x16*x46 + x17*x47 + x18*x48 + x19*x49 + x20*x50)*(x11*x41 + 
     x12*x42 + x13*x43 + x14*x44 + x15*x45 + x16*x46 + x17*x47 + x18*x48 + x19*
     x49 + x20*x50) + (x11*x51 + x12*x52 + x13*x53 + x14*x54 + x15*x55 + x16*
     x56 + x17*x57 + x18*x58 + x19*x59 + x20*x60)*(x11*x51 + x12*x52 + x13*x53
      + x14*x54 + x15*x55 + x16*x56 + x17*x57 + x18*x58 + x19*x59 + x20*x60) + 
     (x11*x61 + x12*x62 + x13*x63 + x14*x64 + x15*x65 + x16*x66 + x17*x67 + x18
     *x68 + x19*x69 + x20*x70)*(x11*x61 + x12*x62 + x13*x63 + x14*x64 + x15*x65
      + x16*x66 + x17*x67 + x18*x68 + x19*x69 + x20*x70) + (x11*x71 + x12*x72
      + x13*x73 + x14*x74 + x15*x75 + x16*x76 + x17*x77 + x18*x78 + x19*x79 + 
     x20*x80)*(x11*x71 + x12*x72 + x13*x73 + x14*x74 + x15*x75 + x16*x76 + x17*
     x77 + x18*x78 + x19*x79 + x20*x80) + (x11*x81 + x12*x82 + x13*x83 + x14*
     x84 + x15*x85 + x16*x86 + x17*x87 + x18*x88 + x19*x89 + x20*x90)*(x11*x81
      + x12*x82 + x13*x83 + x14*x84 + x15*x85 + x16*x86 + x17*x87 + x18*x88 + 
     x19*x89 + x20*x90) + (x11*x91 + x12*x92 + x13*x93 + x14*x94 + x15*x95 + 
     x16*x96 + x17*x97 + x18*x98 + x19*x99 + x20*x100)*(x11*x91 + x12*x92 + x13
     *x93 + x14*x94 + x15*x95 + x16*x96 + x17*x97 + x18*x98 + x19*x99 + x20*
     x100) + (-1 + x21*x21 + x22*x22 + x23*x23 + x24*x24 + x25*x25 + x26*x26 + 
     x27*x27 + x28*x28 + x29*x29 + x30*x30)*(-1 + x21*x21 + x22*x22 + x23*x23
      + x24*x24 + x25*x25 + x26*x26 + x27*x27 + x28*x28 + x29*x29 + x30*x30) + 
     (x21*x31 + x22*x32 + x23*x33 + x24*x34 + x25*x35 + x26*x36 + x27*x37 + x28
     *x38 + x29*x39 + x30*x40)*(x21*x31 + x22*x32 + x23*x33 + x24*x34 + x25*x35
      + x26*x36 + x27*x37 + x28*x38 + x29*x39 + x30*x40) + (x21*x41 + x22*x42
      + x23*x43 + x24*x44 + x25*x45 + x26*x46 + x27*x47 + x28*x48 + x29*x49 + 
     x30*x50)*(x21*x41 + x22*x42 + x23*x43 + x24*x44 + x25*x45 + x26*x46 + x27*
     x47 + x28*x48 + x29*x49 + x30*x50) + (x21*x51 + x22*x52 + x23*x53 + x24*
     x54 + x25*x55 + x26*x56 + x27*x57 + x28*x58 + x29*x59 + x30*x60)*(x21*x51
      + x22*x52 + x23*x53 + x24*x54 + x25*x55 + x26*x56 + x27*x57 + x28*x58 + 
     x29*x59 + x30*x60) + (x21*x61 + x22*x62 + x23*x63 + x24*x64 + x25*x65 + 
     x26*x66 + x27*x67 + x28*x68 + x29*x69 + x30*x70)*(x21*x61 + x22*x62 + x23*
     x63 + x24*x64 + x25*x65 + x26*x66 + x27*x67 + x28*x68 + x29*x69 + x30*x70)
      + (x21*x71 + x22*x72 + x23*x73 + x24*x74 + x25*x75 + x26*x76 + x27*x77 + 
     x28*x78 + x29*x79 + x30*x80)*(x21*x71 + x22*x72 + x23*x73 + x24*x74 + x25*
     x75 + x26*x76 + x27*x77 + x28*x78 + x29*x79 + x30*x80) + (x21*x81 + x22*
     x82 + x23*x83 + x24*x84 + x25*x85 + x26*x86 + x27*x87 + x28*x88 + x29*x89
      + x30*x90)*(x21*x81 + x22*x82 + x23*x83 + x24*x84 + x25*x85 + x26*x86 + 
     x27*x87 + x28*x88 + x29*x89 + x30*x90) + (x21*x91 + x22*x92 + x23*x93 + 
     x24*x94 + x25*x95 + x26*x96 + x27*x97 + x28*x98 + x29*x99 + x30*x100)*(x21
     *x91 + x22*x92 + x23*x93 + x24*x94 + x25*x95 + x26*x96 + x27*x97 + x28*x98
      + x29*x99 + x30*x100) + (-1 + x31*x31 + x32*x32 + x33*x33 + x34*x34 + x35
     *x35 + x36*x36 + x37*x37 + x38*x38 + x39*x39 + x40*x40)*(-1 + x31*x31 + 
     x32*x32 + x33*x33 + x34*x34 + x35*x35 + x36*x36 + x37*x37 + x38*x38 + x39*
     x39 + x40*x40) + (x31*x41 + x32*x42 + x33*x43 + x34*x44 + x35*x45 + x36*
     x46 + x37*x47 + x38*x48 + x39*x49 + x40*x50)*(x31*x41 + x32*x42 + x33*x43
      + x34*x44 + x35*x45 + x36*x46 + x37*x47 + x38*x48 + x39*x49 + x40*x50) + 
     (x31*x51 + x32*x52 + x33*x53 + x34*x54 + x35*x55 + x36*x56 + x37*x57 + x38
     *x58 + x39*x59 + x40*x60)*(x31*x51 + x32*x52 + x33*x53 + x34*x54 + x35*x55
      + x36*x56 + x37*x57 + x38*x58 + x39*x59 + x40*x60) + (x31*x61 + x32*x62
      + x33*x63 + x34*x64 + x35*x65 + x36*x66 + x37*x67 + x38*x68 + x39*x69 + 
     x40*x70)*(x31*x61 + x32*x62 + x33*x63 + x34*x64 + x35*x65 + x36*x66 + x37*
     x67 + x38*x68 + x39*x69 + x40*x70) + (x31*x71 + x32*x72 + x33*x73 + x34*
     x74 + x35*x75 + x36*x76 + x37*x77 + x38*x78 + x39*x79 + x40*x80)*(x31*x71
      + x32*x72 + x33*x73 + x34*x74 + x35*x75 + x36*x76 + x37*x77 + x38*x78 + 
     x39*x79 + x40*x80) + (x31*x81 + x32*x82 + x33*x83 + x34*x84 + x35*x85 + 
     x36*x86 + x37*x87 + x38*x88 + x39*x89 + x40*x90)*(x31*x81 + x32*x82 + x33*
     x83 + x34*x84 + x35*x85 + x36*x86 + x37*x87 + x38*x88 + x39*x89 + x40*x90)
      + (x31*x91 + x32*x92 + x33*x93 + x34*x94 + x35*x95 + x36*x96 + x37*x97 + 
     x38*x98 + x39*x99 + x40*x100)*(x31*x91 + x32*x92 + x33*x93 + x34*x94 + x35
     *x95 + x36*x96 + x37*x97 + x38*x98 + x39*x99 + x40*x100) + (-1 + x41*x41
      + x42*x42 + x43*x43 + x44*x44 + x45*x45 + x46*x46 + x47*x47 + x48*x48 + 
     x49*x49 + x50*x50)*(-1 + x41*x41 + x42*x42 + x43*x43 + x44*x44 + x45*x45
      + x46*x46 + x47*x47 + x48*x48 + x49*x49 + x50*x50) + (x41*x51 + x42*x52
      + x43*x53 + x44*x54 + x45*x55 + x46*x56 + x47*x57 + x48*x58 + x49*x59 + 
     x50*x60)*(x41*x51 + x42*x52 + x43*x53 + x44*x54 + x45*x55 + x46*x56 + x47*
     x57 + x48*x58 + x49*x59 + x50*x60) + (x41*x61 + x42*x62 + x43*x63 + x44*
     x64 + x45*x65 + x46*x66 + x47*x67 + x48*x68 + x49*x69 + x50*x70)*(x41*x61
      + x42*x62 + x43*x63 + x44*x64 + x45*x65 + x46*x66 + x47*x67 + x48*x68 + 
     x49*x69 + x50*x70) + (x41*x71 + x42*x72 + x43*x73 + x44*x74 + x45*x75 + 
     x46*x76 + x47*x77 + x48*x78 + x49*x79 + x50*x80)*(x41*x71 + x42*x72 + x43*
     x73 + x44*x74 + x45*x75 + x46*x76 + x47*x77 + x48*x78 + x49*x79 + x50*x80)
      + (x41*x81 + x42*x82 + x43*x83 + x44*x84 + x45*x85 + x46*x86 + x47*x87 + 
     x48*x88 + x49*x89 + x50*x90)*(x41*x81 + x42*x82 + x43*x83 + x44*x84 + x45*
     x85 + x46*x86 + x47*x87 + x48*x88 + x49*x89 + x50*x90) + (x41*x91 + x42*
     x92 + x43*x93 + x44*x94 + x45*x95 + x46*x96 + x47*x97 + x48*x98 + x49*x99
      + x50*x100)*(x41*x91 + x42*x92 + x43*x93 + x44*x94 + x45*x95 + x46*x96 + 
     x47*x97 + x48*x98 + x49*x99 + x50*x100) + (-1 + x51*x51 + x52*x52 + x53*
     x53 + x54*x54 + x55*x55 + x56*x56 + x57*x57 + x58*x58 + x59*x59 + x60*x60)
     *(-1 + x51*x51 + x52*x52 + x53*x53 + x54*x54 + x55*x55 + x56*x56 + x57*x57
      + x58*x58 + x59*x59 + x60*x60) + (x51*x61 + x52*x62 + x53*x63 + x54*x64
      + x55*x65 + x56*x66 + x57*x67 + x58*x68 + x59*x69 + x60*x70)*(x51*x61 + 
     x52*x62 + x53*x63 + x54*x64 + x55*x65 + x56*x66 + x57*x67 + x58*x68 + x59*
     x69 + x60*x70) + (x51*x71 + x52*x72 + x53*x73 + x54*x74 + x55*x75 + x56*
     x76 + x57*x77 + x58*x78 + x59*x79 + x60*x80)*(x51*x71 + x52*x72 + x53*x73
      + x54*x74 + x55*x75 + x56*x76 + x57*x77 + x58*x78 + x59*x79 + x60*x80) + 
     (x51*x81 + x52*x82 + x53*x83 + x54*x84 + x55*x85 + x56*x86 + x57*x87 + x58
     *x88 + x59*x89 + x60*x90)*(x51*x81 + x52*x82 + x53*x83 + x54*x84 + x55*x85
      + x56*x86 + x57*x87 + x58*x88 + x59*x89 + x60*x90) + (x51*x91 + x52*x92
      + x53*x93 + x54*x94 + x55*x95 + x56*x96 + x57*x97 + x58*x98 + x59*x99 + 
     x60*x100)*(x51*x91 + x52*x92 + x53*x93 + x54*x94 + x55*x95 + x56*x96 + x57
     *x97 + x58*x98 + x59*x99 + x60*x100) + (-1 + x61*x61 + x62*x62 + x63*x63
      + x64*x64 + x65*x65 + x66*x66 + x67*x67 + x68*x68 + x69*x69 + x70*x70)*(-
     1 + x61*x61 + x62*x62 + x63*x63 + x64*x64 + x65*x65 + x66*x66 + x67*x67 + 
     x68*x68 + x69*x69 + x70*x70) + (x61*x71 + x62*x72 + x63*x73 + x64*x74 + 
     x65*x75 + x66*x76 + x67*x77 + x68*x78 + x69*x79 + x70*x80)*(x61*x71 + x62*
     x72 + x63*x73 + x64*x74 + x65*x75 + x66*x76 + x67*x77 + x68*x78 + x69*x79
      + x70*x80) + (x61*x81 + x62*x82 + x63*x83 + x64*x84 + x65*x85 + x66*x86
      + x67*x87 + x68*x88 + x69*x89 + x70*x90)*(x61*x81 + x62*x82 + x63*x83 + 
     x64*x84 + x65*x85 + x66*x86 + x67*x87 + x68*x88 + x69*x89 + x70*x90) + (
     x61*x91 + x62*x92 + x63*x93 + x64*x94 + x65*x95 + x66*x96 + x67*x97 + x68*
     x98 + x69*x99 + x70*x100)*(x61*x91 + x62*x92 + x63*x93 + x64*x94 + x65*x95
      + x66*x96 + x67*x97 + x68*x98 + x69*x99 + x70*x100) + (-1 + x71*x71 + x72
     *x72 + x73*x73 + x74*x74 + x75*x75 + x76*x76 + x77*x77 + x78*x78 + x79*x79
      + x80*x80)*(-1 + x71*x71 + x72*x72 + x73*x73 + x74*x74 + x75*x75 + x76*
     x76 + x77*x77 + x78*x78 + x79*x79 + x80*x80) + (x71*x81 + x72*x82 + x73*
     x83 + x74*x84 + x75*x85 + x76*x86 + x77*x87 + x78*x88 + x79*x89 + x80*x90)
     *(x71*x81 + x72*x82 + x73*x83 + x74*x84 + x75*x85 + x76*x86 + x77*x87 + 
     x78*x88 + x79*x89 + x80*x90) + (x71*x91 + x72*x92 + x73*x93 + x74*x94 + 
     x75*x95 + x76*x96 + x77*x97 + x78*x98 + x79*x99 + x80*x100)*(x71*x91 + x72
     *x92 + x73*x93 + x74*x94 + x75*x95 + x76*x96 + x77*x97 + x78*x98 + x79*x99
      + x80*x100) + (-1 + x81*x81 + x82*x82 + x83*x83 + x84*x84 + x85*x85 + x86
     *x86 + x87*x87 + x88*x88 + x89*x89 + x90*x90)*(-1 + x81*x81 + x82*x82 + 
     x83*x83 + x84*x84 + x85*x85 + x86*x86 + x87*x87 + x88*x88 + x89*x89 + x90*
     x90) + (x81*x91 + x82*x92 + x83*x93 + x84*x94 + x85*x95 + x86*x96 + x87*
     x97 + x88*x98 + x89*x99 + x90*x100)*(x81*x91 + x82*x92 + x83*x93 + x84*x94
      + x85*x95 + x86*x96 + x87*x97 + x88*x98 + x89*x99 + x90*x100) + (-1 + x91
     *x91 + x92*x92 + x93*x93 + x94*x94 + x95*x95 + x96*x96 + x97*x97 + x98*x98
      + x99*x99 + x100*x100)*(-1 + x91*x91 + x92*x92 + x93*x93 + x94*x94 + x95*
     x95 + x96*x96 + x97*x97 + x98*x98 + x99*x99 + x100*x100) + (-0.2 + x1*x101
     )*(-0.2 + x1*x101) + (x1*x102 + x2*x111)*(x1*x102 + x2*x111) + (x1*x103 + 
     x2*x112 + x3*x120)*(x1*x103 + x2*x112 + x3*x120) + (x1*x104 + x2*x113 + x3
     *x121 + x4*x128)*(x1*x104 + x2*x113 + x3*x121 + x4*x128) + (x1*x105 + x2*
     x114 + x3*x122 + x4*x129 + x5*x135)*(x1*x105 + x2*x114 + x3*x122 + x4*x129
      + x5*x135) + (x1*x106 + x2*x115 + x3*x123 + x4*x130 + x5*x136 + x6*x141)*
     (x1*x106 + x2*x115 + x3*x123 + x4*x130 + x5*x136 + x6*x141) + (x1*x107 + 
     x2*x116 + x3*x124 + x4*x131 + x5*x137 + x6*x142 + x7*x146)*(x1*x107 + x2*
     x116 + x3*x124 + x4*x131 + x5*x137 + x6*x142 + x7*x146) + (x1*x108 + x2*
     x117 + x3*x125 + x4*x132 + x5*x138 + x6*x143 + x7*x147 + x8*x150)*(x1*x108
      + x2*x117 + x3*x125 + x4*x132 + x5*x138 + x6*x143 + x7*x147 + x8*x150) + 
     (x1*x109 + x2*x118 + x3*x126 + x4*x133 + x5*x139 + x6*x144 + x7*x148 + x8*
     x151 + x9*x153)*(x1*x109 + x2*x118 + x3*x126 + x4*x133 + x5*x139 + x6*x144
      + x7*x148 + x8*x151 + x9*x153) + (x1*x110 + x2*x119 + x3*x127 + x4*x134
      + x5*x140 + x6*x145 + x7*x149 + x8*x152 + x9*x154 + x10*x155)*(x1*x110 + 
     x2*x119 + x3*x127 + x4*x134 + x5*x140 + x6*x145 + x7*x149 + x8*x152 + x9*
     x154 + x10*x155) + (0.1 + x11*x101)*(0.1 + x11*x101) + (-0.4 + x11*x102 + 
     x12*x111)*(-0.4 + x11*x102 + x12*x111) + (0.1 + x11*x103 + x12*x112 + x13*
     x120)*(0.1 + x11*x103 + x12*x112 + x13*x120) + (x11*x104 + x12*x113 + x13*
     x121 + x14*x128)*(x11*x104 + x12*x113 + x13*x121 + x14*x128) + (x11*x105
      + x12*x114 + x13*x122 + x14*x129 + x15*x135)*(x11*x105 + x12*x114 + x13*
     x122 + x14*x129 + x15*x135) + (x11*x106 + x12*x115 + x13*x123 + x14*x130
      + x15*x136 + x16*x141)*(x11*x106 + x12*x115 + x13*x123 + x14*x130 + x15*
     x136 + x16*x141) + (x11*x107 + x12*x116 + x13*x124 + x14*x131 + x15*x137
      + x16*x142 + x17*x146)*(x11*x107 + x12*x116 + x13*x124 + x14*x131 + x15*
     x137 + x16*x142 + x17*x146) + (x11*x108 + x12*x117 + x13*x125 + x14*x132
      + x15*x138 + x16*x143 + x17*x147 + x18*x150)*(x11*x108 + x12*x117 + x13*
     x125 + x14*x132 + x15*x138 + x16*x143 + x17*x147 + x18*x150) + (x11*x109
      + x12*x118 + x13*x126 + x14*x133 + x15*x139 + x16*x144 + x17*x148 + x18*
     x151 + x19*x153)*(x11*x109 + x12*x118 + x13*x126 + x14*x133 + x15*x139 + 
     x16*x144 + x17*x148 + x18*x151 + x19*x153) + (x11*x110 + x12*x119 + x13*
     x127 + x14*x134 + x15*x140 + x16*x145 + x17*x149 + x18*x152 + x19*x154 + 
     x20*x155)*(x11*x110 + x12*x119 + x13*x127 + x14*x134 + x15*x140 + x16*x145
      + x17*x149 + x18*x152 + x19*x154 + x20*x155) + x21*x101*x21*x101 + (0.2
      + x21*x102 + x22*x111)*(0.2 + x21*x102 + x22*x111) + (-0.6 + x21*x103 + 
     x22*x112 + x23*x120)*(-0.6 + x21*x103 + x22*x112 + x23*x120) + (0.2 + x21*
     x104 + x22*x113 + x23*x121 + x24*x128)*(0.2 + x21*x104 + x22*x113 + x23*
     x121 + x24*x128) + (x21*x105 + x22*x114 + x23*x122 + x24*x129 + x25*x135)*
     (x21*x105 + x22*x114 + x23*x122 + x24*x129 + x25*x135) + (x21*x106 + x22*
     x115 + x23*x123 + x24*x130 + x25*x136 + x26*x141)*(x21*x106 + x22*x115 + 
     x23*x123 + x24*x130 + x25*x136 + x26*x141) + (x21*x107 + x22*x116 + x23*
     x124 + x24*x131 + x25*x137 + x26*x142 + x27*x146)*(x21*x107 + x22*x116 + 
     x23*x124 + x24*x131 + x25*x137 + x26*x142 + x27*x146) + (x21*x108 + x22*
     x117 + x23*x125 + x24*x132 + x25*x138 + x26*x143 + x27*x147 + x28*x150)*(
     x21*x108 + x22*x117 + x23*x125 + x24*x132 + x25*x138 + x26*x143 + x27*x147
      + x28*x150) + (x21*x109 + x22*x118 + x23*x126 + x24*x133 + x25*x139 + x26
     *x144 + x27*x148 + x28*x151 + x29*x153)*(x21*x109 + x22*x118 + x23*x126 + 
     x24*x133 + x25*x139 + x26*x144 + x27*x148 + x28*x151 + x29*x153) + (x21*
     x110 + x22*x119 + x23*x127 + x24*x134 + x25*x140 + x26*x145 + x27*x149 + 
     x28*x152 + x29*x154 + x30*x155)*(x21*x110 + x22*x119 + x23*x127 + x24*x134
      + x25*x140 + x26*x145 + x27*x149 + x28*x152 + x29*x154 + x30*x155) + x31*
     x101*x31*x101 + (x31*x102 + x32*x111)*(x31*x102 + x32*x111) + (0.3 + x31*
     x103 + x32*x112 + x33*x120)*(0.3 + x31*x103 + x32*x112 + x33*x120) + (-0.8
      + x31*x104 + x32*x113 + x33*x121 + x34*x128)*(-0.8 + x31*x104 + x32*x113
      + x33*x121 + x34*x128) + (0.3 + x31*x105 + x32*x114 + x33*x122 + x34*x129
      + x35*x135)*(0.3 + x31*x105 + x32*x114 + x33*x122 + x34*x129 + x35*x135)
      + (x31*x106 + x32*x115 + x33*x123 + x34*x130 + x35*x136 + x36*x141)*(x31*
     x106 + x32*x115 + x33*x123 + x34*x130 + x35*x136 + x36*x141) + (x31*x107
      + x32*x116 + x33*x124 + x34*x131 + x35*x137 + x36*x142 + x37*x146)*(x31*
     x107 + x32*x116 + x33*x124 + x34*x131 + x35*x137 + x36*x142 + x37*x146) + 
     (x31*x108 + x32*x117 + x33*x125 + x34*x132 + x35*x138 + x36*x143 + x37*
     x147 + x38*x150)*(x31*x108 + x32*x117 + x33*x125 + x34*x132 + x35*x138 + 
     x36*x143 + x37*x147 + x38*x150) + (x31*x109 + x32*x118 + x33*x126 + x34*
     x133 + x35*x139 + x36*x144 + x37*x148 + x38*x151 + x39*x153)*(x31*x109 + 
     x32*x118 + x33*x126 + x34*x133 + x35*x139 + x36*x144 + x37*x148 + x38*x151
      + x39*x153) + (x31*x110 + x32*x119 + x33*x127 + x34*x134 + x35*x140 + x36
     *x145 + x37*x149 + x38*x152 + x39*x154 + x40*x155)*(x31*x110 + x32*x119 + 
     x33*x127 + x34*x134 + x35*x140 + x36*x145 + x37*x149 + x38*x152 + x39*x154
      + x40*x155) + x41*x101*x41*x101 + (x41*x102 + x42*x111)*(x41*x102 + x42*
     x111) + (x41*x103 + x42*x112 + x43*x120)*(x41*x103 + x42*x112 + x43*x120)
      + (0.4 + x41*x104 + x42*x113 + x43*x121 + x44*x128)*(0.4 + x41*x104 + x42
     *x113 + x43*x121 + x44*x128) + (-1 + x41*x105 + x42*x114 + x43*x122 + x44*
     x129 + x45*x135)*(-1 + x41*x105 + x42*x114 + x43*x122 + x44*x129 + x45*
     x135) + (0.4 + x41*x106 + x42*x115 + x43*x123 + x44*x130 + x45*x136 + x46*
     x141)*(0.4 + x41*x106 + x42*x115 + x43*x123 + x44*x130 + x45*x136 + x46*
     x141) + (x41*x107 + x42*x116 + x43*x124 + x44*x131 + x45*x137 + x46*x142
      + x47*x146)*(x41*x107 + x42*x116 + x43*x124 + x44*x131 + x45*x137 + x46*
     x142 + x47*x146) + (x41*x108 + x42*x117 + x43*x125 + x44*x132 + x45*x138
      + x46*x143 + x47*x147 + x48*x150)*(x41*x108 + x42*x117 + x43*x125 + x44*
     x132 + x45*x138 + x46*x143 + x47*x147 + x48*x150) + (x41*x109 + x42*x118
      + x43*x126 + x44*x133 + x45*x139 + x46*x144 + x47*x148 + x48*x151 + x49*
     x153)*(x41*x109 + x42*x118 + x43*x126 + x44*x133 + x45*x139 + x46*x144 + 
     x47*x148 + x48*x151 + x49*x153) + (x41*x110 + x42*x119 + x43*x127 + x44*
     x134 + x45*x140 + x46*x145 + x47*x149 + x48*x152 + x49*x154 + x50*x155)*(
     x41*x110 + x42*x119 + x43*x127 + x44*x134 + x45*x140 + x46*x145 + x47*x149
      + x48*x152 + x49*x154 + x50*x155) + x51*x101*x51*x101 + (x51*x102 + x52*
     x111)*(x51*x102 + x52*x111) + (x51*x103 + x52*x112 + x53*x120)*(x51*x103
      + x52*x112 + x53*x120) + (x51*x104 + x52*x113 + x53*x121 + x54*x128)*(x51
     *x104 + x52*x113 + x53*x121 + x54*x128) + (0.5 + x51*x105 + x52*x114 + x53
     *x122 + x54*x129 + x55*x135)*(0.5 + x51*x105 + x52*x114 + x53*x122 + x54*
     x129 + x55*x135) + (-1.2 + x51*x106 + x52*x115 + x53*x123 + x54*x130 + x55
     *x136 + x56*x141)*(-1.2 + x51*x106 + x52*x115 + x53*x123 + x54*x130 + x55*
     x136 + x56*x141) + (0.5 + x51*x107 + x52*x116 + x53*x124 + x54*x131 + x55*
     x137 + x56*x142 + x57*x146)*(0.5 + x51*x107 + x52*x116 + x53*x124 + x54*
     x131 + x55*x137 + x56*x142 + x57*x146) + (x51*x108 + x52*x117 + x53*x125
      + x54*x132 + x55*x138 + x56*x143 + x57*x147 + x58*x150)*(x51*x108 + x52*
     x117 + x53*x125 + x54*x132 + x55*x138 + x56*x143 + x57*x147 + x58*x150) + 
     (x51*x109 + x52*x118 + x53*x126 + x54*x133 + x55*x139 + x56*x144 + x57*
     x148 + x58*x151 + x59*x153)*(x51*x109 + x52*x118 + x53*x126 + x54*x133 + 
     x55*x139 + x56*x144 + x57*x148 + x58*x151 + x59*x153) + (x51*x110 + x52*
     x119 + x53*x127 + x54*x134 + x55*x140 + x56*x145 + x57*x149 + x58*x152 + 
     x59*x154 + x60*x155)*(x51*x110 + x52*x119 + x53*x127 + x54*x134 + x55*x140
      + x56*x145 + x57*x149 + x58*x152 + x59*x154 + x60*x155) + x61*x101*x61*
     x101 + (x61*x102 + x62*x111)*(x61*x102 + x62*x111) + (x61*x103 + x62*x112
      + x63*x120)*(x61*x103 + x62*x112 + x63*x120) + (x61*x104 + x62*x113 + x63
     *x121 + x64*x128)*(x61*x104 + x62*x113 + x63*x121 + x64*x128) + (x61*x105
      + x62*x114 + x63*x122 + x64*x129 + x65*x135)*(x61*x105 + x62*x114 + x63*
     x122 + x64*x129 + x65*x135) + (0.6 + x61*x106 + x62*x115 + x63*x123 + x64*
     x130 + x65*x136 + x66*x141)*(0.6 + x61*x106 + x62*x115 + x63*x123 + x64*
     x130 + x65*x136 + x66*x141) + (-1.4 + x61*x107 + x62*x116 + x63*x124 + x64
     *x131 + x65*x137 + x66*x142 + x67*x146)*(-1.4 + x61*x107 + x62*x116 + x63*
     x124 + x64*x131 + x65*x137 + x66*x142 + x67*x146) + (0.6 + x61*x108 + x62*
     x117 + x63*x125 + x64*x132 + x65*x138 + x66*x143 + x67*x147 + x68*x150)*(
     0.6 + x61*x108 + x62*x117 + x63*x125 + x64*x132 + x65*x138 + x66*x143 + 
     x67*x147 + x68*x150) + (x61*x109 + x62*x118 + x63*x126 + x64*x133 + x65*
     x139 + x66*x144 + x67*x148 + x68*x151 + x69*x153)*(x61*x109 + x62*x118 + 
     x63*x126 + x64*x133 + x65*x139 + x66*x144 + x67*x148 + x68*x151 + x69*x153
     ) + (x61*x110 + x62*x119 + x63*x127 + x64*x134 + x65*x140 + x66*x145 + x67
     *x149 + x68*x152 + x69*x154 + x70*x155)*(x61*x110 + x62*x119 + x63*x127 + 
     x64*x134 + x65*x140 + x66*x145 + x67*x149 + x68*x152 + x69*x154 + x70*x155
     ) + x71*x101*x71*x101 + (x71*x102 + x72*x111)*(x71*x102 + x72*x111) + (x71
     *x103 + x72*x112 + x73*x120)*(x71*x103 + x72*x112 + x73*x120) + (x71*x104
      + x72*x113 + x73*x121 + x74*x128)*(x71*x104 + x72*x113 + x73*x121 + x74*
     x128) + (x71*x105 + x72*x114 + x73*x122 + x74*x129 + x75*x135)*(x71*x105
      + x72*x114 + x73*x122 + x74*x129 + x75*x135) + (x71*x106 + x72*x115 + x73
     *x123 + x74*x130 + x75*x136 + x76*x141)*(x71*x106 + x72*x115 + x73*x123 + 
     x74*x130 + x75*x136 + x76*x141) + (0.7 + x71*x107 + x72*x116 + x73*x124 + 
     x74*x131 + x75*x137 + x76*x142 + x77*x146)*(0.7 + x71*x107 + x72*x116 + 
     x73*x124 + x74*x131 + x75*x137 + x76*x142 + x77*x146) + (-1.6 + x71*x108
      + x72*x117 + x73*x125 + x74*x132 + x75*x138 + x76*x143 + x77*x147 + x78*
     x150)*(-1.6 + x71*x108 + x72*x117 + x73*x125 + x74*x132 + x75*x138 + x76*
     x143 + x77*x147 + x78*x150) + (0.7 + x71*x109 + x72*x118 + x73*x126 + x74*
     x133 + x75*x139 + x76*x144 + x77*x148 + x78*x151 + x79*x153)*(0.7 + x71*
     x109 + x72*x118 + x73*x126 + x74*x133 + x75*x139 + x76*x144 + x77*x148 + 
     x78*x151 + x79*x153) + (x71*x110 + x72*x119 + x73*x127 + x74*x134 + x75*
     x140 + x76*x145 + x77*x149 + x78*x152 + x79*x154 + x80*x155)*(x71*x110 + 
     x72*x119 + x73*x127 + x74*x134 + x75*x140 + x76*x145 + x77*x149 + x78*x152
      + x79*x154 + x80*x155) + x81*x101*x81*x101 + (x81*x102 + x82*x111)*(x81*
     x102 + x82*x111) + (x81*x103 + x82*x112 + x83*x120)*(x81*x103 + x82*x112
      + x83*x120) + (x81*x104 + x82*x113 + x83*x121 + x84*x128)*(x81*x104 + x82
     *x113 + x83*x121 + x84*x128) + (x81*x105 + x82*x114 + x83*x122 + x84*x129
      + x85*x135)*(x81*x105 + x82*x114 + x83*x122 + x84*x129 + x85*x135) + (x81
     *x106 + x82*x115 + x83*x123 + x84*x130 + x85*x136 + x86*x141)*(x81*x106 + 
     x82*x115 + x83*x123 + x84*x130 + x85*x136 + x86*x141) + (x81*x107 + x82*
     x116 + x83*x124 + x84*x131 + x85*x137 + x86*x142 + x87*x146)*(x81*x107 + 
     x82*x116 + x83*x124 + x84*x131 + x85*x137 + x86*x142 + x87*x146) + (0.8 + 
     x81*x108 + x82*x117 + x83*x125 + x84*x132 + x85*x138 + x86*x143 + x87*x147
      + x88*x150)*(0.8 + x81*x108 + x82*x117 + x83*x125 + x84*x132 + x85*x138
      + x86*x143 + x87*x147 + x88*x150) + (-1.8 + x81*x109 + x82*x118 + x83*
     x126 + x84*x133 + x85*x139 + x86*x144 + x87*x148 + x88*x151 + x89*x153)*(-
     1.8 + x81*x109 + x82*x118 + x83*x126 + x84*x133 + x85*x139 + x86*x144 + 
     x87*x148 + x88*x151 + x89*x153) + (0.8 + x81*x110 + x82*x119 + x83*x127 + 
     x84*x134 + x85*x140 + x86*x145 + x87*x149 + x88*x152 + x89*x154 + x90*x155
     )*(0.8 + x81*x110 + x82*x119 + x83*x127 + x84*x134 + x85*x140 + x86*x145
      + x87*x149 + x88*x152 + x89*x154 + x90*x155) + x91*x101*x91*x101 + (x91*
     x102 + x92*x111)*(x91*x102 + x92*x111) + (x91*x103 + x92*x112 + x93*x120)*
     (x91*x103 + x92*x112 + x93*x120) + (x91*x104 + x92*x113 + x93*x121 + x94*
     x128)*(x91*x104 + x92*x113 + x93*x121 + x94*x128) + (x91*x105 + x92*x114
      + x93*x122 + x94*x129 + x95*x135)*(x91*x105 + x92*x114 + x93*x122 + x94*
     x129 + x95*x135) + (x91*x106 + x92*x115 + x93*x123 + x94*x130 + x95*x136
      + x96*x141)*(x91*x106 + x92*x115 + x93*x123 + x94*x130 + x95*x136 + x96*
     x141) + (x91*x107 + x92*x116 + x93*x124 + x94*x131 + x95*x137 + x96*x142
      + x97*x146)*(x91*x107 + x92*x116 + x93*x124 + x94*x131 + x95*x137 + x96*
     x142 + x97*x146) + (x91*x108 + x92*x117 + x93*x125 + x94*x132 + x95*x138
      + x96*x143 + x97*x147 + x98*x150)*(x91*x108 + x92*x117 + x93*x125 + x94*
     x132 + x95*x138 + x96*x143 + x97*x147 + x98*x150) + (0.9 + x91*x109 + x92*
     x118 + x93*x126 + x94*x133 + x95*x139 + x96*x144 + x97*x148 + x98*x151 + 
     x99*x153)*(0.9 + x91*x109 + x92*x118 + x93*x126 + x94*x133 + x95*x139 + 
     x96*x144 + x97*x148 + x98*x151 + x99*x153) + (-20 + x91*x110 + x92*x119 + 
     x93*x127 + x94*x134 + x95*x140 + x96*x145 + x97*x149 + x98*x152 + x99*x154
      + x100*x155)*(-20 + x91*x110 + x92*x119 + x93*x127 + x94*x134 + x95*x140
      + x96*x145 + x97*x149 + x98*x152 + x99*x154 + x100*x155)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x12.l = 1; 
x23.l = 1; 
x34.l = 1; 
x45.l = 1; 
x56.l = 1; 
x67.l = 1; 
x78.l = 1; 
x89.l = 1; 
x100.l = 1; 
x101.l = 0.2; 
x111.l = 0.4; 
x112.l = -0.1; 
x120.l = 0.6; 
x121.l = -0.2; 
x128.l = 0.8; 
x129.l = -0.3; 
x135.l = 1; 
x136.l = -0.4; 
x141.l = 1.2; 
x142.l = -0.5; 
x146.l = 1.4; 
x147.l = -0.6; 
x150.l = 1.6; 
x151.l = -0.7; 
x153.l = 1.8; 
x154.l = -0.8; 
x155.l = 20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
