*  LP written by GAMS Convert at 03/22/08 22:27:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        1        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        7        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4;


e1..    2*x1 + 3*x2 =G= 6;

e2..    2*x1 + 3*x2 =L= 12;

e3..    x2 =L= 2;

e4..  - x1 + objvar =E= 2;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;