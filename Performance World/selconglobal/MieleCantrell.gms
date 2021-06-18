*  NLP written by GAMS Convert at 11/11/08 09:12:04
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

Equations  e1;


e1..  - (POWER(exp(x1) - x2,4) + 100*POWER(x2 - x3,6) + POWER(tan(x3 - x4),4)
      + POWER(x1,8)) + objvar =E= 0;

* set non default bounds

x1.lo = -1; x1.up = 1;
x2.lo = -1; x2.up = 1;
x3.lo = -1; x3.up = 1;
x4.lo = -1; x4.up = 1;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1

x1.l = 0 ;
x2.l = 1 ;
x3.l = 1 ;
x4.l = 1 ;

objvar.l = 0 ;

$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
