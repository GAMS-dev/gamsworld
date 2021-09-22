*  NLP written by GAMS Convert at 09/19/06 14:42:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         31       31        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51       51        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        194      126       68        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + x7 + 2*x8 + 2*x9 + 2*x10 + x13 + 2*x14
      + 2*x15 + x19 + 2*x20 + x25 =E= 0.25;

e2..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + x7 + 2*x8 + 2*x9 + 2*x10 + x13 + 2*x14
      + 2*x15 + x19 + 2*x20 + x25 =E= 0.25;

e3..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + x7 + 2*x8 + 2*x9 + 2*x10 + x13 + 2*x14
      + 2*x15 + x19 + 2*x20 + x25 =E= 0.25;

e4..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + x7 + 2*x8 + 2*x9 + 2*x10 + x13 + 2*x14
      + 2*x15 + x19 + 2*x20 + x25 =E= 0.25;

e5..    x1 + 2*x2 + 2*x3 + 2*x4 + 2*x5 + x7 + 2*x8 + 2*x9 + 2*x10 + x13 + 2*x14
      + 2*x15 + x19 + 2*x20 + x25 =E= 0.25;

e6..  - x1 + x26 =E= 0;

e7..  - x6 + x27 =E= 0;

e8.. x27*x41 - x7 + x28 =E= 0;

e9..  - x11 + x29 =E= 0;

e10.. x29*x41 - x12 + x30 =E= 0;

e11.. x29*x42 + x30*x45 - x13 + x31 =E= 0;

e12..  - x16 + x32 =E= 0;

e13.. x32*x41 - x17 + x33 =E= 0;

e14.. x32*x42 + x33*x45 - x18 + x34 =E= 0;

e15.. x32*x43 + x33*x46 + x34*x48 - x19 + x35 =E= 0;

e16..  - x21 + x36 =E= 0;

e17.. x36*x41 - x22 + x37 =E= 0;

e18.. x36*x42 + x37*x45 - x23 + x38 =E= 0;

e19.. x36*x43 + x37*x46 + x38*x48 - x24 + x39 =E= 0;

e20.. x36*x44 + x37*x47 + x38*x49 + x39*x50 - x25 + x40 =E= 0;

e21.. x26*x41 - x2 =E= 0;

e22.. x26*x42 - x3 =E= 0;

e23.. x26*x43 - x4 =E= 0;

e24.. x26*x44 - x5 =E= 0;

e25.. x28*x45 - x8 =E= 0;

e26.. x28*x46 - x9 =E= 0;

e27.. x28*x47 - x10 =E= 0;

e28.. x31*x48 + x29*x43 - x14 =E= 0;

e29.. x31*x49 + x29*x44 - x15 =E= 0;

e30.. x35*x50 + x32*x44 + x33*x47 - x20 =E= 0;

e31..    2*x1 - 2*x2 - 2*x3 + 3*x7 - 2*x8 - 2*x10 + 3*x13 - 2*x14 + x19 + x25
       + objvar =E= 0;

* set non default bounds

x26.lo = 1E-6; 
x27.lo = 1E-6; 
x28.lo = 1E-6; 
x29.lo = 1E-6; 
x30.lo = 1E-6; 
x31.lo = 1E-6; 
x32.lo = 1E-6; 
x33.lo = 1E-6; 
x34.lo = 1E-6; 
x35.lo = 1E-6; 
x36.lo = 1E-6; 
x37.lo = 1E-6; 
x38.lo = 1E-6; 
x39.lo = 1E-6; 
x40.lo = 1E-6; 
x41.lo = 1E-7; 
x42.lo = 1E-7; 
x43.lo = 1E-7; 
x44.lo = 1E-7; 
x45.lo = 1E-7; 
x46.lo = 1E-7; 
x47.lo = 1E-7; 
x48.lo = 1E-7; 
x49.lo = 1E-7; 
x50.lo = 1E-7; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x19.l = 1; 
x20.l = 1; 
x25.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
