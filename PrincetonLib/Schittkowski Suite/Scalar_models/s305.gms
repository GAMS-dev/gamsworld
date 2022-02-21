*  NLP written by GAMS Convert at 07/02/05 18:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        101      101        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101        1      100        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100;

Equations  e1;


e1..  - (sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + 
     sqr(x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14)
      + sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) + sqr(
     x21) + sqr(x22) + sqr(x23) + sqr(x24) + sqr(x25) + sqr(x26) + sqr(x27) + 
     sqr(x28) + sqr(x29) + sqr(x30) + sqr(x31) + sqr(x32) + sqr(x33) + sqr(x34)
      + sqr(x35) + sqr(x36) + sqr(x37) + sqr(x38) + sqr(x39) + sqr(x40) + sqr(
     x41) + sqr(x42) + sqr(x43) + sqr(x44) + sqr(x45) + sqr(x46) + sqr(x47) + 
     sqr(x48) + sqr(x49) + sqr(x50) + sqr(x51) + sqr(x52) + sqr(x53) + sqr(x54)
      + sqr(x55) + sqr(x56) + sqr(x57) + sqr(x58) + sqr(x59) + sqr(x60) + sqr(
     x61) + sqr(x62) + sqr(x63) + sqr(x64) + sqr(x65) + sqr(x66) + sqr(x67) + 
     sqr(x68) + sqr(x69) + sqr(x70) + sqr(x71) + sqr(x72) + sqr(x73) + sqr(x74)
      + sqr(x75) + sqr(x76) + sqr(x77) + sqr(x78) + sqr(x79) + sqr(x80) + sqr(
     x81) + sqr(x82) + sqr(x83) + sqr(x84) + sqr(x85) + sqr(x86) + sqr(x87) + 
     sqr(x88) + sqr(x89) + sqr(x90) + sqr(x91) + sqr(x92) + sqr(x93) + sqr(x94)
      + sqr(x95) + sqr(x96) + sqr(x97) + sqr(x98) + sqr(x99) + sqr(x100) + sqr(
     0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5 + 3*x6 + 3.5*x7 + 4*x8 + 4.5*x9 + 5*
     x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*x14 + 7.5*x15 + 8*x16 + 8.5*x17 + 9*
     x18 + 9.5*x19 + 10*x20 + 10.5*x21 + 11*x22 + 11.5*x23 + 12*x24 + 12.5*x25
      + 13*x26 + 13.5*x27 + 14*x28 + 14.5*x29 + 15*x30 + 15.5*x31 + 16*x32 + 
     16.5*x33 + 17*x34 + 17.5*x35 + 18*x36 + 18.5*x37 + 19*x38 + 19.5*x39 + 20*
     x40 + 20.5*x41 + 21*x42 + 21.5*x43 + 22*x44 + 22.5*x45 + 23*x46 + 23.5*x47
      + 24*x48 + 24.5*x49 + 25*x50 + 25.5*x51 + 26*x52 + 26.5*x53 + 27*x54 + 
     27.5*x55 + 28*x56 + 28.5*x57 + 29*x58 + 29.5*x59 + 30*x60 + 30.5*x61 + 31*
     x62 + 31.5*x63 + 32*x64 + 32.5*x65 + 33*x66 + 33.5*x67 + 34*x68 + 34.5*x69
      + 35*x70 + 35.5*x71 + 36*x72 + 36.5*x73 + 37*x74 + 37.5*x75 + 38*x76 + 
     38.5*x77 + 39*x78 + 39.5*x79 + 40*x80 + 40.5*x81 + 41*x82 + 41.5*x83 + 42*
     x84 + 42.5*x85 + 43*x86 + 43.5*x87 + 44*x88 + 44.5*x89 + 45*x90 + 45.5*x91
      + 46*x92 + 46.5*x93 + 47*x94 + 47.5*x95 + 48*x96 + 48.5*x97 + 49*x98 + 
     49.5*x99 + 50*x100) + POWER(0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5 + 3*x6 + 
     3.5*x7 + 4*x8 + 4.5*x9 + 5*x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*x14 + 7.5*
     x15 + 8*x16 + 8.5*x17 + 9*x18 + 9.5*x19 + 10*x20 + 10.5*x21 + 11*x22 + 
     11.5*x23 + 12*x24 + 12.5*x25 + 13*x26 + 13.5*x27 + 14*x28 + 14.5*x29 + 15*
     x30 + 15.5*x31 + 16*x32 + 16.5*x33 + 17*x34 + 17.5*x35 + 18*x36 + 18.5*x37
      + 19*x38 + 19.5*x39 + 20*x40 + 20.5*x41 + 21*x42 + 21.5*x43 + 22*x44 + 
     22.5*x45 + 23*x46 + 23.5*x47 + 24*x48 + 24.5*x49 + 25*x50 + 25.5*x51 + 26*
     x52 + 26.5*x53 + 27*x54 + 27.5*x55 + 28*x56 + 28.5*x57 + 29*x58 + 29.5*x59
      + 30*x60 + 30.5*x61 + 31*x62 + 31.5*x63 + 32*x64 + 32.5*x65 + 33*x66 + 
     33.5*x67 + 34*x68 + 34.5*x69 + 35*x70 + 35.5*x71 + 36*x72 + 36.5*x73 + 37*
     x74 + 37.5*x75 + 38*x76 + 38.5*x77 + 39*x78 + 39.5*x79 + 40*x80 + 40.5*x81
      + 41*x82 + 41.5*x83 + 42*x84 + 42.5*x85 + 43*x86 + 43.5*x87 + 44*x88 + 
     44.5*x89 + 45*x90 + 45.5*x91 + 46*x92 + 46.5*x93 + 47*x94 + 47.5*x95 + 48*
     x96 + 48.5*x97 + 49*x98 + 49.5*x99 + 50*x100,4)) + objvar =E= 0;

* set non default bounds


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

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
