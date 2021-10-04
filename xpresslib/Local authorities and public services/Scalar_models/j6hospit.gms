*  LP written by GAMS Convert at 10/23/07 22:15:57
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        8        4        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         12       12        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         49       49        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Positive Variables  x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x2 + x3 + x4 + x5 =E= 1;

e2..  - 30.12*x2 - 18.54*x3 - 20.88*x4 - 10.42*x5 + x6 =E= 0;

e3..  - 13.54*x2 - 14.45*x3 - 8.52*x4 - 17.74*x5 + x7 =E= 0;

e4..  - 13*x2 - 7*x3 - 8*x4 - 26*x5 + x8 =E= 0;

e5..  - 79*x2 - 55*x3 - 47*x4 - 50*x5 + x9 =E= 0;

e6..  - 90*x2 - 87*x3 - 51*x4 - 66*x5 + x10 =E= 0;

e7..  - 38.89*x2 - 109.48*x3 - 40.43*x4 - 48.41*x5 + x11 =E= 0;

e8..  - 34*x2 - 33*x3 - 20*x4 - 33*x5 + x12 =E= 0;

e9..    x6 =G= 10.42;

e10..    x7 =G= 17.74;

e11..    x8 =G= 26;

e12..    x9 =G= 50;

e13..  - 66*objvar + x10 =L= 0;

e14..  - 48.41*objvar + x11 =L= 0;

e15..  - 33*objvar + x12 =L= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
