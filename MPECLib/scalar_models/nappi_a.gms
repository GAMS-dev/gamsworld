*  MPEC written by GAMS Convert at 01/04/02 11:31:19
*  
*  Equation counts
*     Total       E       G       L       N       X
*        98      60      30       8       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       116     116       0       0       0       0       0       0
*  FX    22      22       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       330     242      88       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,objvar,x109,x110,x111,x112,x113,x114,x115,x116;

Positive Variables x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56
          ,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72,x73
          ,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90
          ,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103,x104,x105
          ,x106,x107,x109,x110,x111,x112,x113,x114,x115,x116;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98;


e1..  - x1 + 900*x12 - 900*x86 + 900*x87 =E= 0;

e2..  - x2 - 900*x12 - 900*x88 + 900*x89 =E= 0;

e3..  - x3 + 900*x15 - 900*x90 + 900*x91 =E= 0;

e4..  - x4 - 900*x13 + 900*x17 - 900*x92 + 900*x93 =E= 0;

e5..  - x5 + 900*x19 - 900*x94 + 900*x95 =E= 0;

e6..  - x6 - 900*x14 + 900*x16 - 900*x96 + 900*x97 =E= 0;

e7..  - x7 - 900*x16 + 900*x18 - 900*x98 + 900*x99 =E= 0;

e8..  - x8 + 282.842712474619*x16 + 282.842712474619*x17 - 400*x100 + 400*x101
      =E= 0;

e9..  - x9 + 282.842712474619*x12 - 282.842712474619*x13 - 282.842712474619*x14
      + 282.842712474619*x15 - 400*x102 + 400*x103 =E= 0;

e10..  - x10 - 282.842712474619*x12 - 282.842712474619*x13
       + 282.842712474619*x18 + 282.842712474619*x19 - 400*x104 + 400*x105
       =E= 0;

e11..  - x11 - 282.842712474619*x16 + 282.842712474619*x17 - 400*x106
       + 400*x107 =E= 0;

e12..    x1 - x2 + 0.707106781186547*x9 - 0.707106781186547*x10 =E= 500;

e13..  - x4 - 0.707106781186547*x9 - 0.707106781186547*x10 =E= -600;

e14..  - x6 - 0.707106781186547*x9 =E= 0;

e15..    x3 + 0.707106781186547*x9 =E= -500;

e16..    x6 - x7 + 0.707106781186547*x8 - 0.707106781186547*x11 =E= 0;

e17..    x4 + 0.707106781186547*x8 + 0.707106781186547*x11 =E= 0;

e18..    x7 + 0.707106781186547*x10 =E= 0;

e19..    x5 + 0.707106781186547*x10 =E= 0;

e20.. x42*x86 + x43*x87 - x1 + x20 =G= 0;

e21.. x44*x86 + x45*x87 + x1 + x21 =G= 0;

e22.. x46*x88 + x47*x89 - x2 + x22 =G= 0;

e23.. x48*x88 + x49*x89 + x2 + x23 =G= 0;

e24.. x50*x90 + x51*x91 - x3 + x24 =G= 0;

e25.. x52*x90 + x53*x91 + x3 + x25 =G= 0;

e26.. x54*x92 + x55*x93 - x4 + x26 =G= 0;

e27.. x56*x92 + x57*x93 + x4 + x27 =G= 0;

e28.. x58*x94 + x59*x95 - x5 + x28 =G= 0;

e29.. x60*x94 + x61*x95 + x5 + x29 =G= 0;

e30.. x62*x96 + x63*x97 - x6 + x30 =G= 0;

e31.. x64*x96 + x65*x97 + x6 + x31 =G= 0;

e32.. x66*x98 + x67*x99 - x7 + x32 =G= 0;

e33.. x68*x98 + x69*x99 + x7 + x33 =G= 0;

e34.. x70*x100 + x71*x101 - x8 + x34 =G= 0;

e35.. x72*x100 + x73*x101 + x8 + x35 =G= 0;

e36.. x74*x102 + x75*x103 - x9 + x36 =G= 0;

e37.. x76*x102 + x77*x103 + x9 + x37 =G= 0;

e38.. x78*x104 + x79*x105 - x10 + x38 =G= 0;

e39.. x80*x104 + x81*x105 + x10 + x39 =G= 0;

e40.. x82*x106 + x83*x107 - x11 + x40 =G= 0;

