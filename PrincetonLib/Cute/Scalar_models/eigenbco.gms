*  NLP written by GAMS Convert at 10/06/06 11:32:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         56       56        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        111      111        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1111        1     1110        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56;


e1.. x12*x11 + x22*x21 + x32*x31 + x42*x41 + x52*x51 + x62*x61 + x72*x71 + x82*
     x81 + x92*x91 + x102*x101 =E= 0;

e2.. x13*x11 + x23*x21 + x33*x31 + x43*x41 + x53*x51 + x63*x61 + x73*x71 + x83*
     x81 + x93*x91 + x103*x101 =E= 0;

e3.. x13*x12 + x23*x22 + x33*x32 + x43*x42 + x53*x52 + x63*x62 + x73*x72 + x83*
     x82 + x93*x92 + x103*x102 =E= 0;

e4.. x14*x11 + x24*x21 + x34*x31 + x44*x41 + x54*x51 + x64*x61 + x74*x71 + x84*
     x81 + x94*x91 + x104*x101 =E= 0;

e5.. x14*x12 + x24*x22 + x34*x32 + x44*x42 + x54*x52 + x64*x62 + x74*x72 + x84*
     x82 + x94*x92 + x104*x102 =E= 0;

e6.. x14*x13 + x24*x23 + x34*x33 + x44*x43 + x54*x53 + x64*x63 + x74*x73 + x84*
     x83 + x94*x93 + x104*x103 =E= 0;

e7.. x15*x11 + x25*x21 + x35*x31 + x45*x41 + x55*x51 + x65*x61 + x75*x71 + x85*
     x81 + x95*x91 + x105*x101 =E= 0;

e8.. x15*x12 + x25*x22 + x35*x32 + x45*x42 + x55*x52 + x65*x62 + x75*x72 + x85*
     x82 + x95*x92 + x105*x102 =E= 0;

e9.. x15*x13 + x25*x23 + x35*x33 + x45*x43 + x55*x53 + x65*x63 + x75*x73 + x85*
     x83 + x95*x93 + x105*x103 =E= 0;

e10.. x15*x14 + x25*x24 + x35*x34 + x45*x44 + x55*x54 + x65*x64 + x75*x74 + x85
      *x84 + x95*x94 + x105*x104 =E= 0;

e11.. x16*x11 + x26*x21 + x36*x31 + x46*x41 + x56*x51 + x66*x61 + x76*x71 + x86
      *x81 + x96*x91 + x106*x101 =E= 0;

e12.. x16*x12 + x26*x22 + x36*x32 + x46*x42 + x56*x52 + x66*x62 + x76*x72 + x86
      *x82 + x96*x92 + x106*x102 =E= 0;

e13.. x16*x13 + x26*x23 + x36*x33 + x46*x43 + x56*x53 + x66*x63 + x76*x73 + x86
      *x83 + x96*x93 + x106*x103 =E= 0;

e14.. x16*x14 + x26*x24 + x36*x34 + x46*x44 + x56*x54 + x66*x64 + x76*x74 + x86
      *x84 + x96*x94 + x106*x104 =E= 0;

e15.. x16*x15 + x26*x25 + x36*x35 + x46*x45 + x56*x55 + x66*x65 + x76*x75 + x86
      *x85 + x96*x95 + x106*x105 =E= 0;

e16.. x17*x11 + x27*x21 + x37*x31 + x47*x41 + x57*x51 + x67*x61 + x77*x71 + x87
      *x81 + x97*x91 + x107*x101 =E= 0;

e17.. x17*x12 + x27*x22 + x37*x32 + x47*x42 + x57*x52 + x67*x62 + x77*x72 + x87
      *x82 + x97*x92 + x107*x102 =E= 0;

e18.. x17*x13 + x27*x23 + x37*x33 + x47*x43 + x57*x53 + x67*x63 + x77*x73 + x87
      *x83 + x97*x93 + x107*x103 =E= 0;

e19.. x17*x14 + x27*x24 + x37*x34 + x47*x44 + x57*x54 + x67*x64 + x77*x74 + x87
      *x84 + x97*x94 + x107*x104 =E= 0;

e20.. x17*x15 + x27*x25 + x37*x35 + x47*x45 + x57*x55 + x67*x65 + x77*x75 + x87
      *x85 + x97*x95 + x107*x105 =E= 0;

e21.. x17*x16 + x27*x26 + x37*x36 + x47*x46 + x57*x56 + x67*x66 + x77*x76 + x87
      *x86 + x97*x96 + x107*x106 =E= 0;

