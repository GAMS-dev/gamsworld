*  NLP written by GAMS Convert at 11/11/08 09:34:30
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

Equations  e1;


e1..  - (sqr(x1) + 2*x2*x2 - 0.3*cos(9.42477796077*x1) - 0.4*cos(12.56637061436
     *x2)) + objvar =E= 0.7;

* set non default bounds

x1.lo = -50; x1.up = 50;
x2.lo = -50; x2.up = 50;

* set non default levels


* set non default marginals

$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0;
x2.l = 0;
objvar.l = 0;

$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
