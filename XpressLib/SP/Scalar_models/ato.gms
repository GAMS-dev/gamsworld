*  LP written by GAMS Convert at 09/03/08 03:39:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17       17        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37       37        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 - x4 + x12 + x14 =E= 0;

e2..    x2 - x5 + x12 + 3*x15 + 2*x16 =E= 0;

e3..    x3 - x6 + x12 + 3*x13 + 2*x14 + x15 =E= 0;

e4..    x7 + x12 =E= 15;

e5..    x8 + x13 =E= 15;

e6..    x9 + x14 =E= 15;

e7..    x10 + x15 =E= 15;

e8..    x11 + x16 =E= 15;

e9..  - x1 - x2 - x3 - 5*x4 - 5*x5 - 5*x6 - 20*x7 - 20*x8 - 20*x9 - 20*x10
      - 20*x11 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