e41.. x84*x106 + x85*x107 + x11 + x41 =G= 0;

e42..    x12 + x109 =G= 0.297497982362146;

e43..    x13 + x110 =G= -3.50823866968617;

e44..    x14 + x111 =G= -0.848628369277927;

e45..    x15 + x112 =G= -4.08051711190895;

e46..    x16 + x113 =G= -0.976150126926215;

e47..    x17 + x114 =G= -2.8475618388046;

e48..    x18 + x115 =G= -1.14311229374324;

e49..    x19 + x116 =G= -0.166962166817024;

e50..    x12 - x109 =L= 0.297497982362146;

e51..    x13 - x110 =L= -3.50823866968617;

e52..    x14 - x111 =L= -0.848628369277927;

e53..    x15 - x112 =L= -4.08051711190895;

e54..    x16 - x113 =L= -0.976150126926215;

e55..    x17 - x114 =L= -2.8475618388046;

e56..    x18 - x115 =L= -1.14311229374324;

e57..    x19 - x116 =L= -0.166962166817024;

e58..    objvar - x109 - x110 - x111 - x112 - x113 - x114 - x115 - x116 =E= 0;

e59..  - x20 + x21 =E= 0;

e60..  - x20 + x22 =E= 0;

e61..  - x20 + x23 =E= 0;

e62..  - x20 + x24 =E= 0;

e63..  - x20 + x25 =E= 0;

e64..  - x20 + x26 =E= 0;

e65..  - x20 + x27 =E= 0;

e66..  - x20 + x28 =E= 0;

e67..  - x20 + x29 =E= 0;

e68..  - x20 + x30 =E= 0;

e69..  - x20 + x31 =E= 0;

e70..  - x20 + x32 =E= 0;

e71..  - x20 + x33 =E= 0;

e72..  - x34 + x35 =E= 0;

e73..  - x34 + x36 =E= 0;

e74..  - x34 + x37 =E= 0;

e75..  - x34 + x38 =E= 0;

e76..  - x34 + x39 =E= 0;

e77..  - x34 + x40 =E= 0;

e78..  - x34 + x41 =E= 0;

e79..  - x42 + x45 =E= 0;

e80..  - x42 + x46 =E= 0;

e81..  - x42 + x49 =E= 0;

e82..  - x42 + x50 =E= 0;

e83..  - x42 + x53 =E= 0;

e84..  - x42 + x54 =E= 0;

e85..  - x42 + x57 =E= 0;

e86..  - x42 + x58 =E= 0;

e87..  - x42 + x61 =E= 0;

e88..  - x42 + x62 =E= 0;

e89..  - x42 + x65 =E= 0;

e90..  - x42 + x66 =E= 0;

e91..  - x42 + x69 =E= 0;

e92..  - x70 + x73 =E= 0;

e93..  - x70 + x74 =E= 0;

e94..  - x70 + x77 =E= 0;

e95..  - x70 + x78 =E= 0;

e96..  - x70 + x81 =E= 0;

e97..  - x70 + x82 =E= 0;

e98..  - x70 + x85 =E= 0;

* set non default bounds

