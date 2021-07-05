*  NLP written by GAMS Convert at 10/06/06 11:32:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        102      102        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        102      102        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        302        2      300        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102;


e1.. x1*x1 + x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*x7 + x8*x8 + x9*x9 + 
     x10*x10 + x11*x11 + x12*x12 + x13*x13 + x14*x14 + x15*x15 + x16*x16 + x17*
     x17 + x18*x18 + x19*x19 + x20*x20 + x21*x21 + x22*x22 + x23*x23 + x24*x24
      + x25*x25 + x26*x26 + x27*x27 + x28*x28 + x29*x29 + x30*x30 + x31*x31 + 
     x32*x32 + x33*x33 + x34*x34 + x35*x35 + x36*x36 + x37*x37 + x38*x38 + x39*
     x39 + x40*x40 + x41*x41 + x42*x42 + x43*x43 + x44*x44 + x45*x45 + x46*x46
      + x47*x47 + x48*x48 + x49*x49 + x50*x50 + x51*x51 + x52*x52 + x53*x53 + 
     x54*x54 + x55*x55 + x56*x56 + x57*x57 + x58*x58 + x59*x59 + x60*x60 + x61*
     x61 + x62*x62 + x63*x63 + x64*x64 + x65*x65 + x66*x66 + x67*x67 + x68*x68
      + x69*x69 + x70*x70 + x71*x71 + x72*x72 + x73*x73 + x74*x74 + x75*x75 + 
     x76*x76 + x77*x77 + x78*x78 + x79*x79 + x80*x80 + x81*x81 + x82*x82 + x83*
     x83 + x84*x84 + x85*x85 + x86*x86 + x87*x87 + x88*x88 + x89*x89 + x90*x90
      + x91*x91 + x92*x92 + x93*x93 + x94*x94 + x95*x95 + x96*x96 + x97*x97 + 
     x98*x98 + x99*x99 + x100*x100 =E= 1;

e2.. x1*x101 - x1 =E= 0;

e3.. x2*x101 - 2*x2 =E= 0;

e4.. x3*x101 - 3*x3 =E= 0;

e5.. x4*x101 - 4*x4 =E= 0;

e6.. x5*x101 - 5*x5 =E= 0;

e7.. x6*x101 - 6*x6 =E= 0;

e8.. x7*x101 - 7*x7 =E= 0;

e9.. x8*x101 - 8*x8 =E= 0;

e10.. x9*x101 - 9*x9 =E= 0;

e11.. x10*x101 - 10*x10 =E= 0;

e12.. x11*x101 - 11*x11 =E= 0;

e13.. x12*x101 - 12*x12 =E= 0;

e14.. x13*x101 - 13*x13 =E= 0;

e15.. x14*x101 - 14*x14 =E= 0;

e16.. x15*x101 - 15*x15 =E= 0;

e17.. x16*x101 - 16*x16 =E= 0;

e18.. x17*x101 - 17*x17 =E= 0;

e19.. x18*x101 - 18*x18 =E= 0;

e20.. x19*x101 - 19*x19 =E= 0;

e21.. x20*x101 - 20*x20 =E= 0;

e22.. x21*x101 - 21*x21 =E= 0;

e23.. x22*x101 - 22*x22 =E= 0;

e24.. x23*x101 - 23*x23 =E= 0;

e25.. x24*x101 - 24*x24 =E= 0;

e26.. x25*x101 - 25*x25 =E= 0;

e27.. x26*x101 - 26*x26 =E= 0;

e28.. x27*x101 - 27*x27 =E= 0;

e29.. x28*x101 - 28*x28 =E= 0;

e30.. x29*x101 - 29*x29 =E= 0;

e31.. x30*x101 - 30*x30 =E= 0;

e32.. x31*x101 - 31*x31 =E= 0;

e33.. x32*x101 - 32*x32 =E= 0;

e34.. x33*x101 - 33*x33 =E= 0;

e35.. x34*x101 - 34*x34 =E= 0;

e36.. x35*x101 - 35*x35 =E= 0;

e37.. x36*x101 - 36*x36 =E= 0;

e38.. x37*x101 - 37*x37 =E= 0;

e39.. x38*x101 - 38*x38 =E= 0;

e40.. x39*x101 - 39*x39 =E= 0;

