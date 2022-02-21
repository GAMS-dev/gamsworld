
*  LP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         20       20        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4;


e1..    12*x1 + 9*x2 + 15*x3 - x4 + x5 =E= 125;

e2..    5*x1 + 3*x2 + 4*x3 - x6 + x7 =E= 40;

e3..    5*x1 + 7*x2 + 8*x3 - x8 + x9 =E= 55;

e4..  - 5*x5 - 2*x6 - 4*x7 - 3*x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;