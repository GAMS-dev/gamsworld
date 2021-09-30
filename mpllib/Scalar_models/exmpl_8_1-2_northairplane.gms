*  NLP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x2 + x3 + x4 + x5 =E= 25;

e2..    x6 + x7 + x8 + x9 + x10 =E= 35;

e3..    x11 + x12 + x13 + x14 + x15 =E= 30;

e4..    x16 + x17 + x18 + x19 + x20 =E= 10;

e5..    x1 + x6 + x11 + x16 =E= 10;

e6..    x2 + x7 + x12 + x17 =E= 15;

e7..    x3 + x8 + x13 + x18 =E= 25;

e8..    x4 + x9 + x14 + x19 =E= 20;

e9..    x5 + x10 + x15 + x20 =E= 30;

e10..  - 1.08*x1 - 1.095*x2 - 1.11*x3 - 1.125*x4 - 999*x6 - 1.11*x7 - 1.125*x8
       - 1.14*x9 - 999*x11 - 999*x12 - 1.1*x13 - 1.115*x14 - 999*x16 - 999*x17
       - 999*x18 - 1.13*x19 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;