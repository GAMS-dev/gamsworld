*  LP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        2        8        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         20       20        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - x1 + x3 =G= 6;

e2..  - x2 + x3 =G= 9;

e3..  - x1 + x4 =G= 6;

e4..  - x2 + x4 =G= 9;

e5..  - x4 + x5 =G= 7;

e6..  - x3 + x6 =G= 8;

e7..  - x5 + x6 =G= 10;

e8..  - x6 + x7 =G= 12;

e9..    x7 - x8 =E= 0;

e10..  - x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;