
*  MIP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        2        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10        1        9        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       27        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9;

Equations  e1,e2,e3,e4,e5;


e1..    b1 + b4 + b7 =L= 1;

e2..    b2 + b5 + b8 =L= 1;

e3..    b3 + b6 + b9 =L= 1;

e4..    b1 + b2 + b3 + 2*b4 + 2*b5 + 2*b6 + 3*b7 + 3*b8 + 3*b9 =E= 5;

e5..  - b1 + b3 - 3*b4 - 2*b5 - 2*b6 - 3*b7 - 3*b8 - 4*b9 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;