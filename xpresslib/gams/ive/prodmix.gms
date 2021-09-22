*  LP written by GAMS Convert at 01/17/08 23:45:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        9        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4;


e1..    5*x1 + 10*x2 =L= 40;

e2..    9*x1 + 2*x2 =L= 40;

e3..    7*x1 + 5*x2 =L= 40;

e4..  - 58*x1 - 44*x2 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
