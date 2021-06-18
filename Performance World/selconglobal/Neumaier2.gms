*  NLP written by GAMS Convert at 11/11/08 09:34:51
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1;


e1..  - (sqr(8 - (x1 + x2 + x3 + x4)) + sqr(18 - (sqr(x1) + sqr(x2) + sqr(x3)
      + sqr(x4))) + sqr(44 - (POWER(x1,3) + POWER(x2,3) + POWER(x3,3) + POWER(
     x4,3))) + sqr(114 - (POWER(x1,4) + POWER(x2,4) + POWER(x3,4) + POWER(x4,4)
     ))) + objvar =E= 0;

* set non default bounds

x1.up = 1;
x2.up = 2;
x3.up = 3;
x4.up = 4;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 1;
x2.l = 2;
x3.l = 2;
x4.l = 3;

objvar.l = 0;
$goto cont

$label cont



Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
