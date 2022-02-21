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
*        121      110       11        0
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

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114
          ,x115,x116,x117,x118,x119,x120;

Equations  e1;


e1..  - (exp(0.01*x1*x2) + exp(0.02*x2*x3) + exp(0.03*x3*x4) + exp(0.04*x4*x5)
      + exp(0.05*x5*x6) + exp(0.06*x6*x7) + exp(0.07*x7*x8) + exp(0.08*x8*x9)
      + exp(0.09*x9*x10) + exp(0.1*x10*x11) - 10*x1 - 20*x2 - 30*x3 - 40*x4 - 
     50*x5 - 60*x6 - 70*x7 - 80*x8 - 90*x9 - 100*x10 - 110*x11) + 120*x12
      + 130*x13 + 140*x14 + 150*x15 + 160*x16 + 170*x17 + 180*x18 + 190*x19
      + 200*x20 + 210*x21 + 220*x22 + 230*x23 + 240*x24 + 250*x25 + 260*x26
      + 270*x27 + 280*x28 + 290*x29 + 300*x30 + 310*x31 + 320*x32 + 330*x33
      + 340*x34 + 350*x35 + 360*x36 + 370*x37 + 380*x38 + 390*x39 + 400*x40
      + 410*x41 + 420*x42 + 430*x43 + 440*x44 + 450*x45 + 460*x46 + 470*x47
      + 480*x48 + 490*x49 + 500*x50 + 510*x51 + 520*x52 + 530*x53 + 540*x54
      + 550*x55 + 560*x56 + 570*x57 + 580*x58 + 590*x59 + 600*x60 + 610*x61
      + 620*x62 + 630*x63 + 640*x64 + 650*x65 + 660*x66 + 670*x67 + 680*x68
      + 690*x69 + 700*x70 + 710*x71 + 720*x72 + 730*x73 + 740*x74 + 750*x75
      + 760*x76 + 770*x77 + 780*x78 + 790*x79 + 800*x80 + 810*x81 + 820*x82
      + 830*x83 + 840*x84 + 850*x85 + 860*x86 + 870*x87 + 880*x88 + 890*x89
      + 900*x90 + 910*x91 + 920*x92 + 930*x93 + 940*x94 + 950*x95 + 960*x96
      + 970*x97 + 980*x98 + 990*x99 + 1000*x100 + 1010*x101 + 1020*x102
      + 1030*x103 + 1040*x104 + 1050*x105 + 1060*x106 + 1070*x107 + 1080*x108
      + 1090*x109 + 1100*x110 + 1110*x111 + 1120*x112 + 1130*x113 + 1140*x114
      + 1150*x115 + 1160*x116 + 1170*x117 + 1180*x118 + 1190*x119 + 1200*x120
      + objvar =E= 0;

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
x11.up = 10; 
x12.up = 10; 
x13.up = 10; 
x14.up = 10; 
x15.up = 10; 
x16.up = 10; 
x17.up = 10; 
x18.up = 10; 
x19.up = 10; 
x20.up = 10; 
x21.up = 10; 
x22.up = 10; 
x23.up = 10; 
x24.up = 10; 
x25.up = 10; 
x26.up = 10; 
x27.up = 10; 
x28.up = 10; 
x29.up = 10; 
x30.up = 10; 
x31.up = 10; 
x32.up = 10; 
x33.up = 10; 
x34.up = 10; 
x35.up = 10; 
x36.up = 10; 
x37.up = 10; 
x38.up = 10; 
x39.up = 10; 
x40.up = 10; 
x41.up = 10; 
x42.up = 10; 
x43.up = 10; 
x44.up = 10; 
x45.up = 10; 
x46.up = 10; 
x47.up = 10; 
x48.up = 10; 
x49.up = 10; 
x50.up = 10; 
x51.up = 10; 
x52.up = 10; 
x53.up = 10; 
x54.up = 10; 
x55.up = 10; 
x56.up = 10; 
x57.up = 10; 
x58.up = 10; 
x59.up = 10; 
x60.up = 10; 
x61.up = 10; 
x62.up = 10; 
x63.up = 10; 
x64.up = 10; 
x65.up = 10; 
x66.up = 10; 
x67.up = 10; 
x68.up = 10; 
x69.up = 10; 
x70.up = 10; 
x71.up = 10; 
x72.up = 10; 
x73.up = 10; 
x74.up = 10; 
x75.up = 10; 
x76.up = 10; 
x77.up = 10; 
x78.up = 10; 
x79.up = 10; 
x80.up = 10; 
x81.up = 10; 
x82.up = 10; 
x83.up = 10; 
x84.up = 10; 
x85.up = 10; 
x86.up = 10; 
x87.up = 10; 
x88.up = 10; 
x89.up = 10; 
x90.up = 10; 
x91.up = 10; 
x92.up = 10; 
x93.up = 10; 
x94.up = 10; 
x95.up = 10; 
x96.up = 10; 
x97.up = 10; 
x98.up = 10; 
x99.up = 10; 
x100.up = 10; 
x101.up = 10; 
x102.up = 10; 
x103.up = 10; 
x104.up = 10; 
x105.up = 10; 
x106.up = 10; 
x107.up = 10; 
x108.up = 10; 
x109.up = 10; 
x110.up = 10; 
x111.up = 10; 
x112.up = 10; 
x113.up = 10; 
x114.up = 10; 
x115.up = 10; 
x116.up = 10; 
x117.up = 10; 
x118.up = 10; 
x119.up = 10; 
x120.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