e22.. x18*x11 + x28*x21 + x38*x31 + x48*x41 + x58*x51 + x68*x61 + x78*x71 + x88
      *x81 + x98*x91 + x108*x101 =E= 0;

e23.. x18*x12 + x28*x22 + x38*x32 + x48*x42 + x58*x52 + x68*x62 + x78*x72 + x88
      *x82 + x98*x92 + x108*x102 =E= 0;

e24.. x18*x13 + x28*x23 + x38*x33 + x48*x43 + x58*x53 + x68*x63 + x78*x73 + x88
      *x83 + x98*x93 + x108*x103 =E= 0;

e25.. x18*x14 + x28*x24 + x38*x34 + x48*x44 + x58*x54 + x68*x64 + x78*x74 + x88
      *x84 + x98*x94 + x108*x104 =E= 0;

e26.. x18*x15 + x28*x25 + x38*x35 + x48*x45 + x58*x55 + x68*x65 + x78*x75 + x88
      *x85 + x98*x95 + x108*x105 =E= 0;

e27.. x18*x16 + x28*x26 + x38*x36 + x48*x46 + x58*x56 + x68*x66 + x78*x76 + x88
      *x86 + x98*x96 + x108*x106 =E= 0;

e28.. x18*x17 + x28*x27 + x38*x37 + x48*x47 + x58*x57 + x68*x67 + x78*x77 + x88
      *x87 + x98*x97 + x108*x107 =E= 0;

e29.. x19*x11 + x29*x21 + x39*x31 + x49*x41 + x59*x51 + x69*x61 + x79*x71 + x89
      *x81 + x99*x91 + x109*x101 =E= 0;

e30.. x19*x12 + x29*x22 + x39*x32 + x49*x42 + x59*x52 + x69*x62 + x79*x72 + x89
      *x82 + x99*x92 + x109*x102 =E= 0;

e31.. x19*x13 + x29*x23 + x39*x33 + x49*x43 + x59*x53 + x69*x63 + x79*x73 + x89
      *x83 + x99*x93 + x109*x103 =E= 0;

e32.. x19*x14 + x29*x24 + x39*x34 + x49*x44 + x59*x54 + x69*x64 + x79*x74 + x89
      *x84 + x99*x94 + x109*x104 =E= 0;

e33.. x19*x15 + x29*x25 + x39*x35 + x49*x45 + x59*x55 + x69*x65 + x79*x75 + x89
      *x85 + x99*x95 + x109*x105 =E= 0;

e34.. x19*x16 + x29*x26 + x39*x36 + x49*x46 + x59*x56 + x69*x66 + x79*x76 + x89
      *x86 + x99*x96 + x109*x106 =E= 0;

e35.. x19*x17 + x29*x27 + x39*x37 + x49*x47 + x59*x57 + x69*x67 + x79*x77 + x89
      *x87 + x99*x97 + x109*x107 =E= 0;

e36.. x19*x18 + x29*x28 + x39*x38 + x49*x48 + x59*x58 + x69*x68 + x79*x78 + x89
      *x88 + x99*x98 + x109*x108 =E= 0;

e37.. x20*x11 + x30*x21 + x40*x31 + x50*x41 + x60*x51 + x70*x61 + x80*x71 + x90
      *x81 + x100*x91 + x110*x101 =E= 0;

e38.. x20*x12 + x30*x22 + x40*x32 + x50*x42 + x60*x52 + x70*x62 + x80*x72 + x90
      *x82 + x100*x92 + x110*x102 =E= 0;

e39.. x20*x13 + x30*x23 + x40*x33 + x50*x43 + x60*x53 + x70*x63 + x80*x73 + x90
      *x83 + x100*x93 + x110*x103 =E= 0;

e40.. x20*x14 + x30*x24 + x40*x34 + x50*x44 + x60*x54 + x70*x64 + x80*x74 + x90
      *x84 + x100*x94 + x110*x104 =E= 0;

e41.. x20*x15 + x30*x25 + x40*x35 + x50*x45 + x60*x55 + x70*x65 + x80*x75 + x90
      *x85 + x100*x95 + x110*x105 =E= 0;

e42.. x20*x16 + x30*x26 + x40*x36 + x50*x46 + x60*x56 + x70*x66 + x80*x76 + x90
      *x86 + x100*x96 + x110*x106 =E= 0;

