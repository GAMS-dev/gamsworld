*  NLP written by GAMS Convert at 03/22/08 22:27:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         14        4       10        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         24       24        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101       41       60        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..  - 3.3*x1 + 1.9*x3 - 4*x8 + 0.82*x9 + 3.7*x14 - 0.82*x15 =G= -1.7;

e2..    1.9*x2 + 1.5*x4 =G= 3.3;

e3..    3.8*x8 - 2.4*x9 + 0.75*x18 + 3.6*x19 =G= 5.8;

e4..  - 1.9*x4 + 0.12*x12 + 1.1*x20 =G= -0.71;

e5..  - 0.79*x10 - 0.11*x17 + 2*x20 =G= 1.1;

e6..  - 3*x1 - 3.7*x3 - x4 + 1.5*x8 + 3.5*x16 - 0.18*x19 =G= -2.8;

e7..  - 3*x3 - 0.13*x6 + 3.6*x8 - 1.1*x16 - 1.4*x20 =G= -2;

e8..    2.2*x7 - 1.6*x11 =G= 0.56;

e9..  - 2.6*x8 + 1.5*x11 =G= -1.1;

e10..  - 1.9*x9 - 0.34*x10 + 2.7*x16 =G= 0.34;

e11..  - (0.6*x1*x1 + 0.365*x1*x2 + 0.45*x1*x13 + 0.365*x2*x1 + 0.6*x2*x2 + 0.6
      *x3*x3 + 0.6*x4*x4 + 0.215*x4*x6 + 0.6*x5*x5 + 0.215*x6*x4 + 0.6*x6*x6 + 
      0.6*x7*x7 + 0.29*x7*x9 + 0.6*x8*x8 + 0.29*x9*x7 + 0.6*x9*x9 + 0.6*x10*x10
       + 0.6*x11*x11 + 0.6*x12*x12 + 0.45*x13*x1 + 0.6*x13*x13 + 0.6*x14*x14 + 
      0.6*x15*x15 + 0.6*x16*x16 + 0.6*x17*x17 + 0.6*x18*x18 + 0.6*x19*x19 + 0.6
      *x20*x20 - x1 - 4.9*x2 - 0.6*x3 + 4.4*x4 - 1.3*x5 - 3*x6 - 1.7*x7 + 2.9*
      x8 + 1.8*x9 + 5.3*x10 + 4*x11 - 0.36*x12 + 1.6*x13 - 5.3*x14 + 0.51*x15
       - 0.53*x16 + 4.4*x17 + 4.3*x18 - 0.33*x19 + 3.4*x20) + x21 =E= 0;

e12..  - (0.36*x1*x1 + 0.285*x1*x20 + 0.36*x2*x2 + 0.36*x3*x3 + 0.36*x4*x4 + 
      0.36*x5*x5 + 0.36*x6*x6 + 0.36*x7*x7 + 0.36*x8*x8 + 0.36*x9*x9 + 0.36*x10
      *x10 + 0.36*x11*x11 + 0.36*x12*x12 + 0.36*x13*x13 + 0.36*x14*x14 - 0.13*
      x14*x15 - 0.13*x15*x14 + 0.36*x15*x15 + 0.34*x15*x18 + 0.36*x16*x16 + 
      0.38*x17*x17 + 0.34*x18*x15 + 0.36*x18*x18 + 0.36*x19*x19 + 0.285*x20*x1
       + 0.36*x20*x20 + 1.9*x1 - 6*x2 - 4.4*x3 - 0.062*x4 - 5.5*x5 - 3.3*x6 - 
      2.1*x7 + 4.8*x8 - 2.2*x9 - 3*x10 - 0.8*x11 + 4.1*x12 - 3.8*x13 + 0.098*
      x14 - 0.57*x15 - 2.1*x16 - 1.4*x17 + 4.6*x18 + 3.1*x19 + 4.6*x20) + x22
       =E= 0;

e13..  - (0.75*x1*x1 + 0.75*x2*x2 - 0.19*x2*x15 + 0.75*x3*x3 + 0.75*x4*x4 - 
      0.115*x4*x7 + 0.75*x5*x5 + 0.75*x6*x6 - 0.115*x7*x4 + 0.75*x7*x7 - 0.15*
      x7*x15 + 0.75*x8*x8 + 0.75*x9*x9 + 0.75*x10*x10 + 0.75*x11*x11 + 0.75*x12
      *x12 + 0.75*x13*x13 + 0.75*x14*x14 - 0.19*x15*x2 - 0.15*x15*x7 + 0.75*x15
      *x15 + 0.75*x16*x16 + 0.75*x17*x17 + 0.75*x18*x18 - 0.75*x18*x20 + 0.75*
      x19*x19 - 0.75*x20*x18 + 0.75*x20*x20 - 0.51*x1 + 3.6*x2 - 4.4*x3 - 5.2*
      x4 - 1.5*x5 - 1.5*x6 - 0.19*x7 + 5.6*x8 - 1.9*x9 - 3*x10 + x11 + 0.28*x12
       - 4*x13 - 0.16*x14 - 0.047*x15 + 4.1*x16 + 3.7*x17 + 4.3*x18 + 1.3*x19
       + 0.79*x20) + x23 =E= 0;

e14..  - x21 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;