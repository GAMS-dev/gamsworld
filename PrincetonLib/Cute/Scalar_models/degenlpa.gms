*  NLP written by GAMS Convert at 10/06/06 11:31:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         88       88        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x1 + 2*x2 + 2*x3 + 2*x4 + x5 + 2*x6 + 2*x7 + x8 + 2*x9 + x10
      =E= 0.70785;

e2..    0.326*x1 - 101*x2 + 200*x5 + 0.06*x6 + 0.02*x7 =E= 0;

e3..    0.0066667*x1 - 1.03*x3 + 200*x6 + 0.06*x8 + 0.02*x9 =E= 0;

e4..    0.00066667*x1 - 1.01*x4 + 200*x7 + 0.06*x9 + 0.02*x10 =E= 0;

e5..    0.978*x2 - 201*x5 + 100*x11 + 0.03*x12 + 0.01*x13 =E= 0;

e6..    0.01*x2 + 0.489*x3 - 101.03*x6 + 100*x12 + 0.03*x14 + 0.01*x15 =E= 0;

e7..    0.001*x2 + 0.489*x4 - 101.03*x7 + 100*x13 + 0.03*x15 + 0.01*x16 =E= 0;

e8..    0.001*x3 + 0.01*x4 - 1.04*x9 + 100*x15 + 0.03*x18 + 0.01*x19 =E= 0;

e9..    0.02*x3 - 1.06*x8 + 100*x14 + 0.03*x17 + 0.01*x19 =E= 0;

e10..    0.002*x4 - 1.02*x10 + 100*x16 + 0.03*x19 + 0.01*x20 =E= 0;

e11..  - 2.5742E-6*x11 + 0.00252*x13 - 0.61975*x16 + 1.03*x20 =E= 0;

e12..  - 0.00257*x11 + 0.25221*x12 - 6.2*x14 + 1.09*x17 =E= 0;

e13..    0.00629*x11 - 0.20555*x12 - 4.1106*x13 + 101.04*x15 + 505.1*x16
       - 256.72*x19 =E= 0;

e14..    0.00841*x12 - 0.08406*x13 - 0.20667*x14 + 20.658*x16 + 1.07*x18
       - 10.5*x19 =E= 0;

e15..  - 0.01*x2 - 33.333*x3 - 100*x4 - 0.01*x5 - 33.343*x6 - 100.01*x7
       - 33.333*x8 - 133.33*x9 - 100*x10 + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 
x9.up = 1; 
x10.up = 1; 
x11.up = 1; 
x12.up = 1; 
x13.up = 1; 
x14.up = 1; 
x15.up = 1; 
x16.up = 1; 
x17.up = 1; 
x18.up = 1; 
x19.up = 1; 
x20.up = 1; 

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
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 
x20.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
