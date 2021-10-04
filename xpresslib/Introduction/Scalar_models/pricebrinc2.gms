*  MIP written by GAMS Convert at 10/23/07 22:12:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        2        2        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        4        3        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21       21        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,x4,x5,x6,objvar;

Binary Variables  b1,b2,b3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x4 + x5 + x6 =E= 150;

e2..    50*b2 - x4 =L= 0;

e3..    70*b3 - x5 =L= 0;

e4..  - 50*b1 + x4 =L= 0;

e5..  - 70*b2 + x5 =L= 0;

e6..  - 80*b3 + x6 =L= 0;

e7..    b1 - b2 =G= 0;

e8..    b2 - b3 =G= 0;

e9..  - 0.8*x4 - 0.5*x5 - 0.3*x6 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
