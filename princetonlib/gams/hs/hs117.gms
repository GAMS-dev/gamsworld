*  NLP written by GAMS Convert at 07/27/06 09:26:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         78       68       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6;


e1.. 12*sqr(x11) + 60*x11 + 16*x1 + 3.5*x3 - 2*x6 + x7 + x8 - x9 - x10 - 40*x12
      - 20*x13 + 64*x14 - 20*x15 =G= 15;

e2.. 24*sqr(x12) + 78*x12 - 2*x1 + 2*x2 + 2*x4 + 9*x5 + x7 + 2*x8 - 2*x9 - x10
      - 40*x11 - 12*x13 - 62*x14 + 64*x15 =G= 27;

e3.. 30*sqr(x13) + 20*x13 - 2*x3 + 2*x5 + 4*x6 + x7 + 3*x8 - 3*x9 - x10
      - 20*x11 - 12*x12 - 12*x14 - 20*x15 =G= 36;

e4.. 18*sqr(x14) + 78*x14 - x1 - 4*x2 + 4*x4 - x5 + x7 + 2*x8 - 4*x9 - x10
      + 64*x11 - 62*x12 - 12*x13 - 40*x15 =G= 18;

e5.. 6*sqr(x15) + 60*x15 - 2*x2 + x4 + 2.8*x5 + x7 + x8 - 5*x9 - x10 - 20*x11
      + 64*x12 - 20*x13 - 40*x14 =G= 12;

e6..  - (30*x11*x11 - 20*x12*x11 - 10*x13*x11 + 32*x14*x11 - 10*x15*x11 + 39*
     x12*x12 - 20*x11*x12 - 6*x13*x12 - 31*x14*x12 + 32*x15*x12 + (-10*x11*x13)
      - 6*x12*x13 + 10*x13*x13 - 6*x14*x13 - 10*x15*x13 + 32*x11*x14 - 31*x12*
     x14 - 6*x13*x14 + 39*x14*x14 - 20*x15*x14 + 32*x12*x15 - 10*x11*x15 - 10*
     x13*x15 - 20*x14*x15 + 30*x15*x15 + 8*POWER(x11,3) + 16*POWER(x12,3) + 20*
     POWER(x13,3) + 12*POWER(x14,3) + 4*POWER(x15,3)) - 40*x1 - 2*x2 - 0.25*x3
      - 4*x4 - 4*x5 - x6 - 40*x7 - 60*x8 + 5*x9 + x10 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.001; 
x2.l = 0.001; 
x3.l = 0.001; 
x4.l = 0.001; 
x5.l = 0.001; 
x6.l = 0.001; 
x7.l = 60; 
x8.l = 0.001; 
x9.l = 0.001; 
x10.l = 0.001; 
x11.l = 0.001; 
x12.l = 0.001; 
x13.l = 0.001; 
x14.l = 0.001; 
x15.l = 0.001; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
