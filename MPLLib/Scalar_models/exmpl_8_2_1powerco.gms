*  LP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
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
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x2 =E= 1;

e2..  - x1 + x3 + x4 =E= 0;

e3..  - x2 + x5 =E= 0;

e4..  - x3 + x6 =E= 0;

e5..  - x4 - x5 + x7 =E= 0;

e6..    x6 + x7 =E= 1;

e7..  - 4*x1 - 3*x2 - 3*x3 - 2*x4 - 3*x5 - 2*x6 - 2*x7 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;