*  NLP written by GAMS Convert at 11/11/08 09:12:02
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


e1..  - (sqr((-0.126) + x1*x3/(1 + x1 + x2)) + sqr((-0.219) + 2*x1*x3/(1 + 2*x1
      + x2)) + sqr((-0.076) + x1*x3/(1 + x1 + 2*x2)) + sqr((-0.126) + 2*x1*x3/(
     1 + 2*x1 + 2*x2)) + sqr((-0.186) + 0.1*x1*x3/(1 + 0.1*x1))) + objvar
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

x1.l =  3.13 ;
x2.l = 15.16 ;
x3.l =  0.78 ;

objvar.l = 0.00004 ;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
