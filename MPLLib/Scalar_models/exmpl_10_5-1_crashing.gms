
*  LP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         19        1        0       18        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         30       30        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         69       69        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,objvar;

Negative Variables  x29;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..    x1 - x2 - x15 =L= -2;

e2..    x2 - x3 - x16 =L= -4;

e3..    x3 - x4 - x17 =L= -10;

e4..    x3 - x5 - x17 =L= -10;

e5..    x3 - x9 - x17 =L= -10;

e6..    x4 - x7 - x18 =L= -6;

e7..    x5 - x6 - x19 =L= -4;

e8..    x5 - x8 - x19 =L= -4;

e9..    x6 - x10 - x20 =L= -5;

e10..    x7 - x8 - x21 =L= -7;

e11..    x8 - x13 - x22 =L= -9;

e12..    x9 - x10 - x23 =L= -7;

e13..    x10 - x11 - x24 =L= -8;

e14..    x10 - x12 - x24 =L= -8;

e15..    x11 - x14 - x25 =L= -4;

e16..    x12 - x14 - x26 =L= -5;

e17..    x13 - x27 - x29 =L= -2;

e18..    x14 - x28 - x29 =L= -6;

e19..  - 100000*x15 - 50000*x16 - 80000*x17 - 40000*x18 - 160000*x19
       - 40000*x20 - 40000*x21 - 60000*x22 - 30000*x23 - 30000*x24 - 40000*x25
       - 50000*x26 - 100000*x27 - 60000*x28 + objvar =E= 4550000;

* set non default bounds

x15.up = 1; 
x16.up = 2; 
x17.up = 3; 
x18.up = 2; 
x19.up = 1; 
x20.up = 2; 
x21.up = 3; 
x22.up = 3; 
x23.up = 2; 
x24.up = 2; 
x25.up = 1; 
x26.up = 2; 
x27.up = 1; 
x28.up = 3; 
x29.up = 40; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
