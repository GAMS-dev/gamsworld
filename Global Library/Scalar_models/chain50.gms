*  NLP written by GAMS Convert at 10/01/01 11:46:10
*  
*  Equation counts
*     Total       E       G       L       N       X
*        52      52       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       103     103       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       354     201     153       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102
          ,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52;


e1..  - 0.01*(x1*sqrt(1 + sqr(x52)) + x2*sqrt(1 + sqr(x53)) + x2*sqrt(1 + sqr(
     x53)) + x3*sqrt(1 + sqr(x54)) + x3*sqrt(1 + sqr(x54)) + x4*sqrt(1 + sqr(
     x55)) + x4*sqrt(1 + sqr(x55)) + x5*sqrt(1 + sqr(x56)) + x5*sqrt(1 + sqr(
     x56)) + x6*sqrt(1 + sqr(x57)) + x6*sqrt(1 + sqr(x57)) + x7*sqrt(1 + sqr(
     x58)) + x7*sqrt(1 + sqr(x58)) + x8*sqrt(1 + sqr(x59)) + x8*sqrt(1 + sqr(
     x59)) + x9*sqrt(1 + sqr(x60)) + x9*sqrt(1 + sqr(x60)) + x10*sqrt(1 + sqr(
     x61)) + x10*sqrt(1 + sqr(x61)) + x11*sqrt(1 + sqr(x62)) + x11*sqrt(1 + 
     sqr(x62)) + x12*sqrt(1 + sqr(x63)) + x12*sqrt(1 + sqr(x63)) + x13*sqrt(1
      + sqr(x64)) + x13*sqrt(1 + sqr(x64)) + x14*sqrt(1 + sqr(x65)) + x14*sqrt(
     1 + sqr(x65)) + x15*sqrt(1 + sqr(x66)) + x15*sqrt(1 + sqr(x66)) + x16*
     sqrt(1 + sqr(x67)) + x16*sqrt(1 + sqr(x67)) + x17*sqrt(1 + sqr(x68)) + x17
     *sqrt(1 + sqr(x68)) + x18*sqrt(1 + sqr(x69)) + x18*sqrt(1 + sqr(x69)) + 
     x19*sqrt(1 + sqr(x70)) + x19*sqrt(1 + sqr(x70)) + x20*sqrt(1 + sqr(x71))
      + x20*sqrt(1 + sqr(x71)) + x21*sqrt(1 + sqr(x72)) + x21*sqrt(1 + sqr(x72)
     ) + x22*sqrt(1 + sqr(x73)) + x22*sqrt(1 + sqr(x73)) + x23*sqrt(1 + sqr(x74
     )) + x23*sqrt(1 + sqr(x74)) + x24*sqrt(1 + sqr(x75)) + x24*sqrt(1 + sqr(
     x75)) + x25*sqrt(1 + sqr(x76)) + x25*sqrt(1 + sqr(x76)) + x26*sqrt(1 + 
     sqr(x77)) + x26*sqrt(1 + sqr(x77)) + x27*sqrt(1 + sqr(x78)) + x27*sqrt(1
      + sqr(x78)) + x28*sqrt(1 + sqr(x79)) + x28*sqrt(1 + sqr(x79)) + x29*sqrt(
     1 + sqr(x80)) + x29*sqrt(1 + sqr(x80)) + x30*sqrt(1 + sqr(x81)) + x30*
     sqrt(1 + sqr(x81)) + x31*sqrt(1 + sqr(x82)) + x31*sqrt(1 + sqr(x82)) + x32
     *sqrt(1 + sqr(x83)) + x32*sqrt(1 + sqr(x83)) + x33*sqrt(1 + sqr(x84)) + 
     x33*sqrt(1 + sqr(x84)) + x34*sqrt(1 + sqr(x85)) + x34*sqrt(1 + sqr(x85))
      + x35*sqrt(1 + sqr(x86)) + x35*sqrt(1 + sqr(x86)) + x36*sqrt(1 + sqr(x87)
     ) + x36*sqrt(1 + sqr(x87)) + x37*sqrt(1 + sqr(x88)) + x37*sqrt(1 + sqr(x88
     )) + x38*sqrt(1 + sqr(x89)) + x38*sqrt(1 + sqr(x89)) + x39*sqrt(1 + sqr(
     x90)) + x39*sqrt(1 + sqr(x90)) + x40*sqrt(1 + sqr(x91)) + x40*sqrt(1 + 
     sqr(x91)) + x41*sqrt(1 + sqr(x92)) + x41*sqrt(1 + sqr(x92)) + x42*sqrt(1
      + sqr(x93)) + x42*sqrt(1 + sqr(x93)) + x43*sqrt(1 + sqr(x94)) + x43*sqrt(
     1 + sqr(x94)) + x44*sqrt(1 + sqr(x95)) + x44*sqrt(1 + sqr(x95)) + x45*
     sqrt(1 + sqr(x96)) + x45*sqrt(1 + sqr(x96)) + x46*sqrt(1 + sqr(x97)) + x46
     *sqrt(1 + sqr(x97)) + x47*sqrt(1 + sqr(x98)) + x47*sqrt(1 + sqr(x98)) + 
     x48*sqrt(1 + sqr(x99)) + x48*sqrt(1 + sqr(x99)) + x49*sqrt(1 + sqr(x100))
      + x49*sqrt(1 + sqr(x100)) + x50*sqrt(1 + sqr(x101)) + x50*sqrt(1 + sqr(
     x101)) + x51*sqrt(1 + sqr(x102))) + objvar =E= 0;

