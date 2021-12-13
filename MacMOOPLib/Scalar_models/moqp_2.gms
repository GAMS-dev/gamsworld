*  NLP written by GAMS Convert at 03/22/08 22:27:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        4        9        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         24       24        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        102       42       60        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - 3*x2 - 3.9*x6 - x15 + 1.6*x19 =G= -6.4;

e2..    3.1*x5 + 0.75*x6 - 2.7*x8 - 1.5*x11 - 2.1*x18 - 3.9*x20 =G= -6.4;

e3..  - 0.82*x1 + 1.2*x4 - 3.3*x7 + 2.2*x10 + 3.8*x18 =G= 0.73;

e4..    1.7*x3 + 2.3*x10 - 2.1*x16 =G= 1.9;

e5..  - 2.4*x8 - 1.9*x13 + 1.7*x18 =G= -2.6;

e6..    3.8*x4 + 1.1*x8 + 0.37*x20 =G= 5.3;

e7..    2.8*x1 + 2.4*x4 + 1.3*x5 + 1.4*x7 + 2.6*x19 + 3.8*x20 =G= 0.55;

e8..  - 0.1*x3 + x4 =G= -0.1;

e9..    2.5*x1 + 1.1*x3 - 1.5*x4 + 1.3*x15 - 1.1*x17 =G= 1.7;

e10..  - (0.85*x1*x1 - 0.32*x1*x7 + 0.85*x2*x2 + 0.85*x3*x3 + 0.85*x4*x4 + 0.85
      *x5*x5 + 0.85*x5*x11 + 0.85*x6*x6 + 0.255*x6*x12 - 0.32*x7*x1 + 0.85*x7*
      x7 + 0.85*x8*x8 + 0.85*x9*x9 + 0.85*x10*x10 + 0.85*x11*x5 + 0.85*x11*x11
       + 0.255*x12*x6 + 0.85*x12*x12 + 0.85*x13*x13 + 0.85*x14*x14 + 0.295*x14*
      x19 + 0.85*x15*x15 + 0.85*x16*x16 + 0.85*x17*x17 + 0.85*x18*x18 + 0.295*
      x19*x14 + 0.85*x19*x19 + 0.85*x20*x20 + 3.5*x1 - 3.7*x2 + 4.9*x3 + 5.1*x4
       - 5.8*x5 + 3.2*x6 + 5.4*x7 + 3.8*x8 + 5.1*x9 - 3.6*x10 + 2.1*x11 + 5.1*
      x12 - 1.9*x13 + 1.1*x14 + 1.4*x15 - 6*x16 + 5.8*x17 + 4.8*x18 + 2.3*x19
       - 0.72*x20) + x21 =E= 0;

e11..  - (0.5*x1*x1 + 0.5*x2*x2 + 0.5*x3*x3 - 0.024*x3*x14 + 0.5*x4*x4 + 0.5*x5
      *x5 + 0.19*x5*x19 + 0.5*x6*x6 - 0.01*x6*x12 + 0.5*x7*x7 - 0.5*x7*x9 + 0.5
      *x8*x8 - 0.5*x9*x7 + 0.5*x9*x9 + 0.5*x10*x10 + 0.5*x11*x11 - 0.01*x12*x6
       + 0.5*x12*x12 + 0.5*x13*x13 - 0.024*x14*x3 + 0.5*x14*x14 + 0.5*x15*x15
       + 0.5*x16*x16 + 0.5*x17*x17 + 0.5*x18*x18 + 0.19*x19*x5 + 0.5*x19*x19 + 
      0.5*x20*x20 + 2.4*x1 + 1.3*x2 - 2.4*x3 + 4.3*x4 - 4.7*x5 - 2.5*x6 - 4.8*
      x7 - 1.2*x8 - 2*x9 + 5.3*x10 + 4.1*x11 - 2.9*x12 - 5.5*x13 - 5.9*x14 + 
      0.89*x15 + 2.9*x16 + 3.7*x17 + 1.7*x18 - 3*x19 - 4.3*x20) + x22 =E= 0;

e12..  - (1.1*x1*x1 + 1.1*x2*x2 + 1.1*x3*x3 + 1.1*x4*x4 + 2.15e-5*x4*x20 + 1.1*
      x5*x5 - 0.16*x5*x6 - 0.16*x6*x5 + 1.1*x6*x6 + 1.1*x7*x7 + 1.1*x8*x8 + 1.1
      *x9*x9 + 1.1*x10*x10 - 0.95*x10*x11 + 0.55*x10*x12 - 0.95*x11*x10 + 1.1*
      x11*x11 + 0.55*x12*x10 + 1.1*x12*x12 + 1.1*x13*x13 + 1.1*x14*x14 + 1.1*
      x15*x15 + 1.1*x16*x16 + 1.1*x17*x17 + 1.1*x18*x18 + 1.1*x19*x19 + 2.15e-5
      *x20*x4 + 1.1*x20*x20 + 1.8*x1 + 5.4*x2 + 3.8*x3 + 5.2*x4 - 2.3*x5 - 2.8*
      x6 + 0.44*x7 - 4*x8 - 3.5*x9 - 3.4*x10 + 1.8*x11 - 5.4*x12 - 3.2*x13 + 2*
      x14 - 2.3*x15 - 2.3*x16 + 2.6*x17 + 5.5*x18 - 4.4*x19 - 5.2*x20) + x23
       =E= 0;

e13..  - x21 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;