e43.. x20*x17 + x30*x27 + x40*x37 + x50*x47 + x60*x57 + x70*x67 + x80*x77 + x90
      *x87 + x100*x97 + x110*x107 =E= 0;

e44.. x20*x18 + x30*x28 + x40*x38 + x50*x48 + x60*x58 + x70*x68 + x80*x78 + x90
      *x88 + x100*x98 + x110*x108 =E= 0;

e45.. x20*x19 + x30*x29 + x40*x39 + x50*x49 + x60*x59 + x70*x69 + x80*x79 + x90
      *x89 + x100*x99 + x110*x109 =E= 0;

e46.. x11*x11 + x21*x21 + x31*x31 + x41*x41 + x51*x51 + x61*x61 + x71*x71 + x81
      *x81 + x91*x91 + x101*x101 =E= 1;

e47.. x12*x12 + x22*x22 + x32*x32 + x42*x42 + x52*x52 + x62*x62 + x72*x72 + x82
      *x82 + x92*x92 + x102*x102 =E= 1;

e48.. x13*x13 + x23*x23 + x33*x33 + x43*x43 + x53*x53 + x63*x63 + x73*x73 + x83
      *x83 + x93*x93 + x103*x103 =E= 1;

e49.. x14*x14 + x24*x24 + x34*x34 + x44*x44 + x54*x54 + x64*x64 + x74*x74 + x84
      *x84 + x94*x94 + x104*x104 =E= 1;

e50.. x15*x15 + x25*x25 + x35*x35 + x45*x45 + x55*x55 + x65*x65 + x75*x75 + x85
      *x85 + x95*x95 + x105*x105 =E= 1;

e51.. x16*x16 + x26*x26 + x36*x36 + x46*x46 + x56*x56 + x66*x66 + x76*x76 + x86
      *x86 + x96*x96 + x106*x106 =E= 1;

e52.. x17*x17 + x27*x27 + x37*x37 + x47*x47 + x57*x57 + x67*x67 + x77*x77 + x87
      *x87 + x97*x97 + x107*x107 =E= 1;

e53.. x18*x18 + x28*x28 + x38*x38 + x48*x48 + x58*x58 + x68*x68 + x78*x78 + x88
      *x88 + x98*x98 + x108*x108 =E= 1;

e54.. x19*x19 + x29*x29 + x39*x39 + x49*x49 + x59*x59 + x69*x69 + x79*x79 + x89
      *x89 + x99*x99 + x109*x109 =E= 1;

e55.. x20*x20 + x30*x30 + x40*x40 + x50*x50 + x60*x60 + x70*x70 + x80*x80 + x90
      *x90 + x100*x100 + x110*x110 =E= 1;