e2..  - x1 + x2 - 0.01*x52 - 0.01*x53 =E= 0;

e3..  - x2 + x3 - 0.01*x53 - 0.01*x54 =E= 0;

e4..  - x3 + x4 - 0.01*x54 - 0.01*x55 =E= 0;

e5..  - x4 + x5 - 0.01*x55 - 0.01*x56 =E= 0;

e6..  - x5 + x6 - 0.01*x56 - 0.01*x57 =E= 0;

e7..  - x6 + x7 - 0.01*x57 - 0.01*x58 =E= 0;

e8..  - x7 + x8 - 0.01*x58 - 0.01*x59 =E= 0;

e9..  - x8 + x9 - 0.01*x59 - 0.01*x60 =E= 0;

e10..  - x9 + x10 - 0.01*x60 - 0.01*x61 =E= 0;

e11..  - x10 + x11 - 0.01*x61 - 0.01*x62 =E= 0;

e12..  - x11 + x12 - 0.01*x62 - 0.01*x63 =E= 0;

e13..  - x12 + x13 - 0.01*x63 - 0.01*x64 =E= 0;

e14..  - x13 + x14 - 0.01*x64 - 0.01*x65 =E= 0;

e15..  - x14 + x15 - 0.01*x65 - 0.01*x66 =E= 0;

e16..  - x15 + x16 - 0.01*x66 - 0.01*x67 =E= 0;

e17..  - x16 + x17 - 0.01*x67 - 0.01*x68 =E= 0;

e18..  - x17 + x18 - 0.01*x68 - 0.01*x69 =E= 0;

e19..  - x18 + x19 - 0.01*x69 - 0.01*x70 =E= 0;

e20..  - x19 + x20 - 0.01*x70 - 0.01*x71 =E= 0;

e21..  - x20 + x21 - 0.01*x71 - 0.01*x72 =E= 0;

e22..  - x21 + x22 - 0.01*x72 - 0.01*x73 =E= 0;

e23..  - x22 + x23 - 0.01*x73 - 0.01*x74 =E= 0;

e24..  - x23 + x24 - 0.01*x74 - 0.01*x75 =E= 0;

e25..  - x24 + x25 - 0.01*x75 - 0.01*x76 =E= 0;

e26..  - x25 + x26 - 0.01*x76 - 0.01*x77 =E= 0;

e27..  - x26 + x27 - 0.01*x77 - 0.01*x78 =E= 0;

e28..  - x27 + x28 - 0.01*x78 - 0.01*x79 =E= 0;

e29..  - x28 + x29 - 0.01*x79 - 0.01*x80 =E= 0;

e30..  - x29 + x30 - 0.01*x80 - 0.01*x81 =E= 0;

e31..  - x30 + x31 - 0.01*x81 - 0.01*x82 =E= 0;

e32..  - x31 + x32 - 0.01*x82 - 0.01*x83 =E= 0;

e33..  - x32 + x33 - 0.01*x83 - 0.01*x84 =E= 0;

e34..  - x33 + x34 - 0.01*x84 - 0.01*x85 =E= 0;

e35..  - x34 + x35 - 0.01*x85 - 0.01*x86 =E= 0;

e36..  - x35 + x36 - 0.01*x86 - 0.01*x87 =E= 0;

e37..  - x36 + x37 - 0.01*x87 - 0.01*x88 =E= 0;

