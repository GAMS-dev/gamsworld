*  NLP written by GAMS Convert at 11/11/08 09:11:58
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

Positive Variables  x1,x2,x3;

Equations  e1;


e1.. exp(-(3*sqr((-0.3689) + x1) + 10*sqr((-0.117) + x2) + 30*sqr((-0.2673) +
     x3))) + 1.2*exp(-(0.1*sqr((-0.4699) + x1) + 10*sqr((-0.4387) + x2) + 35*
     sqr((-0.747) + x3))) + 3*exp(-(3*sqr((-0.1091) + x1) + 10*sqr((-0.8732) +
     x2) + 30*sqr((-0.5547) + x3))) + 3.2*exp(-(0.1*sqr((-0.03815) + x1) + 10*
     sqr((-0.5743) + x2) + 35*sqr((-0.8828) + x3))) + objvar =E= 0;

* set non default bounds

x1.up = 1;
x2.up = 1;
x3.up = 1;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l =  0.114614;
x2.l =  0.555649;
x3.l =  0.852547;

objvar.l = -3.862782;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
