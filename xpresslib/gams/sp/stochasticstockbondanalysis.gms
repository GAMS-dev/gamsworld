*  LP written by GAMS Convert at 09/03/08 03:39:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17       17        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x4 =E= 55;

e2..    1.25*x3 + 1.14*x6 + x7 - x8 =E= 80;

e3..    1.25*x1 - x2 + 1.14*x4 - x5 =E= 0;

e4..    1.25*x2 - x3 + 1.14*x5 - x6 =E= 0;

e5..    4*x7 - x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