e38..  - x37 + x38 - 0.01*x88 - 0.01*x89 =E= 0;

e39..  - x38 + x39 - 0.01*x89 - 0.01*x90 =E= 0;

e40..  - x39 + x40 - 0.01*x90 - 0.01*x91 =E= 0;

e41..  - x40 + x41 - 0.01*x91 - 0.01*x92 =E= 0;

e42..  - x41 + x42 - 0.01*x92 - 0.01*x93 =E= 0;

e43..  - x42 + x43 - 0.01*x93 - 0.01*x94 =E= 0;

e44..  - x43 + x44 - 0.01*x94 - 0.01*x95 =E= 0;

e45..  - x44 + x45 - 0.01*x95 - 0.01*x96 =E= 0;

e46..  - x45 + x46 - 0.01*x96 - 0.01*x97 =E= 0;

e47..  - x46 + x47 - 0.01*x97 - 0.01*x98 =E= 0;

e48..  - x47 + x48 - 0.01*x98 - 0.01*x99 =E= 0;

e49..  - x48 + x49 - 0.01*x99 - 0.01*x100 =E= 0;

e50..  - x49 + x50 - 0.01*x100 - 0.01*x101 =E= 0;

e51..  - x50 + x51 - 0.01*x101 - 0.01*x102 =E= 0;

e52.. 0.01*(sqrt(1 + sqr(x52)) + sqrt(1 + sqr(x53)) + sqrt(1 + sqr(x53)) + 
      sqrt(1 + sqr(x54)) + sqrt(1 + sqr(x54)) + sqrt(1 + sqr(x55)) + sqrt(1 + 
      sqr(x55)) + sqrt(1 + sqr(x56)) + sqrt(1 + sqr(x56)) + sqrt(1 + sqr(x57))
       + sqrt(1 + sqr(x57)) + sqrt(1 + sqr(x58)) + sqrt(1 + sqr(x58)) + sqrt(1
       + sqr(x59)) + sqrt(1 + sqr(x59)) + sqrt(1 + sqr(x60)) + sqrt(1 + sqr(x60
      )) + sqrt(1 + sqr(x61)) + sqrt(1 + sqr(x61)) + sqrt(1 + sqr(x62)) + sqrt(
      1 + sqr(x62)) + sqrt(1 + sqr(x63)) + sqrt(1 + sqr(x63)) + sqrt(1 + sqr(
      x64)) + sqrt(1 + sqr(x64)) + sqrt(1 + sqr(x65)) + sqrt(1 + sqr(x65)) + 
      sqrt(1 + sqr(x66)) + sqrt(1 + sqr(x66)) + sqrt(1 + sqr(x67)) + sqrt(1 + 
      sqr(x67)) + sqrt(1 + sqr(x68)) + sqrt(1 + sqr(x68)) + sqrt(1 + sqr(x69))
       + sqrt(1 + sqr(x69)) + sqrt(1 + sqr(x70)) + sqrt(1 + sqr(x70)) + sqrt(1
       + sqr(x71)) + sqrt(1 + sqr(x71)) + sqrt(1 + sqr(x72)) + sqrt(1 + sqr(x72
      )) + sqrt(1 + sqr(x73)) + sqrt(1 + sqr(x73)) + sqrt(1 + sqr(x74)) + sqrt(
      1 + sqr(x74)) + sqrt(1 + sqr(x75)) + sqrt(1 + sqr(x75)) + sqrt(1 + sqr(
      x76)) + sqrt(1 + sqr(x76)) + sqrt(1 + sqr(x77)) + sqrt(1 + sqr(x77)) + 
      sqrt(1 + sqr(x78)) + sqrt(1 + sqr(x78)) + sqrt(1 + sqr(x79)) + sqrt(1 + 
      sqr(x79)) + sqrt(1 + sqr(x80)) + sqrt(1 + sqr(x80)) + sqrt(1 + sqr(x81))
       + sqrt(1 + sqr(x81)) + sqrt(1 + sqr(x82)) + sqrt(1 + sqr(x82)) + sqrt(1
       + sqr(x83)) + sqrt(1 + sqr(x83)) + sqrt(1 + sqr(x84)) + sqrt(1 + sqr(x84
      )) + sqrt(1 + sqr(x85)) + sqrt(1 + sqr(x85)) + sqrt(1 + sqr(x86)) + sqrt(
      1 + sqr(x86)) + sqrt(1 + sqr(x87)) + sqrt(1 + sqr(x87)) + sqrt(1 + sqr(
      x88)) + sqrt(1 + sqr(x88)) + sqrt(1 + sqr(x89)) + sqrt(1 + sqr(x89)) + 
      sqrt(1 + sqr(x90)) + sqrt(1 + sqr(x90)) + sqrt(1 + sqr(x91)) + sqrt(1 + 
      sqr(x91)) + sqrt(1 + sqr(x92)) + sqrt(1 + sqr(x92)) + sqrt(1 + sqr(x93))
       + sqrt(1 + sqr(x93)) + sqrt(1 + sqr(x94)) + sqrt(1 + sqr(x94)) + sqrt(1
       + sqr(x95)) + sqrt(1 + sqr(x95)) + sqrt(1 + sqr(x96)) + sqrt(1 + sqr(x96
      )) + sqrt(1 + sqr(x97)) + sqrt(1 + sqr(x97)) + sqrt(1 + sqr(x98)) + sqrt(
      1 + sqr(x98)) + sqrt(1 + sqr(x99)) + sqrt(1 + sqr(x99)) + sqrt(1 + sqr(
      x100)) + sqrt(1 + sqr(x100)) + sqrt(1 + sqr(x101)) + sqrt(1 + sqr(x101))
       + sqrt(1 + sqr(x102))) =E= 4;

