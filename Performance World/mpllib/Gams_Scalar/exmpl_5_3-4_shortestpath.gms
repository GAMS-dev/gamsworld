*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17       17        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         49       49        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - x1 - x2 =E= -1;

e2..    x1 - x3 - x4 =E= 0;

e3..    x3 - x5 - x6 - x7 =E= 0;

e4..    x2 + x4 + x5 - x8 - x9 =E= 0;

e5..    x6 + x8 - x10 - x11 - x12 =E= 0;

e6..    x7 + x10 - x13 =E= 0;

e7..    x9 + x11 - x14 - x15 =E= 0;

e8..    x12 + x13 + x14 - x16 =E= 0;

e9..    x15 + x16 =E= 1;

e10..  - x1 - x2 - x3 - 2*x4 - x5 - x6 - 3*x7 - 2*x8 - 4*x9 - 3*x10 - 2*x11
       - 4*x12 - x13 - 2*x14 - x15 - x16 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;