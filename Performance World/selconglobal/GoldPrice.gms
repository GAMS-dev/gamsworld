*  NLP written by GAMS Convert at 11/11/08 09:11:51
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


e1..  - (1 + (1 + x1 + x2)*(1 + x1 + x2)*(19 + 3*x1*x1 - 14*x1 + 6*x1*x2 - 14*
     x2 + 3*x2*x2))*(30 + (2*x1 - 3*x2)*(2*x1 - 3*x2)*(18 + 12*x1*x1 - 32*x1 -
     36*x1*x2 + 48*x2 + 27*x2*x2)) + objvar =E= 0;

* set non default bounds

x1.lo = -2; x1.up = 2;
x2.lo = -2; x2.up = 2;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l =  0 ;
x2.l = -1 ;

objvar.l = 3;
$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
