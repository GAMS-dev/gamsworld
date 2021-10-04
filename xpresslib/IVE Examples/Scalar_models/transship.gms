*  MIP written by GAMS Convert at 01/17/08 23:45:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        7        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         12       12        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         34       34        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 - x2 =E= 100;

e2..    x2 + x3 - x4 =E= 120;

e3..    x4 + x5 - x6 =E= 100;

e4..    x6 + x7 - x8 =E= 90;

e5..    x8 + x9 - x10 =E= 120;

e6..    x10 + x11 =E= 110;

e7..    x1 =L= 140;

e8..    x3 =L= 100;

e9..    x5 =L= 110;

e10..    x7 =L= 100;

e11..    x9 =L= 120;

e12..    x11 =L= 100;

e13..  - 5*x1 - 0.2*x2 - 8*x3 - 0.3*x4 - 6*x5 - 0.2*x6 - 6*x7 - 0.25*x8 - 7*x9
       - 0.3*x10 - 6*x11 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