* set non default bounds

x1.fx = 1; 
x51.fx = 3; 

* set non default levels

x2.l = 0.9616; 
x3.l = 0.9264; 
x4.l = 0.8944; 
x5.l = 0.8656; 
x6.l = 0.84; 
x7.l = 0.8176; 
x8.l = 0.7984; 
x9.l = 0.7824; 
x10.l = 0.7696; 
x11.l = 0.76; 
x12.l = 0.7536; 
x13.l = 0.7504; 
x14.l = 0.7504; 
x15.l = 0.7536; 
x16.l = 0.76; 
x17.l = 0.7696; 
x18.l = 0.7824; 
x19.l = 0.7984; 
x20.l = 0.8176; 
x21.l = 0.84; 
x22.l = 0.8656; 
x23.l = 0.8944; 
x24.l = 0.9264; 
x25.l = 0.9616; 
x26.l = 1; 
x27.l = 1.0416; 
x28.l = 1.0864; 
x29.l = 1.1344; 
x30.l = 1.1856; 
x31.l = 1.24; 
x32.l = 1.2976; 
x33.l = 1.3584; 
x34.l = 1.4224; 
x35.l = 1.4896; 
x36.l = 1.56; 
x37.l = 1.6336; 
x38.l = 1.7104; 
x39.l = 1.7904; 
x40.l = 1.8736; 
x41.l = 1.96; 
x42.l = 2.0496; 
x43.l = 2.1424; 
x44.l = 2.2384; 
x45.l = 2.3376; 
x46.l = 2.44; 
x47.l = 2.5456; 
x48.l = 2.6544; 
x49.l = 2.7664; 
x50.l = 2.8816; 
x52.l = -2; 
x53.l = -1.84; 
x54.l = -1.68; 
x55.l = -1.52; 
x56.l = -1.36; 
x57.l = -1.2; 
x58.l = -1.04; 
x59.l = -0.88; 
x60.l = -0.72; 
x61.l = -0.56; 
x62.l = -0.4; 
x63.l = -0.24; 
x64.l = -0.0800000000000001; 
x65.l = 0.0800000000000001; 
x66.l = 0.24; 
x67.l = 0.4; 
x68.l = 0.56; 
x69.l = 0.72; 
x70.l = 0.88; 
x71.l = 1.04; 
x72.l = 1.2; 
x73.l = 1.36; 
x74.l = 1.52; 
x75.l = 1.68; 
x76.l = 1.84; 
x77.l = 2; 
x78.l = 2.16; 
x79.l = 2.32; 
x80.l = 2.48; 
x81.l = 2.64; 
x82.l = 2.8; 
x83.l = 2.96; 
x84.l = 3.12; 
x85.l = 3.28; 
x86.l = 3.44; 
x87.l = 3.6; 
x88.l = 3.76; 
x89.l = 3.92; 
x90.l = 4.08; 
x91.l = 4.24; 
x92.l = 4.4; 
x93.l = 4.56; 
x94.l = 4.72; 
x95.l = 4.88; 
x96.l = 5.04; 
x97.l = 5.2; 
x98.l = 5.36; 
x99.l = 5.52; 
x100.l = 5.68; 
x101.l = 5.84; 
x102.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
