*  NLP written by GAMS Convert at 06/26/06 16:29:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         41       41        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        116       76       40        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x1 + x2 + x3 + x37 + 2*x38 + 3*x39 + 4*x40 =E= 0.6529581;

e2..    x6 + x7 + x8 + x10 + x28 + x29 + x30 + x31 + x32 =E= 0.281941;

e3..    x11 + x12 + x13 =E= 3.705233;

e4..    x4 - x10 - x14 + x15 + x16 + x17 + x26 + x27 + x30 - x31 - x32
      =E= 47.00022;

e5..    x15 + x18 + x19 + x26 + x27 + x28 + x29 + x30 + x31 + x32 =E= 47.02972;

e6..    x20 + x21 =E= 0.08005;

e7..    x22 + x23 =E= 0.08813;

e8..    x24 + x25 =E= 0.04829;

e9..    x34 =E= 0.0155;

e10..    x35 =E= 0.0211275;

e11..    x36 + x37 + x38 + x39 + x40 =E= 0.0022725;

e12..    x16 - x18 - x20 + x22 + x24 - x28 - 2*x32 - x34 - 4*x36 - 3*x37
       - 2*x38 - x39 =E= 0;

e13..    x4 + x9 + x14 - x37 - 2*x38 - 3*x39 - 4*x40 =E= 0;

e14..    x5 + x10 - 4*x14 =E= 0;

e15..  - (log(x1/(x1 + x6 + x11 + x15))*x1 + (-10.94 + log(x2/(x2 + x7 + x12 + 
      x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34)))*x2 + (10.45
       + log(x3/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29 + x31
       + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x3 + (-15.639 + log(x4/(x4
       + x9 + x14)))*x4 + log(x5/(x5 + x10))*x5 + (-7.69 + log(x6/(x1 + x6 + 
      x11 + x15)))*x6 + log(x7/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + 
      x26 + x28 + x30 + x32 + x34))*x7 + log(x8/(x3 + x8 + x13 + x17 + x19 + 
      x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + 
      x40))*x8 + log(x9/(x4 + x9 + x14))*x9 + (11.959 + log(x10/(x5 + x10)))*
      x10 + (-11.52 + log(x11/(x1 + x6 + x11 + x15)))*x11 + log(x12/(x2 + x7 + 
      x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34))*x12 + (
      -0.5 + log(x13/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29
       + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x13 + (21.81 + log(
      x14/(x4 + x9 + x14)))*x14 + (-36.6 + log(x15/(x1 + x6 + x11 + x15)))*x15
       + log(x16/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30
       + x32 + x34))*x16 + log(x17/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25
       + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40))*x17 + log(
      x18/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32
       + x34))*x18 + log(x19/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27
       + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40))*x19 + log(x20/(
      x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34
      ))*x20 + log(x21/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29
       + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40))*x21 + log(x22/(x2 + x7
       + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34))*x22
       + (2.2435 + log(x23/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27
       + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x23 + (2.5966
       + log(x24/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30
       + x32 + x34)))*x24 + log(x25/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + 
      x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40))*x25 + (
      -39.39 + log(x26/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28
       + x30 + x32 + x34)))*x26 + (-39.39 + log(x27/(x3 + x8 + x13 + x17 + x19
       + x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39
       + x40)))*x27 + (-21.35 + log(x28/(x2 + x7 + x12 + x16 + x18 + x20 + x22
       + x24 + x26 + x28 + x30 + x32 + x34)))*x28 + (-21.49 + log(x29/(x3 + x8
       + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35 + x36
       + x37 + x38 + x39 + x40)))*x29 + (-32.84 + log(x30/(x2 + x7 + x12 + x16
       + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34)))*x30 + (-32.84
       + log(x31/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29 + x31
       + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x31 + (6.26 + log(x32/(x2
       + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32 + x34))
      )*x32 + (6.12 + log(x33/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + 
      x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x33 + log(
      x34/(x2 + x7 + x12 + x16 + x18 + x20 + x22 + x24 + x26 + x28 + x30 + x32
       + x34))*x34 + log(x35/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27
       + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40))*x35 + log(x36/(
      x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35
       + x36 + x37 + x38 + x39 + x40))*x36 + (-1.9028 + log(x37/(x3 + x8 + x13
       + x17 + x19 + x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37
       + x38 + x39 + x40)))*x37 + (-2.8889 + log(x38/(x3 + x8 + x13 + x17 + x19
       + x21 + x23 + x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39
       + x40)))*x38 + (-3.3622 + log(x39/(x3 + x8 + x13 + x17 + x19 + x21 + x23
       + x25 + x27 + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x39
       + (-7.4854 + log(x40/(x3 + x8 + x13 + x17 + x19 + x21 + x23 + x25 + x27
       + x29 + x31 + x33 + x35 + x36 + x37 + x38 + x39 + x40)))*x40) + objvar
       =E= 0;

* set non default bounds

x1.lo = 1.5E-6; 
x2.lo = 1.5E-6; 
x3.lo = 1.5E-6; 
x4.lo = 1.5E-6; 
x5.lo = 1.5E-6; 
x6.lo = 1.5E-6; 
x7.lo = 1.5E-6; 
x8.lo = 1.5E-6; 
x9.lo = 1.5E-6; 
x10.lo = 1.5E-6; 
x11.lo = 1.5E-6; 
x12.lo = 1.5E-6; 
x13.lo = 1.5E-6; 
x14.lo = 1.5E-6; 
x15.lo = 1.5E-6; 
x16.lo = 1.5E-6; 
x17.lo = 1.5E-6; 
x18.lo = 1.5E-6; 
x19.lo = 1.5E-6; 
x20.lo = 1.5E-6; 
x21.lo = 1.5E-6; 
x22.lo = 1.5E-6; 
x23.lo = 1.5E-6; 
x24.lo = 1.5E-6; 
x25.lo = 1.5E-6; 
x26.lo = 1.5E-6; 
x27.lo = 1.5E-6; 
x28.lo = 1.5E-6; 
x29.lo = 1.5E-6; 
x30.lo = 1.5E-6; 
x31.lo = 1.5E-6; 
x32.lo = 1.5E-6; 
x33.lo = 1.5E-6; 
x34.lo = 1.5E-6; 
x35.lo = 1.5E-6; 
x36.lo = 1.5E-6; 
x37.lo = 1.5E-6; 
x38.lo = 1.5E-6; 
x39.lo = 1.5E-6; 
x40.lo = 1.5E-6; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
