*  MIP written by GAMS Convert at 03/22/08 22:05:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13       13        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x2 =L= 400;

e2..    x3 + x4 =L= 500;

e3..    x1 + x3 =L= 650;

e4..    x2 + x4 =L= 600;

e5..  - 50*x1 - 125*x2 - 47*x3 - 132*x4 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
