*  NLP written by GAMS Convert at 10/06/06 11:14:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       16        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         50       50        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         81       44       37        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,objvar;

Positive Variables  x2,x3,x4,x12,x15,x16,x27,x30,x44,x45;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - 0.13*x1 + x7 =E= 0;

e2..  - 0.7*x1 + x5 =E= 0;

e3..  - x2 + x6 =E= 0;

e4..  - 2*x5 - 2*x7 - 2*x8 - x9 + x10 =E= 0;

e5..  - 20*x10 + x19 =E= 0;

e6..  - 2*x22 + x24 =E= 0;

e7..  - x20 - x33 + x34 =E= 0;

e8..  - 0.137*x22 + x35 =E= 0;

e9..    x37 - 35*x47 =E= 0;

e10..  - 0.043*x20 + x38 =E= 0;

e11..    x39 - 200*x48 =E= 0;

e12..    x40 - 120*x49 =E= 0;

e13..  - 300*x26 + x41 =E= 400;

e14..    0.5*x20 - x22 + x23 + 660*x47 + 95*x48 + 70*x49 =E= 380;

e15..    x31 - x35 + x37 + x38 + x39 + x40 + x41 =E= -290;

e16..  - (sqr(x8 - 0.01*x3*x1) + sqr(x13 - (-x14*x11 - x15 + x16)/sqr(x11)) + 
      sqr(0.01*x4/x11 - 2*x12 + x15 + x16) + sqr(x12 - 0.025*sqr(x14)*x15/x13)
       + sqr((-1.3*sqr(x7)) - 27.5*x7 + x17) + sqr(8.6*sqr(x8) - 70*x8 + x18)
       + sqr((-1000) + 4.16666666666667e-5*sqr(x22) + x20) + sqr(1000*x21 - x24
      *x25) + sqr(2 + x30*x21 - x31/x28 + x27 + x32 + 0.00126582278481013*x34)
       + sqr((-1000*x21/(20 + x29)) - 12*sqrt(x21) + x36) + sqr(x9 - 1.25*x1*
      x47) + sqr(x1 - x24/x42) + sqr(x33 - 2.4*sqrt(x5)*x5*x43/sqrt(x6)) + sqr(
      x15 - 0.785*sqr(x44)*x21) + sqr(x16 - 0.785*sqr(x45)*x21) + sqr(x14 - (2*
      x32 - 2*POWER(x11,3)*x13)/(sqr(x11)*(3 - x15*x11))) + sqr(x46 - 1.15*x5*(
      15 + 0.15*x5)*(8 + sqrt(POWER(0.02*x23*x6/(x1*x43),3))))) + objvar =E= 0;

* set non default bounds

x1.lo = 10; x1.up = 150; 
x2.up = 10; 
x3.up = 10; 
x4.up = 5; 
x5.lo = 7; x5.up = 120; 
x6.lo = 1.5; x6.up = 8; 
x7.lo = 2; x7.up = 20; 
x8.lo = 2; x8.up = 30; 
x9.lo = 30; x9.up = 500; 
x10.lo = 20; x10.up = 200; 
x11.lo = 0.01; x11.up = 20; 
x12.up = 10; 
x13.lo = -0.2; x13.up = -0.001; 
x14.lo = 0.1; x14.up = 2; 
x15.up = 1; 
x16.up = 2; 
x17.lo = 100; x17.up = 1000; 
x18.lo = 500; x18.up = 5000; 
x19.lo = 500; x19.up = 5000; 
x20.lo = 1000; x20.up = 20000; 
x21.lo = 2; x21.up = 30; 
x22.lo = 2000; x22.up = 20000; 
x23.lo = 3000; x23.up = 30000; 
x24.lo = 5000; x24.up = 50000; 
x25.lo = 0.2; x25.up = 0.8; 
x26.lo = 1; x26.up = 5; 
x27.up = 20; 
x28.lo = 100; x28.up = 400; 
x29.lo = 4; x29.up = 15; 
x30.up = 10; 
x31.lo = 500; x31.up = 10000; 
x32.lo = 10; x32.up = 50; 
x33.lo = 250; x33.up = 5000; 
x34.lo = 750; x34.up = 15000; 
x35.lo = 250; x35.up = 3000; 
x36.lo = 10; x36.up = 5000; 
x37.lo = 35; x37.up = 70; 
x38.lo = 100; x38.up = 3000; 
x39.lo = 200; x39.up = 400; 
x40.lo = 120; x40.up = 240; 
x41.lo = 700; x41.up = 1900; 
x42.lo = 100; x42.up = 1000; 
x43.lo = 2; x43.up = 20; 
x44.up = 1; 
x45.up = 2; 
x46.lo = 500; x46.up = 5000; 
x47.lo = 1; x47.up = 2; 
x48.lo = 1; x48.up = 2; 
x49.lo = 1; x49.up = 2; 

* set non default levels

x1.l = 27.452; 
x2.l = 1.5; 
x3.l = 10; 
x5.l = 19.217; 
x7.l = 3.5688; 
x8.l = 4.0696; 
x9.l = 34.315; 
x10.l = 88.025; 
x11.l = 5.1306; 
x13.l = -0.14809; 
x14.l = 0.7598; 
x17.l = 114.7; 
x19.l = 1760.5; 
x20.l = 2325.6; 
x21.l = 5.6788; 
x22.l = 14197; 
x23.l = 12589; 
x24.l = 28394; 
x29.l = 15; 
x33.l = 814.9; 
x34.l = 3140.5; 
x35.l = 1945; 
x36.l = 190.85; 
x42.l = 1000; 
x43.l = 4.9367; 
x46.l = 5000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
