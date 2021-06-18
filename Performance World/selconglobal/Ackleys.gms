*  NLP written by GAMS Convert at 11/25/08 03:43:39
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - (-20*exp(-0.02*sqrt(0.1*(sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5
     ) + sqr(x6) + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10)))) - exp(0.1*(cos(
     6.28318530718*x1) + cos(6.28318530718*x2) + cos(6.28318530718*x3) + cos(
     6.28318530718*x4) + cos(6.28318530718*x5) + cos(6.28318530718*x6) + cos(
     6.28318530718*x7) + cos(6.28318530718*x8) + cos(6.28318530718*x9) + cos(
     6.28318530718*x10)))) + objvar =E= 22.718281828459;

* set non default bounds

x1.lo = -30; x1.up = 30;
x2.lo = -30; x2.up = 30;
x3.lo = -30; x3.up = 30;
x4.lo = -30; x4.up = 30;
x5.lo = -30; x5.up = 30;
x6.lo = -30; x6.up = 30;
x7.lo = -30; x7.up = 30;
x8.lo = -30; x8.up = 30;
x9.lo = -30; x9.up = 30;
x10.lo = -30; x10.up = 30;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0;
x2.l = 0;
x3.l = 0;
x4.l = 0;
x5.l = 0;
x6.l = 0;
x7.l = 0;
x8.l = 0;
x9.l = 0;
x10.l = 0;
objvar.l = 0;
$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;


