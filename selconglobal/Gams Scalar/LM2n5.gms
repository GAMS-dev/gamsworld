*  NLP written by GAMS Convert at 11/11/08 09:34:00
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          6        1        5        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1;


e1..  - 0.1*(sqr((-1) + x1)*(1 + sqr(sin(9.42477796077*x2))) + sqr((-1) + x2)*(
     1 + sqr(sin(9.42477796077*x3))) + sqr((-1) + x3)*(1 + sqr(sin(
     9.42477796077*x4))) + sqr((-1) + x4)*(1 + sqr(sin(9.42477796077*x5))) +
     sqr(sin(9.42477796077*x1)) + sqr((-1) + x5)*(1 + sqr(sin(6.28318530718*x5)
     ))) + objvar =E= 0;

* set non default bounds

x1.lo = -5; x1.up = 5;
x2.lo = -5; x2.up = 5;
x3.lo = -5; x3.up = 5;
x4.lo = -5; x4.up = 5;
x5.lo = -5; x5.up = 5;

* set non default levels

* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 1;
x2.l = 1;
x3.l = 1;
x4.l = 1;
x5.l = 1;

objvar.l = 0;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
