*  MIP written by GAMS Convert at 05/10/09 15:17:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        2        1       12        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       11       10        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         60       60        0        0
*
*  Solve m using MIP maximizing objvar;
*


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x11,x12,x13,x14,x15,x16,x17,x18,x19,x20;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x12 + x13 + x14 + x19 + x20 =L= 0.333333333333333;

e2..    x11 + x12 + x13 + x14 =G= 0.5;

e3..    x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 =E= 1;

e4..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 =L= 4;

e5..  - b1 + x11 =L= 0;

e6..  - b2 + x12 =L= 0;

e7..  - b3 + x13 =L= 0;

e8..  - b4 + x14 =L= 0;

e9..  - b5 + x15 =L= 0;

e10..  - b6 + x16 =L= 0;

e11..  - b7 + x17 =L= 0;

e12..  - b8 + x18 =L= 0;

e13..  - b9 + x19 =L= 0;

e14..  - b10 + x20 =L= 0;

e15..  - 5*x11 - 17*x12 - 26*x13 - 12*x14 - 8*x15 - 9*x16 - 7*x17 - 6*x18
       - 31*x19 - 21*x20 + objvar =E= 0;

* set non default bounds

x11.up = 0.3; 
x12.up = 0.3; 
x13.up = 0.3; 
x14.up = 0.3; 
x15.up = 0.3; 
x16.up = 0.3; 
x17.up = 0.3; 
x18.up = 0.3; 
x19.up = 0.3; 
x20.up = 0.3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
