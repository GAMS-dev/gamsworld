*  NLP written by GAMS Convert at 10/06/06 11:47:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       13        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19       19        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       29        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x13,x14,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..  - x3 =E= 0;

e2..  - x4 =E= 0;

e3..    x7 - x12 - x15 =E= 0;

e4..    x8 + x12 - x15 =E= 0;

e5..    x12 - x13 + x14 =E= 0;

e6..  - x2 + x11 =E= -2;

e7..  - x1 + 1.5*x12 =E= 0;

e8..  - x5 + x6 - x16 =E= 0;

e9..    x5 =E= 0;

e10..  - x1 + x3 + x6 =E= 0;

e11..    x9 =E= 0;

e12..    x10 =E= 0;

e13..    x9 - x17 =L= 0;

e14..    x10 - x18 =L= 0;

e15..    objvar =E= 0;

* set non default bounds

x1.up = 100; 
x2.up = 100; 
x3.up = 30; 
x4.up = 100; 
x5.up = 50; 
x6.up = 50; 
x7.up = 30; 
x8.up = 30; 
x9.up = 800; 
x10.up = 800; 
x11.lo = 0.5; x11.up = 50; 
x12.lo = 0.1; x12.up = 10; 
x13.up = 20; 
x14.up = 10; 
x15.lo = 0.1; x15.up = 30; 
x16.up = 50; 
x17.lo = 100; x17.up = 1000; 
x18.lo = 100; x18.up = 1000; 

* set non default levels

x1.l = 0.15; 
x2.l = 24.079; 
x3.l = 9.2459E-15; 
x6.l = 0.15; 
x7.l = 6.812; 
x8.l = 6.612; 
x11.l = 22.079; 
x13.l = 0.65268; 
x14.l = 0.55268; 
x15.l = 6.712; 
x16.l = 0.15; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