e41.. x40*x101 - 40*x40 =E= 0;

e42.. x41*x101 - 41*x41 =E= 0;

e43.. x42*x101 - 42*x42 =E= 0;

e44.. x43*x101 - 43*x43 =E= 0;

e45.. x44*x101 - 44*x44 =E= 0;

e46.. x45*x101 - 45*x45 =E= 0;

e47.. x46*x101 - 46*x46 =E= 0;

e48.. x47*x101 - 47*x47 =E= 0;

e49.. x48*x101 - 48*x48 =E= 0;

e50.. x49*x101 - 49*x49 =E= 0;

e51.. x50*x101 - 50*x50 =E= 0;

e52.. x51*x101 - 51*x51 =E= 0;

e53.. x52*x101 - 52*x52 =E= 0;

e54.. x53*x101 - 53*x53 =E= 0;

e55.. x54*x101 - 54*x54 =E= 0;

e56.. x55*x101 - 55*x55 =E= 0;

e57.. x56*x101 - 56*x56 =E= 0;

e58.. x57*x101 - 57*x57 =E= 0;

e59.. x58*x101 - 58*x58 =E= 0;

e60.. x59*x101 - 59*x59 =E= 0;

e61.. x60*x101 - 60*x60 =E= 0;

e62.. x61*x101 - 61*x61 =E= 0;

e63.. x62*x101 - 62*x62 =E= 0;

e64.. x63*x101 - 63*x63 =E= 0;

e65.. x64*x101 - 64*x64 =E= 0;

e66.. x65*x101 - 65*x65 =E= 0;

e67.. x66*x101 - 66*x66 =E= 0;

e68.. x67*x101 - 67*x67 =E= 0;

e69.. x68*x101 - 68*x68 =E= 0;

e70.. x69*x101 - 69*x69 =E= 0;

e71.. x70*x101 - 70*x70 =E= 0;

e72.. x71*x101 - 71*x71 =E= 0;

e73.. x72*x101 - 72*x72 =E= 0;

e74.. x73*x101 - 73*x73 =E= 0;

e75.. x74*x101 - 74*x74 =E= 0;

e76.. x75*x101 - 75*x75 =E= 0;

e77.. x76*x101 - 76*x76 =E= 0;

e78.. x77*x101 - 77*x77 =E= 0;

e79.. x78*x101 - 78*x78 =E= 0;

e80.. x79*x101 - 79*x79 =E= 0;

e81.. x80*x101 - 80*x80 =E= 0;

e82.. x81*x101 - 81*x81 =E= 0;

e83.. x82*x101 - 82*x82 =E= 0;

e84.. x83*x101 - 83*x83 =E= 0;

e85.. x84*x101 - 84*x84 =E= 0;

e86.. x85*x101 - 85*x85 =E= 0;

e87.. x86*x101 - 86*x86 =E= 0;

e88.. x87*x101 - 87*x87 =E= 0;

e89.. x88*x101 - 88*x88 =E= 0;

e90.. x89*x101 - 89*x89 =E= 0;

e91.. x90*x101 - 90*x90 =E= 0;

e92.. x91*x101 - 91*x91 =E= 0;

e93.. x92*x101 - 92*x92 =E= 0;

e94.. x93*x101 - 93*x93 =E= 0;

e95.. x94*x101 - 94*x94 =E= 0;

e96.. x95*x101 - 95*x95 =E= 0;

e97.. x96*x101 - 96*x96 =E= 0;

e98.. x97*x101 - 97*x97 =E= 0;

e99.. x98*x101 - 98*x98 =E= 0;

e100.. x99*x101 - 99*x99 =E= 0;

e101.. x100*x101 - 100*x100 =E= 0;

e102..  - x101 + objvar =E= 0;

* set non default bounds

