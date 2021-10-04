*  NLP written by GAMS Convert at 10/06/06 11:47:18
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


e1..  - (0.1*POWER(x1*x2,4) - 10*x1 + 0.2*POWER(x2*x3,4) - 20*x2 + 0.3*POWER(x3
     *x4,4) - 30*x3 + 0.4*POWER(x4*x5,4) - 40*x4 + 0.5*POWER(x5*x6,4) - 50*x5
      + 0.6*POWER(x6*x7,4) - 60*x6 + 0.7*POWER(x7*x8,4) - 70*x7 + 0.8*POWER(x8*
     x9,4) - 80*x8 + 0.9*POWER(x9*x10,4) - 90*x9 + POWER(x10*x11,4) - 100*x10
      + 4*sqr(x11) + 2*sqr(x120) + x11*x120 - 110*x11 + 4*sqr(x12) + 2*sqr(x120
     ) + x12*x120 - 120*x12 + 4*sqr(x13) + 2*sqr(x120) + x13*x120 - 130*x13 + 4
     *sqr(x14) + 2*sqr(x120) + x14*x120 - 140*x14 + 4*sqr(x15) + 2*sqr(x120) + 
     x15*x120 - 150*x15 + 4*sqr(x16) + 2*sqr(x120) + x16*x120 - 160*x16 + 4*
     sqr(x17) + 2*sqr(x120) + x17*x120 - 170*x17 + 4*sqr(x18) + 2*sqr(x120) + 
     x18*x120 - 180*x18 + 4*sqr(x19) + 2*sqr(x120) + x19*x120 - 190*x19 + 4*
     sqr(x20) + 2*sqr(x120) + x20*x120 - 200*x20 + 4*sqr(x21) + 2*sqr(x120) + 
     x21*x120 - 210*x21 + 4*sqr(x22) + 2*sqr(x120) + x22*x120 - 220*x22 + 4*
     sqr(x23) + 2*sqr(x120) + x23*x120 - 230*x23 + 4*sqr(x24) + 2*sqr(x120) + 
     x24*x120 - 240*x24 + 4*sqr(x25) + 2*sqr(x120) + x25*x120 - 250*x25 + 4*
     sqr(x26) + 2*sqr(x120) + x26*x120 - 260*x26 + 4*sqr(x27) + 2*sqr(x120) + 
     x27*x120 - 270*x27 + 4*sqr(x28) + 2*sqr(x120) + x28*x120 - 280*x28 + 4*
     sqr(x29) + 2*sqr(x120) + x29*x120 - 290*x29 + 4*sqr(x30) + 2*sqr(x120) + 
     x30*x120 - 300*x30 + 4*sqr(x31) + 2*sqr(x120) + x31*x120 - 310*x31 + 4*
     sqr(x32) + 2*sqr(x120) + x32*x120 - 320*x32 + 4*sqr(x33) + 2*sqr(x120) + 
     x33*x120 - 330*x33 + 4*sqr(x34) + 2*sqr(x120) + x34*x120 - 340*x34 + 4*
     sqr(x35) + 2*sqr(x120) + x35*x120 - 350*x35 + 4*sqr(x36) + 2*sqr(x120) + 
     x36*x120 - 360*x36 + 4*sqr(x37) + 2*sqr(x120) + x37*x120 - 370*x37 + 4*
     sqr(x38) + 2*sqr(x120) + x38*x120 - 380*x38 + 4*sqr(x39) + 2*sqr(x120) + 
     x39*x120 - 390*x39 + 4*sqr(x40) + 2*sqr(x120) + x40*x120 - 400*x40 + 4*
     sqr(x41) + 2*sqr(x120) + x41*x120 - 410*x41 + 4*sqr(x42) + 2*sqr(x120) + 
     x42*x120 - 420*x42 + 4*sqr(x43) + 2*sqr(x120) + x43*x120 - 430*x43 + 4*
     sqr(x44) + 2*sqr(x120) + x44*x120 - 440*x44 + 4*sqr(x45) + 2*sqr(x120) + 
     x45*x120 - 450*x45 + 4*sqr(x46) + 2*sqr(x120) + x46*x120 - 460*x46 + 4*
     sqr(x47) + 2*sqr(x120) + x47*x120 - 470*x47 + 4*sqr(x48) + 2*sqr(x120) + 
     x48*x120 - 480*x48 + 4*sqr(x49) + 2*sqr(x120) + x49*x120 - 490*x49 + 4*
     sqr(x50) + 2*sqr(x120) + x50*x120 - 500*x50 + 4*sqr(x51) + 2*sqr(x120) + 
     x51*x120 - 510*x51 + 4*sqr(x52) + 2*sqr(x120) + x52*x120 - 520*x52 + 4*
     sqr(x53) + 2*sqr(x120) + x53*x120 - 530*x53 + 4*sqr(x54) + 2*sqr(x120) + 
     x54*x120 - 540*x54 + 4*sqr(x55) + 2*sqr(x120) + x55*x120 - 550*x55 + 4*
     sqr(x56) + 2*sqr(x120) + x56*x120 - 560*x56 + 4*sqr(x57) + 2*sqr(x120) + 
     x57*x120 - 570*x57 + 4*sqr(x58) + 2*sqr(x120) + x58*x120 - 580*x58 + 4*
     sqr(x59) + 2*sqr(x120) + x59*x120 - 590*x59 + 4*sqr(x60) + 2*sqr(x120) + 
     x60*x120 - 600*x60 + 4*sqr(x61) + 2*sqr(x120) + x61*x120 - 610*x61 + 4*
     sqr(x62) + 2*sqr(x120) + x62*x120 - 620*x62 + 4*sqr(x63) + 2*sqr(x120) + 
     x63*x120 - 630*x63 + 4*sqr(x64) + 2*sqr(x120) + x64*x120 - 640*x64 + 4*
     sqr(x65) + 2*sqr(x120) + x65*x120 - 650*x65 + 4*sqr(x66) + 2*sqr(x120) + 
     x66*x120 - 660*x66 + 4*sqr(x67) + 2*sqr(x120) + x67*x120 - 670*x67 + 4*
     sqr(x68) + 2*sqr(x120) + x68*x120 - 680*x68 + 4*sqr(x69) + 2*sqr(x120) + 
     x69*x120 - 690*x69 + 4*sqr(x70) + 2*sqr(x120) + x70*x120 - 700*x70 + 4*
     sqr(x71) + 2*sqr(x120) + x71*x120 - 710*x71 + 4*sqr(x72) + 2*sqr(x120) + 
     x72*x120 - 720*x72 + 4*sqr(x73) + 2*sqr(x120) + x73*x120 - 730*x73 + 4*
     sqr(x74) + 2*sqr(x120) + x74*x120 - 740*x74 + 4*sqr(x75) + 2*sqr(x120) + 
     x75*x120 - 750*x75 + 4*sqr(x76) + 2*sqr(x120) + x76*x120 - 760*x76 + 4*
     sqr(x77) + 2*sqr(x120) + x77*x120 - 770*x77 + 4*sqr(x78) + 2*sqr(x120) + 
     x78*x120 - 780*x78 + 4*sqr(x79) + 2*sqr(x120) + x79*x120 - 790*x79 + 4*
     sqr(x80) + 2*sqr(x120) + x80*x120 - 800*x80 + 4*sqr(x81) + 2*sqr(x120) + 
     x81*x120 - 810*x81 + 4*sqr(x82) + 2*sqr(x120) + x82*x120 - 820*x82 + 4*
     sqr(x83) + 2*sqr(x120) + x83*x120 - 830*x83 + 4*sqr(x84) + 2*sqr(x120) + 
     x84*x120 - 840*x84 + 4*sqr(x85) + 2*sqr(x120) + x85*x120 - 850*x85 + 4*
     sqr(x86) + 2*sqr(x120) + x86*x120 - 860*x86 + 4*sqr(x87) + 2*sqr(x120) + 
     x87*x120 - 870*x87 + 4*sqr(x88) + 2*sqr(x120) + x88*x120 - 880*x88 + 4*
     sqr(x89) + 2*sqr(x120) + x89*x120 - 890*x89 + 4*sqr(x90) + 2*sqr(x120) + 
     x90*x120 - 900*x90 + 4*sqr(x91) + 2*sqr(x120) + x91*x120 - 910*x91 + 4*
     sqr(x92) + 2*sqr(x120) + x92*x120 - 920*x92 + 4*sqr(x93) + 2*sqr(x120) + 
     x93*x120 - 930*x93 + 4*sqr(x94) + 2*sqr(x120) + x94*x120 - 940*x94 + 4*
     sqr(x95) + 2*sqr(x120) + x95*x120 - 950*x95 + 4*sqr(x96) + 2*sqr(x120) + 
     x96*x120 - 960*x96 + 4*sqr(x97) + 2*sqr(x120) + x97*x120 - 970*x97 + 4*
     sqr(x98) + 2*sqr(x120) + x98*x120 - 980*x98 + 4*sqr(x99) + 2*sqr(x120) + 
     x99*x120 - 990*x99 + 4*sqr(x100) + 2*sqr(x120) + x100*x120 - 1000*x100 + 4
     *sqr(x101) + 2*sqr(x120) + x101*x120 - 1010*x101 + 4*sqr(x102) + 2*sqr(
     x120) + x102*x120 - 1020*x102 + 4*sqr(x103) + 2*sqr(x120) + x103*x120 - 
     1030*x103 + 4*sqr(x104) + 2*sqr(x120) + x104*x120 - 1040*x104 + 4*sqr(x105
     ) + 2*sqr(x120) + x105*x120 - 1050*x105 + 4*sqr(x106) + 2*sqr(x120) + x106
     *x120 - 1060*x106 + 4*sqr(x107) + 2*sqr(x120) + x107*x120 - 1070*x107 + 4*
     sqr(x108) + 2*sqr(x120) + x108*x120 - 1080*x108 + 4*sqr(x109) + 2*sqr(x120
     ) + x109*x120 - 1090*x109 + 4*sqr(x110) + 2*sqr(x120) + x110*x120 - 1100*
     x110 + 4*sqr(x111) + 2*sqr(x120) + x111*x120 - 1110*x111 + 4*sqr(x112) + 2
     *sqr(x120) + x112*x120 - 1120*x112 + 4*sqr(x113) + 2*sqr(x120) + x113*x120
      - 1130*x113 + 4*sqr(x114) + 2*sqr(x120) + x114*x120 - 1140*x114 + 4*sqr(
     x115) + 2*sqr(x120) + x115*x120 - 1150*x115 + 4*sqr(x116) + 2*sqr(x120) + 
     x116*x120 - 1160*x116 + 4*sqr(x117) + 2*sqr(x120) + x117*x120 - 1170*x117
      + 4*sqr(x118) + 2*sqr(x120) + x118*x120 - 1180*x118 + 4*sqr(x119) + 2*
     sqr(x120) + x119*x120 - 1190*x119) + objvar =E= 0;

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
