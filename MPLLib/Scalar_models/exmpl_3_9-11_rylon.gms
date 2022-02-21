*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        6        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         24       24        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - 7*x1 - 18*x2 - 6*x3 - 14*x4 + x6 =E= 0;

e2..  - 4*x2 - 4*x4 + x7 =E= 0;

e3..  - 3*x5 + x8 =E= 0;

e4..    x5 =L= 4000;

e5..    3*x2 + 2*x4 + x5 =L= 6000;

e6..    x1 + x2 - 3*x5 =E= 0;

e7..    x3 + x4 - 4*x5 =E= 0;

e8..  - x6 + x7 + x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;