*  NLP written by GAMS Convert at 11/11/08 09:34:34
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

Scalar PI / 3.14159265359 / ;

Variables  x1,x2,objvar;

Positive Variables  x2;

Equations  e1;


e1..  - (sqr((-6) + 1.59154943091885*x1 - 0.129184509143964*x1*x1 + x2) +
     9.60211264227029*cos(x1)) + objvar =E= 10;

* set non default bounds

x1.lo = -5; x1.up = 10;
x2.up = 15;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* 3 global minima
$label sol1
x1.l = -PI         ;
x2.l = 12.275      ;
objvar.l = 5/(4*PI);
$goto cont

$label sol2
x1.l =  PI         ;
x2.l =  2.275      ;
objvar.l = 5/(4*PI);
$goto cont

$label sol3
x1.l =  3*PI       ;
x2.l =  2.475      ;
objvar.l = 5/(4*PI);
$goto cont


$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
