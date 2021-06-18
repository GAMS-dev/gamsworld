*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        2        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         14       14        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       58        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

Equations  e1,e2,e3,e4,e5;


e1..    11.6*x1 + 13.7*x2 + 9.5*x3 + 48.5*x4 + 31.9*x5 + 51.1*x6 + 65.5*x7
      + 21.8*x11 + 46.9*x12 =G= 18;

e2..    0.05*x1 + 0.07*x2 + 0.33*x4 + 1.27*x6 + 1.27*x7 + 23.35*x8 + 35.84*x9
      + 0.81*x10 + 1.79*x11 + 7.34*x12 =G= 1;

e3..    0.35*x1 + 0.37*x2 + 0.1*x3 + 0.62*x4 + 1.03*x6 + 1.69*x7 + 18.21*x8
      + 0.01*x9 + 0.08*x10 + 0.31*x11 + 1.59*x12 + 22.45*x13 =G= 0.9;

e4..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
      =E= 1;

e5..  - 0.8*x1 - 1.1*x2 - 0.85*x3 - 3.45*x4 - 2*x5 - 2.1*x6 - 3*x7 - 0.8*x8
      - 0.45*x9 - 0.72*x10 - 1.8*x11 - 3*x12 - 0.6*x13 + objvar =E= 0;

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

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
