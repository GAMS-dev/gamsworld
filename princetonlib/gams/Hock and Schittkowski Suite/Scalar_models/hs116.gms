*  NLP written by GAMS Convert at 07/27/06 09:26:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16        1       14        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         14       14        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         50       19       31        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - x2 + x3 =G= 0;

e2..  - x1 + x2 =G= 0;

e3..  - 0.002*x7 + 0.002*x8 =G= -1;

e4..    x11 + x12 + x13 =G= 50;

e5.. 1.231059*x3*x10 - 1.262626*x10 + x13 =G= 0;

e6.. (-0.975*x2*x5) - 0.03475*x2 + x5 + 0.00975*sqr(x2) =G= 0;

e7.. (-0.975*x3*x6) - 0.03475*x3 + x6 + 0.00975*sqr(x3) =G= 0;

e8.. (-0.975*x1*x4) - 0.03475*x1 + x4 + 0.00975*sqr(x1) =G= 0;

e9.. 1.231059*x2*x9 - 1.262626*x9 + x12 =G= 0;

e10.. 1.231059*x1*x8 - 1.262626*x8 + x11 =G= 0;

e11.. x5*x7 - x1*x8 - x4*x7 + x4*x8 =G= 0;

e12.. (-0.002*(x2*x9 + x5*x8 - x1*x8 - x6*x9)) - x5 - x6 =G= -1;

e13.. x2*x9 - x3*x10 - x6*x9 - 500*x2 + 500*x6 + x2*x10 =G= 0;

e14.. x2 - 0.002*(x2*x10 - x3*x10) =G= 0.9;

e15..    x11 + x12 + x13 =L= 250;

e16..  - x11 - x12 - x13 + objvar =E= 0;

* set non default bounds

x1.lo = 0.1; x1.up = 1; 
x2.lo = 0.1; x2.up = 1; 
x3.lo = 0.1; x3.up = 1; 
x4.lo = 0.0001; x4.up = 0.1; 
x5.lo = 0.1; x5.up = 0.9; 
x6.lo = 0.1; x6.up = 0.9; 
x7.lo = 0.1; x7.up = 1000; 
x8.lo = 0.1; x8.up = 1000; 
x9.lo = 500; x9.up = 1000; 
x10.lo = 0.1; x10.up = 500; 
x11.lo = 1; x11.up = 150; 
x12.lo = 0.0001; x12.up = 150; 
x13.lo = 0.0001; x13.up = 150; 

* set non default levels

x1.l = 0.5; 
x2.l = 0.8; 
x3.l = 0.9; 
x4.l = 0.1; 
x5.l = 0.14; 
x6.l = 0.5; 
x7.l = 489; 
x8.l = 80; 
x9.l = 650; 
x10.l = 450; 
x11.l = 150; 
x12.l = 150; 
x13.l = 150; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
