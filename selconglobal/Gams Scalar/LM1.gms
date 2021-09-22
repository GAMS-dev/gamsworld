*  NLP written by GAMS Convert at 11/11/08 09:33:56
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - 1.04719755119667*(sqr(0.25 + 0.25*x1)*(1 + sqr(sin(0.7853981633975*x2))
     ) + sqr(0.25 + 0.25*x2)*(1 + sqr(sin(0.7853981633975*x3))) + 10*sqr(sin(
     3.9269908169875 + 0.7853981633975*x1)) + sqr(0.25 + 0.25*x3)) + objvar
      =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10;
x2.lo = -10; x2.up = 10;
x3.lo = -10; x3.up = 10;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = -1;
x2.l = -1;
x3.l = -1;

objvar.l = 0;
$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
