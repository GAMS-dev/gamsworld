*  LP written by GAMS Convert at 10/23/07 22:12:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
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
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3;


e1..    3*x1 + 2*x2 =L= 160;

e2..    x1 + 3*x2 =L= 200;

e3..  - 5*x1 - 20*x2 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
