*  NLP written by GAMS Convert at 11/11/08 09:49:21
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,objvar;

Equations  e1;


e1.. (-0.5*exp(-100*(sqr(x1) + sqr(x2)))) - 1.2*exp(-4*(sqr((-1) + x1) + sqr(x2
     ))) - exp(-4*(sqr(x1) + sqr(0.5 + x2))) - exp(-4*(sqr(0.5 + x1) + sqr(x2))
     ) - 1.2*exp(-4*(sqr(x1) + sqr((-1) + x2))) - objvar =E= 0;

* set non default bounds
x1.lo = -2;
x1.up =  2;
x2.lo = -2;
x2.up =  2;


* set non default levels

* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
x1.l = -0.01356 ;
x2.l = -0.01356 ;
objvar.l = -1.29695 ;
$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
