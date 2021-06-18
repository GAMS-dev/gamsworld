*  NLP written by GAMS Convert at 11/11/08 09:34:45
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1;


e1..  - (1 + 7*x1*x1 - 8*x1 - 2.33333333333333*x1*x1*x1 + 0.25*x1*x1*x1*x1)*x2*
     x2*exp(-x2) + objvar =E= 0;

* set non default bounds

x1.up = 5;
x2.up = 6;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
x1.l = 4;
x2.l = 2;

objvar.l = -2.3458;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
