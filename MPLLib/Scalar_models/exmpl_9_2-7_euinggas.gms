*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12        4        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       10        3        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         38       38        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x9,x10,x11,x12;

Binary Variables  b1,b2,b3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..  - x4 + x9 + x10 =L= 500;

e2..    x11 + x12 =L= 1000;

e3..  - x9 + x11 =L= 0;

e4..  - 0.4*x10 + 0.6*x12 =L= 0;

e5..    x4 - 500*x6 - 1000*x7 - 1500*x8 =E= 0;

e6..  - b1 + x5 =L= 0;

e7..  - b1 - b2 + x6 =L= 0;

e8..  - b2 - b3 + x7 =L= 0;

e9..  - b3 + x8 =L= 0;

e10..    b1 + b2 + b3 =E= 1;

e11..    x5 + x6 + x7 + x8 =E= 1;

e12..    12500*x6 + 20000*x7 + 25000*x8 - 12*x9 - 12*x10 - 14*x11 - 14*x12
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;