x20.lo = 10; x20.up = 500; 
x21.lo = 10; x21.up = 500; 
x22.lo = 10; x22.up = 500; 
x23.lo = 10; x23.up = 500; 
x24.lo = 10; x24.up = 500; 
x25.lo = 10; x25.up = 500; 
x26.lo = 10; x26.up = 500; 
x27.lo = 10; x27.up = 500; 
x28.lo = 10; x28.up = 500; 
x29.lo = 10; x29.up = 500; 
x30.lo = 10; x30.up = 500; 
x31.lo = 10; x31.up = 500; 
x32.lo = 10; x32.up = 500; 
x33.lo = 10; x33.up = 500; 
x34.lo = 10; x34.up = 500; 
x35.lo = 10; x35.up = 500; 
x36.lo = 10; x36.up = 500; 
x37.lo = 10; x37.up = 500; 
x38.lo = 10; x38.up = 500; 
x39.lo = 10; x39.up = 500; 
x40.lo = 10; x40.up = 500; 
x41.lo = 10; x41.up = 500; 
x42.up = 300; 
x43.fx = 0; 
x44.fx = 0; 
x45.up = 300; 
x46.up = 300; 
x47.fx = 0; 
x48.fx = 0; 
x49.up = 300; 
x50.up = 300; 
x51.fx = 0; 
x52.fx = 0; 
x53.up = 300; 
x54.up = 300; 
x55.fx = 0; 
x56.fx = 0; 
x57.up = 300; 
x58.up = 300; 
x59.fx = 0; 
x60.fx = 0; 
x61.up = 300; 
x62.up = 300; 
x63.fx = 0; 
x64.fx = 0; 
x65.up = 300; 
x66.up = 300; 
x67.fx = 0; 
x68.fx = 0; 
x69.up = 300; 
x70.up = 300; 
x71.fx = 0; 
x72.fx = 0; 
x73.up = 300; 
x74.up = 300; 
x75.fx = 0; 
x76.fx = 0; 
x77.up = 300; 
x78.up = 300; 
x79.fx = 0; 
x80.fx = 0; 
x81.up = 300; 
x82.up = 300; 
x83.fx = 0; 
x84.fx = 0; 
x85.up = 300; 

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
x12.l = 0.297497982362146; 
x13.l = -3.50823866968617; 
x14.l = -0.848628369277927; 
x15.l = -4.08051711190895; 
x16.l = -0.976150126926215; 
x17.l = -2.8475618388046; 
x18.l = -1.14311229374324; 
x19.l = -0.166962166817024; 
x42.l = 10; 
x45.l = 10; 
x46.l = 10; 
x49.l = 10; 
x50.l = 10; 
x53.l = 10; 
x54.l = 10; 
x57.l = 10; 
x58.l = 10; 
x61.l = 10; 
x62.l = 10; 
x65.l = 10; 
x66.l = 10; 
x69.l = 10; 
x70.l = 10; 
x73.l = 10; 
x74.l = 10; 
x77.l = 10; 
x78.l = 10; 
x81.l = 10; 
x82.l = 10; 
x85.l = 10; 
x86.l = 1; 
x87.l = 1; 
x88.l = 1; 
x89.l = 1; 
x90.l = 1; 
x91.l = 1; 
x92.l = 1; 
x93.l = 1; 
x94.l = 1; 
x95.l = 1; 
x96.l = 1; 
x97.l = 1; 
x98.l = 1; 
x99.l = 1; 
x100.l = 1; 
x101.l = 1; 
x102.l = 1; 
x103.l = 1; 
x104.l = 1; 
x105.l = 1; 
x106.l = 1; 
x107.l = 1; 
x109.l = 1; 
x110.l = 1; 
x111.l = 1; 
x112.l = 1; 
x113.l = 1; 
x114.l = 1; 
x115.l = 1; 
x116.l = 1; 

* set non default marginals

e1.m = 1;
e2.m = 1;
e3.m = 1;
e4.m = 1;
e5.m = 1;
e6.m = 1;
e7.m = 1;
e8.m = 1;
e9.m = 1;
e10.m = 1;
e11.m = 1;
e12.m = 1;
e13.m = 1;
e14.m = 1;
e15.m = 1;
e16.m = 1;
e17.m = 1;
e18.m = 1;
e19.m = 1;
e25.m = 1;
e26.m = 1;
e35.m = 1;
e38.m = 1;
e41.m = 1;
x86.m = 1; 
x87.m = 1; 
x88.m = 1; 
x89.m = 1; 
x90.m = 1; 
x93.m = 1; 
x94.m = 1; 
x95.m = 1; 
x96.m = 1; 
x97.m = 1; 
x98.m = 1; 
x99.m = 1; 
x100.m = 1; 
x102.m = 1; 
x103.m = 1; 
x105.m = 1; 
x106.m = 1; 

Model m / e1.x1,e2.x2,e3.x3,e4.x4,e5.x5,e6.x6,e7.x7,e8.x8,e9.x9,e10.x10
         ,e11.x11,e12.x12,e13.x13,e14.x14,e15.x15,e16.x16,e17.x17,e18.x18
         ,e19.x19,e20.x86,e21.x87,e22.x88,e23.x89,e24.x90,e25.x91,e26.x92
         ,e27.x93,e28.x94,e29.x95,e30.x96,e31.x97,e32.x98,e33.x99,e34.x100
         ,e35.x101,e36.x102,e37.x103,e38.x104,e39.x105,e40.x106,e41.x107,e42
         ,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53,e54,e55,e56,e57,e58
         ,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70,e71,e72,e73,e74
         ,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87,e88,e89,e90
         ,e91,e92,e93,e94,e95,e96,e97,e98 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
