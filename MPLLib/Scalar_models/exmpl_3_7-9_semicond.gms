*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        6        2        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         22       22        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + 50*x6 + 35*x7 =E= 10000;

e2..    x2 - 100*x6 - 90*x7 =E= 1000;

e3..    x3 + 30*x6 + 40*x7 =E= 9000;

e4..    x4 =E= 11000;

e5..  - x1 - x2 - x3 + x5 =E= 0;

e6..    x6 =L= 100;

e7..    x7 =L= 100;

e8..    x1 =G= 4000;

e9..  - 2*x4 + x5 =G= 0;

e10..  - 20*x6 - 15*x7 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;