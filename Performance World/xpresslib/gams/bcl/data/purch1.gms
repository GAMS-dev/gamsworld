*  LP written by GAMS Convert at 02/22/08 02:22:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        7        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         55       55        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,objvar;

Negative Variables  x1,x2,x3;

Positive Variables  x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x1 + 99.9*x5 + 100.1*x6 + 199.9*x7 + 200.1*x8 + 999.9*x9 =E= 0;

e2..  - x2 + 49.9*x11 + 50.1*x12 + 249.9*x13 + 250.1*x14 + 1999.9*x15 =E= 0;

e3..  - x3 + 99.9*x17 + 100.1*x18 + 299.9*x19 + 300.1*x20 + 3999.9*x21 =E= 0;

e4..    x4 + x5 + x6 + x7 + x8 + x9 =E= 1;

e5..    x10 + x11 + x12 + x13 + x14 + x15 =E= 1;

e6..    x16 + x17 + x18 + x19 + x20 + x21 =E= 1;

e7..    x1 + x2 + x3 =G= 600;

e8..  - 920*x5 - 900*x6 - 1800*x7 - 1400*x8 - 7000*x9 - 450*x11 - 425*x12
      - 2125*x13 - 2075*x14 - 16600*x15 - 1100*x17 - 850*x18 - 2550*x19
      - 2250*x20 - 30000*x21 + objvar =E= 0;

* set non default bounds

x1.up = 240; 
x2.up = 210; 
x3.up = 240; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
