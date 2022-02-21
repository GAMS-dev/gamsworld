*  NLP written by GAMS Convert at 10/06/06 11:32:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        111      111        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        111        1      110        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106,x107,x108,x109,x110;

Equations  e1;


e1..  - (sqr((-1) + x2*x2*x1 + x3*x3*x12 + x4*x4*x23 + x5*x5*x34 + x6*x6*x45 + 
     x7*x7*x56 + x8*x8*x67 + x9*x9*x78 + x10*x10*x89 + x11*x11*x100) + sqr((-1)
      + x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*x7 + x8*x8 + x9*x9 + x10*x10
      + x11*x11) + sqr(x2*x13*x1 + x3*x14*x12 + x4*x15*x23 + x5*x16*x34 + x6*
     x17*x45 + x7*x18*x56 + x8*x19*x67 + x9*x20*x78 + x10*x21*x89 + x11*x22*
     x100) + sqr(x2*x13 + x3*x14 + x4*x15 + x5*x16 + x6*x17 + x7*x18 + x8*x19
      + x9*x20 + x10*x21 + x11*x22) + sqr((-2) + x13*x13*x1 + x14*x14*x12 + x15
     *x15*x23 + x16*x16*x34 + x17*x17*x45 + x18*x18*x56 + x19*x19*x67 + x20*x20
     *x78 + x21*x21*x89 + x22*x22*x100) + sqr((-1) + x13*x13 + x14*x14 + x15*
     x15 + x16*x16 + x17*x17 + x18*x18 + x19*x19 + x20*x20 + x21*x21 + x22*x22)
      + sqr(x2*x24*x1 + x3*x25*x12 + x4*x26*x23 + x5*x27*x34 + x6*x28*x45 + x7*
     x29*x56 + x8*x30*x67 + x9*x31*x78 + x10*x32*x89 + x11*x33*x100) + sqr(x2*
     x24 + x3*x25 + x4*x26 + x5*x27 + x6*x28 + x7*x29 + x8*x30 + x9*x31 + x10*
     x32 + x11*x33) + sqr(x13*x24*x1 + x14*x25*x12 + x15*x26*x23 + x16*x27*x34
      + x17*x28*x45 + x18*x29*x56 + x19*x30*x67 + x20*x31*x78 + x21*x32*x89 + 
     x22*x33*x100) + sqr(x13*x24 + x14*x25 + x15*x26 + x16*x27 + x17*x28 + x18*
     x29 + x19*x30 + x20*x31 + x21*x32 + x22*x33) + sqr((-3) + x24*x24*x1 + x25
     *x25*x12 + x26*x26*x23 + x27*x27*x34 + x28*x28*x45 + x29*x29*x56 + x30*x30
     *x67 + x31*x31*x78 + x32*x32*x89 + x33*x33*x100) + sqr((-1) + x24*x24 + 
     x25*x25 + x26*x26 + x27*x27 + x28*x28 + x29*x29 + x30*x30 + x31*x31 + x32*
     x32 + x33*x33) + sqr(x2*x35*x1 + x3*x36*x12 + x4*x37*x23 + x5*x38*x34 + x6
     *x39*x45 + x7*x40*x56 + x8*x41*x67 + x9*x42*x78 + x10*x43*x89 + x11*x44*
     x100) + sqr(x2*x35 + x3*x36 + x4*x37 + x5*x38 + x6*x39 + x7*x40 + x8*x41
      + x9*x42 + x10*x43 + x11*x44) + sqr(x13*x35*x1 + x14*x36*x12 + x15*x37*
     x23 + x16*x38*x34 + x17*x39*x45 + x18*x40*x56 + x19*x41*x67 + x20*x42*x78
      + x21*x43*x89 + x22*x44*x100) + sqr(x13*x35 + x14*x36 + x15*x37 + x16*x38
      + x17*x39 + x18*x40 + x19*x41 + x20*x42 + x21*x43 + x22*x44) + sqr(x24*
     x35*x1 + x25*x36*x12 + x26*x37*x23 + x27*x38*x34 + x28*x39*x45 + x29*x40*
     x56 + x30*x41*x67 + x31*x42*x78 + x32*x43*x89 + x33*x44*x100) + sqr(x24*
     x35 + x25*x36 + x26*x37 + x27*x38 + x28*x39 + x29*x40 + x30*x41 + x31*x42
      + x32*x43 + x33*x44) + sqr((-4) + x35*x35*x1 + x36*x36*x12 + x37*x37*x23
      + x38*x38*x34 + x39*x39*x45 + x40*x40*x56 + x41*x41*x67 + x42*x42*x78 + 
     x43*x43*x89 + x44*x44*x100) + sqr((-1) + x35*x35 + x36*x36 + x37*x37 + x38
     *x38 + x39*x39 + x40*x40 + x41*x41 + x42*x42 + x43*x43 + x44*x44) + sqr(x2
     *x46*x1 + x3*x47*x12 + x4*x48*x23 + x5*x49*x34 + x6*x50*x45 + x7*x51*x56
      + x8*x52*x67 + x9*x53*x78 + x10*x54*x89 + x11*x55*x100) + sqr(x2*x46 + x3
     *x47 + x4*x48 + x5*x49 + x6*x50 + x7*x51 + x8*x52 + x9*x53 + x10*x54 + x11
     *x55) + sqr(x13*x46*x1 + x14*x47*x12 + x15*x48*x23 + x16*x49*x34 + x17*x50
     *x45 + x18*x51*x56 + x19*x52*x67 + x20*x53*x78 + x21*x54*x89 + x22*x55*
     x100) + sqr(x13*x46 + x14*x47 + x15*x48 + x16*x49 + x17*x50 + x18*x51 + 
     x19*x52 + x20*x53 + x21*x54 + x22*x55) + sqr(x24*x46*x1 + x25*x47*x12 + 
     x26*x48*x23 + x27*x49*x34 + x28*x50*x45 + x29*x51*x56 + x30*x52*x67 + x31*
     x53*x78 + x32*x54*x89 + x33*x55*x100) + sqr(x24*x46 + x25*x47 + x26*x48 + 
     x27*x49 + x28*x50 + x29*x51 + x30*x52 + x31*x53 + x32*x54 + x33*x55) + 
     sqr(x35*x46*x1 + x36*x47*x12 + x37*x48*x23 + x38*x49*x34 + x39*x50*x45 + 
     x40*x51*x56 + x41*x52*x67 + x42*x53*x78 + x43*x54*x89 + x44*x55*x100) + 
     sqr(x35*x46 + x36*x47 + x37*x48 + x38*x49 + x39*x50 + x40*x51 + x41*x52 + 
     x42*x53 + x43*x54 + x44*x55) + sqr((-5) + x46*x46*x1 + x47*x47*x12 + x48*
     x48*x23 + x49*x49*x34 + x50*x50*x45 + x51*x51*x56 + x52*x52*x67 + x53*x53*
     x78 + x54*x54*x89 + x55*x55*x100) + sqr((-1) + x46*x46 + x47*x47 + x48*x48
      + x49*x49 + x50*x50 + x51*x51 + x52*x52 + x53*x53 + x54*x54 + x55*x55) + 
     sqr(x2*x57*x1 + x3*x58*x12 + x4*x59*x23 + x5*x60*x34 + x6*x61*x45 + x7*x62
     *x56 + x8*x63*x67 + x9*x64*x78 + x10*x65*x89 + x11*x66*x100) + sqr(x2*x57
      + x3*x58 + x4*x59 + x5*x60 + x6*x61 + x7*x62 + x8*x63 + x9*x64 + x10*x65
      + x11*x66) + sqr(x13*x57*x1 + x14*x58*x12 + x15*x59*x23 + x16*x60*x34 + 
     x17*x61*x45 + x18*x62*x56 + x19*x63*x67 + x20*x64*x78 + x21*x65*x89 + x22*
     x66*x100) + sqr(x13*x57 + x14*x58 + x15*x59 + x16*x60 + x17*x61 + x18*x62
      + x19*x63 + x20*x64 + x21*x65 + x22*x66) + sqr(x24*x57*x1 + x25*x58*x12
      + x26*x59*x23 + x27*x60*x34 + x28*x61*x45 + x29*x62*x56 + x30*x63*x67 + 
     x31*x64*x78 + x32*x65*x89 + x33*x66*x100) + sqr(x24*x57 + x25*x58 + x26*
     x59 + x27*x60 + x28*x61 + x29*x62 + x30*x63 + x31*x64 + x32*x65 + x33*x66)
      + sqr(x35*x57*x1 + x36*x58*x12 + x37*x59*x23 + x38*x60*x34 + x39*x61*x45
      + x40*x62*x56 + x41*x63*x67 + x42*x64*x78 + x43*x65*x89 + x44*x66*x100)
      + sqr(x35*x57 + x36*x58 + x37*x59 + x38*x60 + x39*x61 + x40*x62 + x41*x63
      + x42*x64 + x43*x65 + x44*x66) + sqr(x46*x57*x1 + x47*x58*x12 + x48*x59*
     x23 + x49*x60*x34 + x50*x61*x45 + x51*x62*x56 + x52*x63*x67 + x53*x64*x78
      + x54*x65*x89 + x55*x66*x100) + sqr(x46*x57 + x47*x58 + x48*x59 + x49*x60
      + x50*x61 + x51*x62 + x52*x63 + x53*x64 + x54*x65 + x55*x66) + sqr((-6)
      + x57*x57*x1 + x58*x58*x12 + x59*x59*x23 + x60*x60*x34 + x61*x61*x45 + 
     x62*x62*x56 + x63*x63*x67 + x64*x64*x78 + x65*x65*x89 + x66*x66*x100) + 
     sqr((-1) + x57*x57 + x58*x58 + x59*x59 + x60*x60 + x61*x61 + x62*x62 + x63
     *x63 + x64*x64 + x65*x65 + x66*x66) + sqr(x2*x68*x1 + x3*x69*x12 + x4*x70*
     x23 + x5*x71*x34 + x6*x72*x45 + x7*x73*x56 + x8*x74*x67 + x9*x75*x78 + x10
     *x76*x89 + x11*x77*x100) + sqr(x2*x68 + x3*x69 + x4*x70 + x5*x71 + x6*x72
      + x7*x73 + x8*x74 + x9*x75 + x10*x76 + x11*x77) + sqr(x13*x68*x1 + x14*
     x69*x12 + x15*x70*x23 + x16*x71*x34 + x17*x72*x45 + x18*x73*x56 + x19*x74*
     x67 + x20*x75*x78 + x21*x76*x89 + x22*x77*x100) + sqr(x13*x68 + x14*x69 + 
     x15*x70 + x16*x71 + x17*x72 + x18*x73 + x19*x74 + x20*x75 + x21*x76 + x22*
     x77) + sqr(x24*x68*x1 + x25*x69*x12 + x26*x70*x23 + x27*x71*x34 + x28*x72*
     x45 + x29*x73*x56 + x30*x74*x67 + x31*x75*x78 + x32*x76*x89 + x33*x77*x100
     ) + sqr(x24*x68 + x25*x69 + x26*x70 + x27*x71 + x28*x72 + x29*x73 + x30*
     x74 + x31*x75 + x32*x76 + x33*x77) + sqr(x35*x68*x1 + x36*x69*x12 + x37*
     x70*x23 + x38*x71*x34 + x39*x72*x45 + x40*x73*x56 + x41*x74*x67 + x42*x75*
     x78 + x43*x76*x89 + x44*x77*x100) + sqr(x35*x68 + x36*x69 + x37*x70 + x38*
     x71 + x39*x72 + x40*x73 + x41*x74 + x42*x75 + x43*x76 + x44*x77) + sqr(x46
     *x68*x1 + x47*x69*x12 + x48*x70*x23 + x49*x71*x34 + x50*x72*x45 + x51*x73*
     x56 + x52*x74*x67 + x53*x75*x78 + x54*x76*x89 + x55*x77*x100) + sqr(x46*
     x68 + x47*x69 + x48*x70 + x49*x71 + x50*x72 + x51*x73 + x52*x74 + x53*x75
      + x54*x76 + x55*x77) + sqr(x57*x68*x1 + x58*x69*x12 + x59*x70*x23 + x60*
     x71*x34 + x61*x72*x45 + x62*x73*x56 + x63*x74*x67 + x64*x75*x78 + x65*x76*
     x89 + x66*x77*x100) + sqr(x57*x68 + x58*x69 + x59*x70 + x60*x71 + x61*x72
      + x62*x73 + x63*x74 + x64*x75 + x65*x76 + x66*x77) + sqr((-7) + x68*x68*
     x1 + x69*x69*x12 + x70*x70*x23 + x71*x71*x34 + x72*x72*x45 + x73*x73*x56
      + x74*x74*x67 + x75*x75*x78 + x76*x76*x89 + x77*x77*x100) + sqr((-1) + 
     x68*x68 + x69*x69 + x70*x70 + x71*x71 + x72*x72 + x73*x73 + x74*x74 + x75*
     x75 + x76*x76 + x77*x77) + sqr(x2*x79*x1 + x3*x80*x12 + x4*x81*x23 + x5*
     x82*x34 + x6*x83*x45 + x7*x84*x56 + x8*x85*x67 + x9*x86*x78 + x10*x87*x89
      + x11*x88*x100) + sqr(x2*x79 + x3*x80 + x4*x81 + x5*x82 + x6*x83 + x7*x84
      + x8*x85 + x9*x86 + x10*x87 + x11*x88) + sqr(x13*x79*x1 + x14*x80*x12 + 
     x15*x81*x23 + x16*x82*x34 + x17*x83*x45 + x18*x84*x56 + x19*x85*x67 + x20*
     x86*x78 + x21*x87*x89 + x22*x88*x100) + sqr(x13*x79 + x14*x80 + x15*x81 + 
     x16*x82 + x17*x83 + x18*x84 + x19*x85 + x20*x86 + x21*x87 + x22*x88) + 
     sqr(x24*x79*x1 + x25*x80*x12 + x26*x81*x23 + x27*x82*x34 + x28*x83*x45 + 
     x29*x84*x56 + x30*x85*x67 + x31*x86*x78 + x32*x87*x89 + x33*x88*x100) + 
     sqr(x24*x79 + x25*x80 + x26*x81 + x27*x82 + x28*x83 + x29*x84 + x30*x85 + 
     x31*x86 + x32*x87 + x33*x88) + sqr(x35*x79*x1 + x36*x80*x12 + x37*x81*x23
      + x38*x82*x34 + x39*x83*x45 + x40*x84*x56 + x41*x85*x67 + x42*x86*x78 + 
     x43*x87*x89 + x44*x88*x100) + sqr(x35*x79 + x36*x80 + x37*x81 + x38*x82 + 
     x39*x83 + x40*x84 + x41*x85 + x42*x86 + x43*x87 + x44*x88) + sqr(x46*x79*
     x1 + x47*x80*x12 + x48*x81*x23 + x49*x82*x34 + x50*x83*x45 + x51*x84*x56
      + x52*x85*x67 + x53*x86*x78 + x54*x87*x89 + x55*x88*x100) + sqr(x46*x79
      + x47*x80 + x48*x81 + x49*x82 + x50*x83 + x51*x84 + x52*x85 + x53*x86 + 
     x54*x87 + x55*x88) + sqr(x57*x79*x1 + x58*x80*x12 + x59*x81*x23 + x60*x82*
     x34 + x61*x83*x45 + x62*x84*x56 + x63*x85*x67 + x64*x86*x78 + x65*x87*x89
      + x66*x88*x100) + sqr(x57*x79 + x58*x80 + x59*x81 + x60*x82 + x61*x83 + 
     x62*x84 + x63*x85 + x64*x86 + x65*x87 + x66*x88) + sqr(x68*x79*x1 + x69*
     x80*x12 + x70*x81*x23 + x71*x82*x34 + x72*x83*x45 + x73*x84*x56 + x74*x85*
     x67 + x75*x86*x78 + x76*x87*x89 + x77*x88*x100) + sqr(x68*x79 + x69*x80 + 
     x70*x81 + x71*x82 + x72*x83 + x73*x84 + x74*x85 + x75*x86 + x76*x87 + x77*
     x88) + sqr((-8) + x79*x79*x1 + x80*x80*x12 + x81*x81*x23 + x82*x82*x34 + 
     x83*x83*x45 + x84*x84*x56 + x85*x85*x67 + x86*x86*x78 + x87*x87*x89 + x88*
     x88*x100) + sqr((-1) + x79*x79 + x80*x80 + x81*x81 + x82*x82 + x83*x83 + 
     x84*x84 + x85*x85 + x86*x86 + x87*x87 + x88*x88) + sqr(x2*x90*x1 + x3*x91*
     x12 + x4*x92*x23 + x5*x93*x34 + x6*x94*x45 + x7*x95*x56 + x8*x96*x67 + x9*
     x97*x78 + x10*x98*x89 + x11*x99*x100) + sqr(x2*x90 + x3*x91 + x4*x92 + x5*
     x93 + x6*x94 + x7*x95 + x8*x96 + x9*x97 + x10*x98 + x11*x99) + sqr(x13*x90
     *x1 + x14*x91*x12 + x15*x92*x23 + x16*x93*x34 + x17*x94*x45 + x18*x95*x56
      + x19*x96*x67 + x20*x97*x78 + x21*x98*x89 + x22*x99*x100) + sqr(x13*x90
      + x14*x91 + x15*x92 + x16*x93 + x17*x94 + x18*x95 + x19*x96 + x20*x97 + 
     x21*x98 + x22*x99) + sqr(x24*x90*x1 + x25*x91*x12 + x26*x92*x23 + x27*x93*
     x34 + x28*x94*x45 + x29*x95*x56 + x30*x96*x67 + x31*x97*x78 + x32*x98*x89
      + x33*x99*x100) + sqr(x24*x90 + x25*x91 + x26*x92 + x27*x93 + x28*x94 + 
     x29*x95 + x30*x96 + x31*x97 + x32*x98 + x33*x99) + sqr(x35*x90*x1 + x36*
     x91*x12 + x37*x92*x23 + x38*x93*x34 + x39*x94*x45 + x40*x95*x56 + x41*x96*
     x67 + x42*x97*x78 + x43*x98*x89 + x44*x99*x100) + sqr(x35*x90 + x36*x91 + 
     x37*x92 + x38*x93 + x39*x94 + x40*x95 + x41*x96 + x42*x97 + x43*x98 + x44*
     x99) + sqr(x46*x90*x1 + x47*x91*x12 + x48*x92*x23 + x49*x93*x34 + x50*x94*
     x45 + x51*x95*x56 + x52*x96*x67 + x53*x97*x78 + x54*x98*x89 + x55*x99*x100
     ) + sqr(x46*x90 + x47*x91 + x48*x92 + x49*x93 + x50*x94 + x51*x95 + x52*
     x96 + x53*x97 + x54*x98 + x55*x99) + sqr(x57*x90*x1 + x58*x91*x12 + x59*
     x92*x23 + x60*x93*x34 + x61*x94*x45 + x62*x95*x56 + x63*x96*x67 + x64*x97*
     x78 + x65*x98*x89 + x66*x99*x100) + sqr(x57*x90 + x58*x91 + x59*x92 + x60*
     x93 + x61*x94 + x62*x95 + x63*x96 + x64*x97 + x65*x98 + x66*x99) + sqr(x68
     *x90*x1 + x69*x91*x12 + x70*x92*x23 + x71*x93*x34 + x72*x94*x45 + x73*x95*
     x56 + x74*x96*x67 + x75*x97*x78 + x76*x98*x89 + x77*x99*x100) + sqr(x68*
     x90 + x69*x91 + x70*x92 + x71*x93 + x72*x94 + x73*x95 + x74*x96 + x75*x97
      + x76*x98 + x77*x99) + sqr(x79*x90*x1 + x80*x91*x12 + x81*x92*x23 + x82*
     x93*x34 + x83*x94*x45 + x84*x95*x56 + x85*x96*x67 + x86*x97*x78 + x87*x98*
     x89 + x88*x99*x100) + sqr(x79*x90 + x80*x91 + x81*x92 + x82*x93 + x83*x94
      + x84*x95 + x85*x96 + x86*x97 + x87*x98 + x88*x99) + sqr((-9) + x90*x90*
     x1 + x91*x91*x12 + x92*x92*x23 + x93*x93*x34 + x94*x94*x45 + x95*x95*x56
      + x96*x96*x67 + x97*x97*x78 + x98*x98*x89 + x99*x99*x100) + sqr((-1) + 
     x90*x90 + x91*x91 + x92*x92 + x93*x93 + x94*x94 + x95*x95 + x96*x96 + x97*
     x97 + x98*x98 + x99*x99) + sqr(x2*x101*x1 + x3*x102*x12 + x4*x103*x23 + x5
     *x104*x34 + x6*x105*x45 + x7*x106*x56 + x8*x107*x67 + x9*x108*x78 + x10*
     x109*x89 + x11*x110*x100) + sqr(x2*x101 + x3*x102 + x4*x103 + x5*x104 + x6
     *x105 + x7*x106 + x8*x107 + x9*x108 + x10*x109 + x11*x110) + sqr(x13*x101*
     x1 + x14*x102*x12 + x15*x103*x23 + x16*x104*x34 + x17*x105*x45 + x18*x106*
     x56 + x19*x107*x67 + x20*x108*x78 + x21*x109*x89 + x22*x110*x100) + sqr(
     x13*x101 + x14*x102 + x15*x103 + x16*x104 + x17*x105 + x18*x106 + x19*x107
      + x20*x108 + x21*x109 + x22*x110) + sqr(x24*x101*x1 + x25*x102*x12 + x26*
     x103*x23 + x27*x104*x34 + x28*x105*x45 + x29*x106*x56 + x30*x107*x67 + x31
     *x108*x78 + x32*x109*x89 + x33*x110*x100) + sqr(x24*x101 + x25*x102 + x26*
     x103 + x27*x104 + x28*x105 + x29*x106 + x30*x107 + x31*x108 + x32*x109 + 
     x33*x110) + sqr(x35*x101*x1 + x36*x102*x12 + x37*x103*x23 + x38*x104*x34
      + x39*x105*x45 + x40*x106*x56 + x41*x107*x67 + x42*x108*x78 + x43*x109*
     x89 + x44*x110*x100) + sqr(x35*x101 + x36*x102 + x37*x103 + x38*x104 + x39
     *x105 + x40*x106 + x41*x107 + x42*x108 + x43*x109 + x44*x110) + sqr(x46*
     x101*x1 + x47*x102*x12 + x48*x103*x23 + x49*x104*x34 + x50*x105*x45 + x51*
     x106*x56 + x52*x107*x67 + x53*x108*x78 + x54*x109*x89 + x55*x110*x100) + 
     sqr(x46*x101 + x47*x102 + x48*x103 + x49*x104 + x50*x105 + x51*x106 + x52*
     x107 + x53*x108 + x54*x109 + x55*x110) + sqr(x57*x101*x1 + x58*x102*x12 + 
     x59*x103*x23 + x60*x104*x34 + x61*x105*x45 + x62*x106*x56 + x63*x107*x67
      + x64*x108*x78 + x65*x109*x89 + x66*x110*x100) + sqr(x57*x101 + x58*x102
      + x59*x103 + x60*x104 + x61*x105 + x62*x106 + x63*x107 + x64*x108 + x65*
     x109 + x66*x110) + sqr(x68*x101*x1 + x69*x102*x12 + x70*x103*x23 + x71*
     x104*x34 + x72*x105*x45 + x73*x106*x56 + x74*x107*x67 + x75*x108*x78 + x76
     *x109*x89 + x77*x110*x100) + sqr(x68*x101 + x69*x102 + x70*x103 + x71*x104
      + x72*x105 + x73*x106 + x74*x107 + x75*x108 + x76*x109 + x77*x110) + sqr(
     x79*x101*x1 + x80*x102*x12 + x81*x103*x23 + x82*x104*x34 + x83*x105*x45 + 
     x84*x106*x56 + x85*x107*x67 + x86*x108*x78 + x87*x109*x89 + x88*x110*x100)
      + sqr(x79*x101 + x80*x102 + x81*x103 + x82*x104 + x83*x105 + x84*x106 + 
     x85*x107 + x86*x108 + x87*x109 + x88*x110) + sqr(x90*x101*x1 + x91*x102*
     x12 + x92*x103*x23 + x93*x104*x34 + x94*x105*x45 + x95*x106*x56 + x96*x107
     *x67 + x97*x108*x78 + x98*x109*x89 + x99*x110*x100) + sqr(x90*x101 + x91*
     x102 + x92*x103 + x93*x104 + x94*x105 + x95*x106 + x96*x107 + x97*x108 + 
     x98*x109 + x99*x110) + sqr((-10) + x101*x101*x1 + x102*x102*x12 + x103*
     x103*x23 + x104*x104*x34 + x105*x105*x45 + x106*x106*x56 + x107*x107*x67
      + x108*x108*x78 + x109*x109*x89 + x110*x110*x100) + sqr((-1) + x101*x101
      + x102*x102 + x103*x103 + x104*x104 + x105*x105 + x106*x106 + x107*x107
      + x108*x108 + x109*x109 + x110*x110)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x12.l = 1; 
x14.l = 1; 
x23.l = 1; 
x26.l = 1; 
x34.l = 1; 
x38.l = 1; 
x45.l = 1; 
x50.l = 1; 
x56.l = 1; 
x62.l = 1; 
x67.l = 1; 
x74.l = 1; 
x78.l = 1; 
x86.l = 1; 
x89.l = 1; 
x98.l = 1; 
x100.l = 1; 
x110.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
