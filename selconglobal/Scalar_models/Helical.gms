*  DNLP written by GAMS Convert at 11/11/08 09:36:41
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
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (100*(sqr(x2 - 10*(0.159154943091885*arctan2(x2,x1) + IfThen(rel_le(x1,
     0),0.5,0))) + sqr((-1) + sqrt(x1*x1 + x2*x2))) + x3*x3) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10;
x2.lo = -10; x2.up = 10;
x3.lo = -10; x3.up = 10;

* set non default levels

x2.l = 1;

* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 1;
x2.l = 0;
x3.l = 0;

objvar.l = 0;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
