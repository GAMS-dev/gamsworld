*  NLP written by GAMS Convert at 10/06/06 11:33:45
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

Positive Variables  x11,x12,x13,x14;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..    0.9*x9 + 0.222*x10 + x11 =E= 35.82;

e2..  - 3*x7 + 0.99*x10 + x12 =E= -133;

e3..  - (0.13167*x1*x8 + 1.12*x1 - 0.00667*sqr(x8)*x1) + 0.99*x4 + x13 =E= 0;

e4..  - (1.098*x8 - 0.038*sqr(x8)) - 0.325*x6 + 0.99*x7 + x14 =E= 57.425;

e5..    0.211111111111111*x9 - x11 =G= 0;

e6..    0.0201010101010102*x10 - x12 =G= 0;

e7..    0.0201010101010102*x4 - x13 =G= 0;

e8..    0.0201010101010102*x7 - x14 =G= 0;

e9..  - x1 + 1.22*x4 - x5 =E= 0;

e10.. 98000*x3/(x4*x9 + 1000*x3) - x6 =E= 0;

e11.. (x2 + x5)/x1 - x8 =E= 0;

e12.. 0.063*x4*x7 - 5.04*x1 - 0.035*x2 - 10*x3 - 3.36*x5 + objvar =E= 0;

* set non default bounds

x1.lo = 1E-5; x1.up = 2000; 
x2.lo = 1E-5; x2.up = 16000; 
x3.lo = 1E-5; x3.up = 120; 
x4.lo = 1E-5; x4.up = 5000; 
x5.lo = 1E-5; x5.up = 2000; 
x6.lo = 85; x6.up = 93; 
x7.lo = 90; x7.up = 95; 
x8.lo = 3; x8.up = 12; 
x9.lo = 1.2; x9.up = 4; 
x10.lo = 145; x10.up = 162; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