x1.lo = -1; x1.up = 1; 
x2.lo = -1; x2.up = 1; 
x3.lo = -1; x3.up = 1; 
x4.lo = -1; x4.up = 1; 
x5.lo = -1; x5.up = 1; 
x6.lo = -1; x6.up = 1; 
x7.lo = -1; x7.up = 1; 
x8.lo = -1; x8.up = 1; 
x9.lo = -1; x9.up = 1; 
x10.lo = -1; x10.up = 1; 
x11.lo = -1; x11.up = 1; 
x12.lo = -1; x12.up = 1; 
x13.lo = -1; x13.up = 1; 
x14.lo = -1; x14.up = 1; 
x15.lo = -1; x15.up = 1; 
x16.lo = -1; x16.up = 1; 
x17.lo = -1; x17.up = 1; 
x18.lo = -1; x18.up = 1; 
x19.lo = -1; x19.up = 1; 
x20.lo = -1; x20.up = 1; 
x21.lo = -1; x21.up = 1; 
x22.lo = -1; x22.up = 1; 
x23.lo = -1; x23.up = 1; 
x24.lo = -1; x24.up = 1; 
x25.lo = -1; x25.up = 1; 
x26.lo = -1; x26.up = 1; 
x27.lo = -1; x27.up = 1; 
x28.lo = -1; x28.up = 1; 
x29.lo = -1; x29.up = 1; 
x30.lo = -1; x30.up = 1; 
x31.lo = -1; x31.up = 1; 
x32.lo = -1; x32.up = 1; 
x33.lo = -1; x33.up = 1; 
x34.lo = -1; x34.up = 1; 
x35.lo = -1; x35.up = 1; 
x36.lo = -1; x36.up = 1; 
x37.lo = -1; x37.up = 1; 
x38.lo = -1; x38.up = 1; 
x39.lo = -1; x39.up = 1; 
x40.lo = -1; x40.up = 1; 
x41.lo = -1; x41.up = 1; 
x42.lo = -1; x42.up = 1; 
x43.lo = -1; x43.up = 1; 
x44.lo = -1; x44.up = 1; 
x45.lo = -1; x45.up = 1; 
x46.lo = -1; x46.up = 1; 
x47.lo = -1; x47.up = 1; 
x48.lo = -1; x48.up = 1; 
x49.lo = -1; x49.up = 1; 
x50.lo = -1; x50.up = 1; 
x51.lo = -1; x51.up = 1; 
x52.lo = -1; x52.up = 1; 
x53.lo = -1; x53.up = 1; 
x54.lo = -1; x54.up = 1; 
x55.lo = -1; x55.up = 1; 
x56.lo = -1; x56.up = 1; 
x57.lo = -1; x57.up = 1; 
x58.lo = -1; x58.up = 1; 
x59.lo = -1; x59.up = 1; 
x60.lo = -1; x60.up = 1; 
x61.lo = -1; x61.up = 1; 
x62.lo = -1; x62.up = 1; 
x63.lo = -1; x63.up = 1; 
x64.lo = -1; x64.up = 1; 
x65.lo = -1; x65.up = 1; 
x66.lo = -1; x66.up = 1; 
x67.lo = -1; x67.up = 1; 
x68.lo = -1; x68.up = 1; 
x69.lo = -1; x69.up = 1; 
x70.lo = -1; x70.up = 1; 
x71.lo = -1; x71.up = 1; 
x72.lo = -1; x72.up = 1; 
x73.lo = -1; x73.up = 1; 
x74.lo = -1; x74.up = 1; 
x75.lo = -1; x75.up = 1; 
x76.lo = -1; x76.up = 1; 
x77.lo = -1; x77.up = 1; 
x78.lo = -1; x78.up = 1; 
x79.lo = -1; x79.up = 1; 
x80.lo = -1; x80.up = 1; 
x81.lo = -1; x81.up = 1; 
x82.lo = -1; x82.up = 1; 
x83.lo = -1; x83.up = 1; 
x84.lo = -1; x84.up = 1; 
x85.lo = -1; x85.up = 1; 
x86.lo = -1; x86.up = 1; 
x87.lo = -1; x87.up = 1; 
x88.lo = -1; x88.up = 1; 
x89.lo = -1; x89.up = 1; 
x90.lo = -1; x90.up = 1; 
x91.lo = -1; x91.up = 1; 
x92.lo = -1; x92.up = 1; 
x93.lo = -1; x93.up = 1; 
x94.lo = -1; x94.up = 1; 
x95.lo = -1; x95.up = 1; 
x96.lo = -1; x96.up = 1; 
x97.lo = -1; x97.up = 1; 
x98.lo = -1; x98.up = 1; 
x99.lo = -1; x99.up = 1; 
x100.lo = -1; x100.up = 1; 
x101.lo = -1; x101.up = 1; 

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
x101.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;