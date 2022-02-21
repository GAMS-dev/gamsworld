*  NLP written by GAMS Convert at 07/27/06 09:26:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17       17        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         70       54       16        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    0.22*x1 + 0.2*x2 + 0.19*x3 + 0.25*x4 + 0.15*x5 + 0.11*x6 + 0.12*x7
      + 0.13*x8 + x9 =E= 2.5;

e2..  - 1.46*x1 - 1.3*x3 + 1.82*x4 - 1.15*x5 + 0.8*x7 + x10 =E= 1.1;

e3..    1.29*x1 - 0.89*x2 - 1.16*x5 - 0.96*x6 - 0.49*x8 + x11 =E= -3.1;

e4..  - 1.1*x1 - 1.06*x2 + 0.95*x3 - 0.54*x4 - 1.78*x6 - 0.41*x7 + x12
      =E= -3.5;

e5..  - 1.43*x4 + 1.51*x5 + 0.59*x6 - 0.33*x7 - 0.43*x8 + x13 =E= 1.3;

e6..  - 1.72*x2 - 0.33*x3 + 1.62*x5 + 1.24*x6 + 0.21*x7 - 0.26*x8 + x14
      =E= 2.1;

e7..    1.12*x1 + 0.31*x4 + 1.12*x7 - 0.36*x9 + x15 =E= 2.3;

e8..    0.45*x2 + 0.26*x3 - 1.1*x4 + 0.58*x5 - 1.03*x7 + 0.1*x8 + x16 =E= -1.5;

e9..  - ((1 + sqr(x1) + x1)*(1 + sqr(x1) + x1) + (1 + sqr(x1) + x1)*(1 + sqr(x4
     ) + x4) + (1 + sqr(x1) + x1)*(1 + sqr(x7) + x7) + (1 + sqr(x1) + x1)*(1 + 
     sqr(x8) + x8) + (1 + sqr(x1) + x1)*(1 + sqr(x16) + x16) + (1 + sqr(x2) + 
     x2)*(1 + sqr(x2) + x2) + (1 + sqr(x2) + x2)*(1 + sqr(x3) + x3) + (1 + sqr(
     x2) + x2)*(1 + sqr(x7) + x7) + (1 + sqr(x2) + x2)*(1 + sqr(x10) + x10) + (
     1 + sqr(x3) + x3)*(1 + sqr(x3) + x3) + (1 + sqr(x3) + x3)*(1 + sqr(x7) + 
     x7) + (1 + sqr(x3) + x3)*(1 + sqr(x9) + x9) + (1 + sqr(x3) + x3)*(1 + sqr(
     x10) + x10) + (1 + sqr(x3) + x3)*(1 + sqr(x14) + x14) + (1 + sqr(x4) + x4)
     *(1 + sqr(x4) + x4) + (1 + sqr(x4) + x4)*(1 + sqr(x7) + x7) + (1 + sqr(x4)
      + x4)*(1 + sqr(x11) + x11) + (1 + sqr(x4) + x4)*(1 + sqr(x15) + x15) + (1
      + sqr(x5) + x5)*(1 + sqr(x5) + x5) + (1 + sqr(x5) + x5)*(1 + sqr(x6) + x6
     ) + (1 + sqr(x5) + x5)*(1 + sqr(x10) + x10) + (1 + sqr(x5) + x5)*(1 + sqr(
     x12) + x12) + (1 + sqr(x5) + x5)*(1 + sqr(x16) + x16) + (1 + sqr(x6) + x6)
     *(1 + sqr(x6) + x6) + (1 + sqr(x6) + x6)*(1 + sqr(x8) + x8) + (1 + sqr(x6)
      + x6)*(1 + sqr(x15) + x15) + (1 + sqr(x7) + x7)*(1 + sqr(x7) + x7) + (1
      + sqr(x7) + x7)*(1 + sqr(x11) + x11) + (1 + sqr(x7) + x7)*(1 + sqr(x13)
      + x13) + (1 + sqr(x8) + x8)*(1 + sqr(x8) + x8) + (1 + sqr(x8) + x8)*(1 + 
     sqr(x10) + x10) + (1 + sqr(x8) + x8)*(1 + sqr(x15) + x15) + (1 + sqr(x9)
      + x9)*(1 + sqr(x9) + x9) + (1 + sqr(x9) + x9)*(1 + sqr(x12) + x12) + (1
      + sqr(x9) + x9)*(1 + sqr(x16) + x16) + (1 + sqr(x10) + x10)*(1 + sqr(x10)
      + x10) + (1 + sqr(x10) + x10)*(1 + sqr(x14) + x14) + (1 + sqr(x11) + x11)
     *(1 + sqr(x11) + x11) + (1 + sqr(x11) + x11)*(1 + sqr(x12) + x12) + (1 + 
     sqr(x11) + x11)*(1 + sqr(x13) + x13) + (1 + sqr(x12) + x12)*(1 + sqr(x14)
      + x14) + (1 + sqr(x13) + x13)*(1 + sqr(x13) + x13) + (1 + sqr(x13) + x13)
     *(1 + sqr(x14) + x14) + (1 + sqr(x14) + x14)*(1 + sqr(x14) + x14) + (1 + 
     sqr(x15) + x15)*(1 + sqr(x15) + x15) + (1 + sqr(x16) + x16)*(1 + sqr(x16)
      + x16)) + objvar =E= 0;

* set non default bounds

x1.up = 5; 
x2.up = 5; 
x3.up = 5; 
x4.up = 5; 
x5.up = 5; 
x6.up = 5; 
x7.up = 5; 
x8.up = 5; 
x9.up = 5; 
x10.up = 5; 
x11.up = 5; 
x12.up = 5; 
x13.up = 5; 
x14.up = 5; 
x15.up = 5; 
x16.up = 5; 

* set non default levels

x1.l = 5; 
x2.l = 5; 
x3.l = 5; 
x4.l = 5; 
x5.l = 5; 
x6.l = 5; 
x7.l = 5; 
x8.l = 5; 
x9.l = 5; 
x10.l = 5; 
x11.l = 5; 
x12.l = 5; 
x13.l = 5; 
x14.l = 5; 
x15.l = 5; 
x16.l = 5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
