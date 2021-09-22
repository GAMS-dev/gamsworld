*  NLP written by GAMS Convert at 07/27/06 09:26:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12        8        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         40       29       11        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..    x1 + 0.9*x13 + 0.222*x14 =E= 35.82;

e2..    x2 - 3*x11 + 0.99*x14 =E= -133;

e3..  - (0.13167*x5*x12 + 1.12*x5 - 0.00667*sqr(x12)*x5) + x3 + 0.99*x8 =E= 0;

e4..  - (1.098*x12 - 0.038*sqr(x12)) + x4 - 0.325*x10 + 0.99*x11 =E= 57.425;

e5..  - x1 + 0.211111111111111*x13 =G= 0;

e6..  - x2 + 0.0201010101010102*x14 =G= 0;

e7..  - x3 + 0.0201010101010102*x8 =G= 0;

e8..  - x4 + 0.0201010101010102*x11 =G= 0;

e9..  - x5 + 1.22*x8 - x9 =E= 0;

e10.. 98000*x7/(x8*x13 + 1000*x7) - x10 =E= 0;

e11.. (x6 + x9)/x5 - x12 =E= 0;

e12.. 0.063*x8*x11 - 5.04*x5 - 0.035*x6 - 10*x7 - 3.36*x9 + objvar =E= 0;

* set non default bounds

x5.lo = 1E-5; x5.up = 2000; 
x6.lo = 1E-5; x6.up = 16000; 
x7.lo = 1E-5; x7.up = 120; 
x8.lo = 1E-5; x8.up = 5000; 
x9.lo = 1E-5; x9.up = 2000; 
x10.lo = 85; x10.up = 93; 
x11.lo = 90; x11.up = 95; 
x12.lo = 3; x12.up = 12; 
x13.lo = 1.2; x13.up = 4; 
x14.lo = 145; x14.up = 162; 

* set non default levels

x5.l = 1745; 
x6.l = 12000; 
x7.l = 110; 
x8.l = 3048; 
x9.l = 1974; 
x10.l = 89.2; 
x11.l = 92.8; 
x12.l = 8; 
x13.l = 3.6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
