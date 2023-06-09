*  NLP written by GAMS Convert at 10/06/06 11:32:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        121      121        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        121        1      120        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1;


e1..  - (exp(x1*x2) + exp(2*x2*x3) + exp(3*x3*x4) + exp(4*x4*x5) + exp(5*x5*x6)
      + exp(6*x6*x7) + exp(7*x7*x8) + exp(8*x8*x9) + exp(9*x9*x10) + exp(10*x10
     *x11) + 4*x11*x11 + 2*x120*x120 + x11*x120 + 4*x12*x12 + 2*x120*x120 + x12
     *x120 + 4*x13*x13 + 2*x120*x120 + x13*x120 + 4*x14*x14 + 2*x120*x120 + x14
     *x120 + 4*x15*x15 + 2*x120*x120 + x15*x120 + 4*x16*x16 + 2*x120*x120 + x16
     *x120 + 4*x17*x17 + 2*x120*x120 + x17*x120 + 4*x18*x18 + 2*x120*x120 + x18
     *x120 + 4*x19*x19 + 2*x120*x120 + x19*x120 + 4*x20*x20 + 2*x120*x120 + x20
     *x120 + 4*x21*x21 + 2*x120*x120 + x21*x120 + 4*x22*x22 + 2*x120*x120 + x22
     *x120 + 4*x23*x23 + 2*x120*x120 + x23*x120 + 4*x24*x24 + 2*x120*x120 + x24
     *x120 + 4*x25*x25 + 2*x120*x120 + x25*x120 + 4*x26*x26 + 2*x120*x120 + x26
     *x120 + 4*x27*x27 + 2*x120*x120 + x27*x120 + 4*x28*x28 + 2*x120*x120 + x28
     *x120 + 4*x29*x29 + 2*x120*x120 + x29*x120 + 4*x30*x30 + 2*x120*x120 + x30
     *x120 + 4*x31*x31 + 2*x120*x120 + x31*x120 + 4*x32*x32 + 2*x120*x120 + x32
     *x120 + 4*x33*x33 + 2*x120*x120 + x33*x120 + 4*x34*x34 + 2*x120*x120 + x34
     *x120 + 4*x35*x35 + 2*x120*x120 + x35*x120 + 4*x36*x36 + 2*x120*x120 + x36
     *x120 + 4*x37*x37 + 2*x120*x120 + x37*x120 + 4*x38*x38 + 2*x120*x120 + x38
     *x120 + 4*x39*x39 + 2*x120*x120 + x39*x120 + 4*x40*x40 + 2*x120*x120 + x40
     *x120 + 4*x41*x41 + 2*x120*x120 + x41*x120 + 4*x42*x42 + 2*x120*x120 + x42
     *x120 + 4*x43*x43 + 2*x120*x120 + x43*x120 + 4*x44*x44 + 2*x120*x120 + x44
     *x120 + 4*x45*x45 + 2*x120*x120 + x45*x120 + 4*x46*x46 + 2*x120*x120 + x46
     *x120 + 4*x47*x47 + 2*x120*x120 + x47*x120 + 4*x48*x48 + 2*x120*x120 + x48
     *x120 + 4*x49*x49 + 2*x120*x120 + x49*x120 + 4*x50*x50 + 2*x120*x120 + x50
     *x120 + 4*x51*x51 + 2*x120*x120 + x51*x120 + 4*x52*x52 + 2*x120*x120 + x52
     *x120 + 4*x53*x53 + 2*x120*x120 + x53*x120 + 4*x54*x54 + 2*x120*x120 + x54
     *x120 + 4*x55*x55 + 2*x120*x120 + x55*x120 + 4*x56*x56 + 2*x120*x120 + x56
     *x120 + 4*x57*x57 + 2*x120*x120 + x57*x120 + 4*x58*x58 + 2*x120*x120 + x58
     *x120 + 4*x59*x59 + 2*x120*x120 + x59*x120 + 4*x60*x60 + 2*x120*x120 + x60
     *x120 + 4*x61*x61 + 2*x120*x120 + x61*x120 + 4*x62*x62 + 2*x120*x120 + x62
     *x120 + 4*x63*x63 + 2*x120*x120 + x63*x120 + 4*x64*x64 + 2*x120*x120 + x64
     *x120 + 4*x65*x65 + 2*x120*x120 + x65*x120 + 4*x66*x66 + 2*x120*x120 + x66
     *x120 + 4*x67*x67 + 2*x120*x120 + x67*x120 + 4*x68*x68 + 2*x120*x120 + x68
     *x120 + 4*x69*x69 + 2*x120*x120 + x69*x120 + 4*x70*x70 + 2*x120*x120 + x70
     *x120 + 4*x71*x71 + 2*x120*x120 + x71*x120 + 4*x72*x72 + 2*x120*x120 + x72
     *x120 + 4*x73*x73 + 2*x120*x120 + x73*x120 + 4*x74*x74 + 2*x120*x120 + x74
     *x120 + 4*x75*x75 + 2*x120*x120 + x75*x120 + 4*x76*x76 + 2*x120*x120 + x76
     *x120 + 4*x77*x77 + 2*x120*x120 + x77*x120 + 4*x78*x78 + 2*x120*x120 + x78
     *x120 + 4*x79*x79 + 2*x120*x120 + x79*x120 + 4*x80*x80 + 2*x120*x120 + x80
     *x120 + 4*x81*x81 + 2*x120*x120 + x81*x120 + 4*x82*x82 + 2*x120*x120 + x82
     *x120 + 4*x83*x83 + 2*x120*x120 + x83*x120 + 4*x84*x84 + 2*x120*x120 + x84
     *x120 + 4*x85*x85 + 2*x120*x120 + x85*x120 + 4*x86*x86 + 2*x120*x120 + x86
     *x120 + 4*x87*x87 + 2*x120*x120 + x87*x120 + 4*x88*x88 + 2*x120*x120 + x88
     *x120 + 4*x89*x89 + 2*x120*x120 + x89*x120 + 4*x90*x90 + 2*x120*x120 + x90
     *x120 + 4*x91*x91 + 2*x120*x120 + x91*x120 + 4*x92*x92 + 2*x120*x120 + x92
     *x120 + 4*x93*x93 + 2*x120*x120 + x93*x120 + 4*x94*x94 + 2*x120*x120 + x94
     *x120 + 4*x95*x95 + 2*x120*x120 + x95*x120 + 4*x96*x96 + 2*x120*x120 + x96
     *x120 + 4*x97*x97 + 2*x120*x120 + x97*x120 + 4*x98*x98 + 2*x120*x120 + x98
     *x120 + 4*x99*x99 + 2*x120*x120 + x99*x120 + 4*x100*x100 + 2*x120*x120 + 
     x100*x120 + 4*x101*x101 + 2*x120*x120 + x101*x120 + 4*x102*x102 + 2*x120*
     x120 + x102*x120 + 4*x103*x103 + 2*x120*x120 + x103*x120 + 4*x104*x104 + 2
     *x120*x120 + x104*x120 + 4*x105*x105 + 2*x120*x120 + x105*x120 + 4*x106*
     x106 + 2*x120*x120 + x106*x120 + 4*x107*x107 + 2*x120*x120 + x107*x120 + 4
     *x108*x108 + 2*x120*x120 + x108*x120 + 4*x109*x109 + 2*x120*x120 + x109*
     x120 + 4*x110*x110 + 2*x120*x120 + x110*x120 + 4*x111*x111 + 2*x120*x120
      + x111*x120 + 4*x112*x112 + 2*x120*x120 + x112*x120 + 4*x113*x113 + 2*
     x120*x120 + x113*x120 + 4*x114*x114 + 2*x120*x120 + x114*x120 + 4*x115*
     x115 + 2*x120*x120 + x115*x120 + 4*x116*x116 + 2*x120*x120 + x116*x120 + 4
     *x117*x117 + 2*x120*x120 + x117*x120 + 4*x118*x118 + 2*x120*x120 + x118*
     x120 + 4*x119*x119 + 2*x120*x120 + x119*x120 - 10*x1 - 20*x2 - 30*x3 - 40*
     x4 - 50*x5 - 60*x6 - 70*x7 - 80*x8 - 90*x9 - 100*x10 - 110*x11 - 120*x12
      - 130*x13 - 140*x14 - 150*x15 - 160*x16 - 170*x17 - 180*x18 - 190*x19 - 
     200*x20 - 210*x21 - 220*x22 - 230*x23 - 240*x24 - 250*x25 - 260*x26 - 270*
     x27 - 280*x28 - 290*x29 - 300*x30 - 310*x31 - 320*x32 - 330*x33 - 340*x34
      - 350*x35 - 360*x36 - 370*x37 - 380*x38 - 390*x39 - 400*x40 - 410*x41 - 
     420*x42 - 430*x43 - 440*x44 - 450*x45 - 460*x46 - 470*x47 - 480*x48 - 490*
     x49 - 500*x50 - 510*x51 - 520*x52 - 530*x53 - 540*x54 - 550*x55 - 560*x56
      - 570*x57 - 580*x58 - 590*x59 - 600*x60 - 610*x61 - 620*x62 - 630*x63 - 
     640*x64 - 650*x65 - 660*x66 - 670*x67 - 680*x68 - 690*x69 - 700*x70 - 710*
     x71 - 720*x72 - 730*x73 - 740*x74 - 750*x75 - 760*x76 - 770*x77 - 780*x78
      - 790*x79 - 800*x80 - 810*x81 - 820*x82 - 830*x83 - 840*x84 - 850*x85 - 
     860*x86 - 870*x87 - 880*x88 - 890*x89 - 900*x90 - 910*x91 - 920*x92 - 930*
     x93 - 940*x94 - 950*x95 - 960*x96 - 970*x97 - 980*x98 - 990*x99 - 1000*
     x100 - 1010*x101 - 1020*x102 - 1030*x103 - 1040*x104 - 1050*x105 - 1060*
     x106 - 1070*x107 - 1080*x108 - 1090*x109 - 1100*x110 - 1110*x111 - 1120*
     x112 - 1130*x113 - 1140*x114 - 1150*x115 - 1160*x116 - 1170*x117 - 1180*
     x118 - 1190*x119 - 1200*x120) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 10; 
x5.up = 10; 
x6.up = 10; 
x7.up = 10; 
x8.up = 10; 
x9.up = 10; 
x10.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