e56..  - (sqr((-2) + x11*x11*x1 + x21*x21*x2 + x31*x31*x3 + x41*x41*x4 + x51*
      x51*x5 + x61*x61*x6 + x71*x71*x7 + x81*x81*x8 + x91*x91*x9 + x101*x101*
      x10) + sqr(1 + x12*x11*x1 + x22*x21*x2 + x32*x31*x3 + x42*x41*x4 + x52*
      x51*x5 + x62*x61*x6 + x72*x71*x7 + x82*x81*x8 + x92*x91*x9 + x102*x101*
      x10) + sqr((-2) + x12*x12*x1 + x22*x22*x2 + x32*x32*x3 + x42*x42*x4 + x52
      *x52*x5 + x62*x62*x6 + x72*x72*x7 + x82*x82*x8 + x92*x92*x9 + x102*x102*
      x10) + sqr(x13*x11*x1 + x23*x21*x2 + x33*x31*x3 + x43*x41*x4 + x53*x51*x5
       + x63*x61*x6 + x73*x71*x7 + x83*x81*x8 + x93*x91*x9 + x103*x101*x10) + 
      sqr(1 + x13*x12*x1 + x23*x22*x2 + x33*x32*x3 + x43*x42*x4 + x53*x52*x5 + 
      x63*x62*x6 + x73*x72*x7 + x83*x82*x8 + x93*x92*x9 + x103*x102*x10) + sqr(
      (-2) + x13*x13*x1 + x23*x23*x2 + x33*x33*x3 + x43*x43*x4 + x53*x53*x5 + 
      x63*x63*x6 + x73*x73*x7 + x83*x83*x8 + x93*x93*x9 + x103*x103*x10) + sqr(
      x14*x11*x1 + x24*x21*x2 + x34*x31*x3 + x44*x41*x4 + x54*x51*x5 + x64*x61*
      x6 + x74*x71*x7 + x84*x81*x8 + x94*x91*x9 + x104*x101*x10) + sqr(x14*x12*
      x1 + x24*x22*x2 + x34*x32*x3 + x44*x42*x4 + x54*x52*x5 + x64*x62*x6 + x74
      *x72*x7 + x84*x82*x8 + x94*x92*x9 + x104*x102*x10) + sqr(1 + x14*x13*x1
       + x24*x23*x2 + x34*x33*x3 + x44*x43*x4 + x54*x53*x5 + x64*x63*x6 + x74*
      x73*x7 + x84*x83*x8 + x94*x93*x9 + x104*x103*x10) + sqr((-2) + x14*x14*x1
       + x24*x24*x2 + x34*x34*x3 + x44*x44*x4 + x54*x54*x5 + x64*x64*x6 + x74*
      x74*x7 + x84*x84*x8 + x94*x94*x9 + x104*x104*x10) + sqr(x15*x11*x1 + x25*
      x21*x2 + x35*x31*x3 + x45*x41*x4 + x55*x51*x5 + x65*x61*x6 + x75*x71*x7
       + x85*x81*x8 + x95*x91*x9 + x105*x101*x10) + sqr(x15*x12*x1 + x25*x22*x2
       + x35*x32*x3 + x45*x42*x4 + x55*x52*x5 + x65*x62*x6 + x75*x72*x7 + x85*
      x82*x8 + x95*x92*x9 + x105*x102*x10) + sqr(x15*x13*x1 + x25*x23*x2 + x35*
      x33*x3 + x45*x43*x4 + x55*x53*x5 + x65*x63*x6 + x75*x73*x7 + x85*x83*x8
       + x95*x93*x9 + x105*x103*x10) + sqr(1 + x15*x14*x1 + x25*x24*x2 + x35*
      x34*x3 + x45*x44*x4 + x55*x54*x5 + x65*x64*x6 + x75*x74*x7 + x85*x84*x8
       + x95*x94*x9 + x105*x104*x10) + sqr((-2) + x15*x15*x1 + x25*x25*x2 + x35
      *x35*x3 + x45*x45*x4 + x55*x55*x5 + x65*x65*x6 + x75*x75*x7 + x85*x85*x8
       + x95*x95*x9 + x105*x105*x10) + sqr(x16*x11*x1 + x26*x21*x2 + x36*x31*x3
       + x46*x41*x4 + x56*x51*x5 + x66*x61*x6 + x76*x71*x7 + x86*x81*x8 + x96*
      x91*x9 + x106*x101*x10) + sqr(x16*x12*x1 + x26*x22*x2 + x36*x32*x3 + x46*
      x42*x4 + x56*x52*x5 + x66*x62*x6 + x76*x72*x7 + x86*x82*x8 + x96*x92*x9
       + x106*x102*x10) + sqr(x16*x13*x1 + x26*x23*x2 + x36*x33*x3 + x46*x43*x4
       + x56*x53*x5 + x66*x63*x6 + x76*x73*x7 + x86*x83*x8 + x96*x93*x9 + x106*
      x103*x10) + sqr(x16*x14*x1 + x26*x24*x2 + x36*x34*x3 + x46*x44*x4 + x56*
      x54*x5 + x66*x64*x6 + x76*x74*x7 + x86*x84*x8 + x96*x94*x9 + x106*x104*
      x10) + sqr(1 + x16*x15*x1 + x26*x25*x2 + x36*x35*x3 + x46*x45*x4 + x56*
      x55*x5 + x66*x65*x6 + x76*x75*x7 + x86*x85*x8 + x96*x95*x9 + x106*x105*
      x10) + sqr((-2) + x16*x16*x1 + x26*x26*x2 + x36*x36*x3 + x46*x46*x4 + x56
      *x56*x5 + x66*x66*x6 + x76*x76*x7 + x86*x86*x8 + x96*x96*x9 + x106*x106*
      x10) + sqr(x17*x11*x1 + x27*x21*x2 + x37*x31*x3 + x47*x41*x4 + x57*x51*x5
       + x67*x61*x6 + x77*x71*x7 + x87*x81*x8 + x97*x91*x9 + x107*x101*x10) + 
      sqr(x17*x12*x1 + x27*x22*x2 + x37*x32*x3 + x47*x42*x4 + x57*x52*x5 + x67*
      x62*x6 + x77*x72*x7 + x87*x82*x8 + x97*x92*x9 + x107*x102*x10) + sqr(x17*
      x13*x1 + x27*x23*x2 + x37*x33*x3 + x47*x43*x4 + x57*x53*x5 + x67*x63*x6
       + x77*x73*x7 + x87*x83*x8 + x97*x93*x9 + x107*x103*x10) + sqr(x17*x14*x1
       + x27*x24*x2 + x37*x34*x3 + x47*x44*x4 + x57*x54*x5 + x67*x64*x6 + x77*
      x74*x7 + x87*x84*x8 + x97*x94*x9 + x107*x104*x10) + sqr(x17*x15*x1 + x27*
      x25*x2 + x37*x35*x3 + x47*x45*x4 + x57*x55*x5 + x67*x65*x6 + x77*x75*x7
       + x87*x85*x8 + x97*x95*x9 + x107*x105*x10) + sqr(1 + x17*x16*x1 + x27*
      x26*x2 + x37*x36*x3 + x47*x46*x4 + x57*x56*x5 + x67*x66*x6 + x77*x76*x7
       + x87*x86*x8 + x97*x96*x9 + x107*x106*x10) + sqr((-2) + x17*x17*x1 + x27
      *x27*x2 + x37*x37*x3 + x47*x47*x4 + x57*x57*x5 + x67*x67*x6 + x77*x77*x7
       + x87*x87*x8 + x97*x97*x9 + x107*x107*x10) + sqr(x18*x11*x1 + x28*x21*x2
       + x38*x31*x3 + x48*x41*x4 + x58*x51*x5 + x68*x61*x6 + x78*x71*x7 + x88*
      x81*x8 + x98*x91*x9 + x108*x101*x10) + sqr(x18*x12*x1 + x28*x22*x2 + x38*
      x32*x3 + x48*x42*x4 + x58*x52*x5 + x68*x62*x6 + x78*x72*x7 + x88*x82*x8
       + x98*x92*x9 + x108*x102*x10) + sqr(x18*x13*x1 + x28*x23*x2 + x38*x33*x3
       + x48*x43*x4 + x58*x53*x5 + x68*x63*x6 + x78*x73*x7 + x88*x83*x8 + x98*
      x93*x9 + x108*x103*x10) + sqr(x18*x14*x1 + x28*x24*x2 + x38*x34*x3 + x48*
      x44*x4 + x58*x54*x5 + x68*x64*x6 + x78*x74*x7 + x88*x84*x8 + x98*x94*x9
       + x108*x104*x10) + sqr(x18*x15*x1 + x28*x25*x2 + x38*x35*x3 + x48*x45*x4
       + x58*x55*x5 + x68*x65*x6 + x78*x75*x7 + x88*x85*x8 + x98*x95*x9 + x108*
      x105*x10) + sqr(x18*x16*x1 + x28*x26*x2 + x38*x36*x3 + x48*x46*x4 + x58*
      x56*x5 + x68*x66*x6 + x78*x76*x7 + x88*x86*x8 + x98*x96*x9 + x108*x106*
      x10) + sqr(1 + x18*x17*x1 + x28*x27*x2 + x38*x37*x3 + x48*x47*x4 + x58*
      x57*x5 + x68*x67*x6 + x78*x77*x7 + x88*x87*x8 + x98*x97*x9 + x108*x107*
      x10) + sqr((-2) + x18*x18*x1 + x28*x28*x2 + x38*x38*x3 + x48*x48*x4 + x58
      *x58*x5 + x68*x68*x6 + x78*x78*x7 + x88*x88*x8 + x98*x98*x9 + x108*x108*
      x10) + sqr(x19*x11*x1 + x29*x21*x2 + x39*x31*x3 + x49*x41*x4 + x59*x51*x5
       + x69*x61*x6 + x79*x71*x7 + x89*x81*x8 + x99*x91*x9 + x109*x101*x10) + 
      sqr(x19*x12*x1 + x29*x22*x2 + x39*x32*x3 + x49*x42*x4 + x59*x52*x5 + x69*
      x62*x6 + x79*x72*x7 + x89*x82*x8 + x99*x92*x9 + x109*x102*x10) + sqr(x19*
      x13*x1 + x29*x23*x2 + x39*x33*x3 + x49*x43*x4 + x59*x53*x5 + x69*x63*x6
       + x79*x73*x7 + x89*x83*x8 + x99*x93*x9 + x109*x103*x10) + sqr(x19*x14*x1
       + x29*x24*x2 + x39*x34*x3 + x49*x44*x4 + x59*x54*x5 + x69*x64*x6 + x79*
      x74*x7 + x89*x84*x8 + x99*x94*x9 + x109*x104*x10) + sqr(x19*x15*x1 + x29*
      x25*x2 + x39*x35*x3 + x49*x45*x4 + x59*x55*x5 + x69*x65*x6 + x79*x75*x7
       + x89*x85*x8 + x99*x95*x9 + x109*x105*x10) + sqr(x19*x16*x1 + x29*x26*x2
       + x39*x36*x3 + x49*x46*x4 + x59*x56*x5 + x69*x66*x6 + x79*x76*x7 + x89*
      x86*x8 + x99*x96*x9 + x109*x106*x10) + sqr(x19*x17*x1 + x29*x27*x2 + x39*
      x37*x3 + x49*x47*x4 + x59*x57*x5 + x69*x67*x6 + x79*x77*x7 + x89*x87*x8
       + x99*x97*x9 + x109*x107*x10) + sqr(1 + x19*x18*x1 + x29*x28*x2 + x39*
      x38*x3 + x49*x48*x4 + x59*x58*x5 + x69*x68*x6 + x79*x78*x7 + x89*x88*x8
       + x99*x98*x9 + x109*x108*x10) + sqr((-2) + x19*x19*x1 + x29*x29*x2 + x39
      *x39*x3 + x49*x49*x4 + x59*x59*x5 + x69*x69*x6 + x79*x79*x7 + x89*x89*x8
       + x99*x99*x9 + x109*x109*x10) + sqr(x20*x11*x1 + x30*x21*x2 + x40*x31*x3
       + x50*x41*x4 + x60*x51*x5 + x70*x61*x6 + x80*x71*x7 + x90*x81*x8 + x100*
      x91*x9 + x110*x101*x10) + sqr(x20*x12*x1 + x30*x22*x2 + x40*x32*x3 + x50*
      x42*x4 + x60*x52*x5 + x70*x62*x6 + x80*x72*x7 + x90*x82*x8 + x100*x92*x9
       + x110*x102*x10) + sqr(x20*x13*x1 + x30*x23*x2 + x40*x33*x3 + x50*x43*x4
       + x60*x53*x5 + x70*x63*x6 + x80*x73*x7 + x90*x83*x8 + x100*x93*x9 + x110
      *x103*x10) + sqr(x20*x14*x1 + x30*x24*x2 + x40*x34*x3 + x50*x44*x4 + x60*
      x54*x5 + x70*x64*x6 + x80*x74*x7 + x90*x84*x8 + x100*x94*x9 + x110*x104*
      x10) + sqr(x20*x15*x1 + x30*x25*x2 + x40*x35*x3 + x50*x45*x4 + x60*x55*x5
       + x70*x65*x6 + x80*x75*x7 + x90*x85*x8 + x100*x95*x9 + x110*x105*x10) + 
      sqr(x20*x16*x1 + x30*x26*x2 + x40*x36*x3 + x50*x46*x4 + x60*x56*x5 + x70*
      x66*x6 + x80*x76*x7 + x90*x86*x8 + x100*x96*x9 + x110*x106*x10) + sqr(x20
      *x17*x1 + x30*x27*x2 + x40*x37*x3 + x50*x47*x4 + x60*x57*x5 + x70*x67*x6
       + x80*x77*x7 + x90*x87*x8 + x100*x97*x9 + x110*x107*x10) + sqr(x20*x18*
      x1 + x30*x28*x2 + x40*x38*x3 + x50*x48*x4 + x60*x58*x5 + x70*x68*x6 + x80
      *x78*x7 + x90*x88*x8 + x100*x98*x9 + x110*x108*x10) + sqr(1 + x20*x19*x1
       + x30*x29*x2 + x40*x39*x3 + x50*x49*x4 + x60*x59*x5 + x70*x69*x6 + x80*
      x79*x7 + x90*x89*x8 + x100*x99*x9 + x110*x109*x10) + sqr((-2) + x20*x20*
      x1 + x30*x30*x2 + x40*x40*x3 + x50*x50*x4 + x60*x60*x5 + x70*x70*x6 + x80
      *x80*x7 + x90*x90*x8 + x100*x100*x9 + x110*x110*x10)) + objvar =E= 0;

* set non default bounds


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
x11.l = 1; 
x22.l = 1; 
x33.l = 1; 
x44.l = 1; 
x55.l = 1; 
x66.l = 1; 
x77.l = 1; 
x88.l = 1; 
x99.l = 1; 
x110.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
