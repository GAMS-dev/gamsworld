*  LP written by GAMS Convert at 07/05/07 16:06:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         20        8        2       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         23       23        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         68       68        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,objvar;

Positive Variables  x1,x2,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..  - 0.03*x1 - 0.05*x2 + x16 =L= 0;

e2..  - 0.15*x1 - 0.2*x2 + x17 =L= 0;

e3..  - 0.4*x1 - 0.35*x2 + x18 =L= 0;

e4..  - 0.15*x1 - 0.1*x2 + x21 =L= 0;

e5..    x7 - 0.85*x17 =L= 0;

e6..    x12 - 0.15*x17 =L= 0;

e7..    x19 - 0.4*x21 =L= 0;

e8..    x20 - 0.35*x21 =L= 0;

e9..  - x8 - x10 - x14 + x19 =E= 0;

e10..  - x11 - x15 + x20 =E= 0;

e11..  - x9 - x13 + x18 =E= 0;

e12..    x3 + x6 - x12 - x16 =E= 0;

e13..    x4 - x6 - x7 - x8 =E= 0;

e14..    x5 - x9 - x10 - x11 =E= 0;

e15..  - x13 - x14 - x15 + x22 =E= 0;

e16..  - 94*x4 + 120*x6 + 100*x7 + 74*x8 =G= 0;

e17..  - 12.7*x4 + 60*x6 + 2.6*x7 + 4.1*x8 =L= 0;

e18..  - 17*x4 + 105*x6 + 3*x7 + 12*x8 =G= 0;

e19..  - 0.05*x5 + 0.03*x9 + 0.12*x10 + 0.76*x11 =L= 0;

e20..  - 2.1*x1 - 2.1*x2 - 4.18*x17 - 2.04*x18 - 0.6*x21 + objvar =E= 0;

* set non default bounds

x1.up = 250000; 
x2.up = 500000; 
x3.lo = 20000; 
x4.lo = 40000; 
x5.lo = 30000; 
x17.up = 30000; 
x18.up = 50000; 
x21.up = 40000; 
x22.lo = 42000; 

* set non default levels

x3.l = 20000; 
x4.l = 40000; 
x5.l = 30000; 
x22.l = 42000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
