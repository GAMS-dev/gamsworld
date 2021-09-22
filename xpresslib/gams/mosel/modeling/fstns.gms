*  MIP written by GAMS Convert at 03/22/08 22:05:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        6        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        1        6        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         23       23        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    b1 + b2 =G= 1;

e2..    b1 + b2 + b6 =G= 1;

e3..    b3 + b4 =G= 1;

e4..    b3 + b4 + b5 =G= 1;

e5..    b4 + b5 + b6 =G= 1;

e6..    b2 + b5 + b6 =G= 1;

e7..  - b1 - b2 - b3 - b4 - b5 - b6 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
