*  LP written by GAMS Convert at 09/07/07 23:01:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25       25        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x8,x9,x11,x13,x15,x16,x17,x18,x19,x20
          ,x21,x22,x23,x24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x1 - x5 - x6 =E= 0;

e2..    x2 - x7 - x8 =E= 0;

e3..    x3 - x9 - x10 - x11 =E= 0;

e4..    x4 - x12 - x13 - x14 - x15 =E= 0;

e5..    x7 - x16 =E= 0;

e6..    x5 + x8 - x17 =E= 0;

e7..    x12 - x18 =E= 0;

e8..    x6 + x9 + x13 - x19 =E= 0;

e9..    x10 + x14 - x20 =E= 0;

e10..    x11 + x15 - x21 =E= 0;

e11..    x16 + x17 - x22 =E= 0;

e12..    x18 + x19 - x23 =E= 0;

e13..    x20 + x21 - x24 =E= 0;

e14..    x1 + x2 + x3 + x4 =E= 180;

e15..  - 12*x5 - 11*x6 - 12*x7 - 14*x8 - 9*x9 - 4*x10 - 5*x11 - 11*x12 - 14*x13
       - 10*x14 - 14*x15 + objvar =E= 0;

* set non default bounds

x1.up = 50; 
x2.up = 40; 
x3.up = 35; 
x4.up = 65; 
x7.lo = 10; x7.up = 50; 
x10.lo = 10; x10.up = 50; 
x12.lo = 10; x12.up = 50; 
x14.lo = 10; x14.up = 50; 

* set non default levels

x7.l = 10; 
x10.l = 10; 
x12.l = 10; 
x14.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
