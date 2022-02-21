*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        0        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        4        3        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19       19        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,x4,x5,x6,objvar;

Binary Variables  b1,b2,b3;

Equations  e1,e2,e3,e4,e5,e6;


e1..    3*x4 + 2*x5 + 6*x6 =L= 150;

e2..    4*x4 + 3*x5 + 4*x6 =L= 160;

e3..  - 40*b1 + x4 =L= 0;

e4..  - 54*b2 + x5 =L= 0;

e5..  - 25*b3 + x6 =L= 0;

e6..    200*b1 + 150*b2 + 100*b3 - 6*x4 - 4*x5 - 7*x6 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;
