*  NLP written by GAMS Convert at 11/11/08 09:35:02
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


e1.. 1/(0.1 + sqr((-4) + x1) + sqr((-4) + x2) + sqr((-4) + x3) + sqr((-4) + x4)
     ) + 1/(0.2 + sqr((-1) + x1) + sqr((-1) + x2) + sqr((-1) + x3) + sqr((-1)
      + x4)) + 1/(0.2 + sqr((-8) + x1) + sqr((-8) + x2) + sqr((-8) + x3) + sqr(
     (-8) + x4)) + 1/(0.4 + sqr((-6) + x1) + sqr((-6) + x2) + sqr((-6) + x3) +
     sqr((-6) + x4)) + 1/(0.4 + sqr((-3) + x1) + sqr((-7) + x2) + sqr((-3) + x3
     ) + sqr((-7) + x4)) + 1/(0.6 + sqr((-2) + x1) + sqr((-9) + x2) + sqr((-2)
      + x3) + sqr((-9) + x4)) + 1/(0.3 + sqr((-5) + x1) + sqr((-5) + x2) + sqr(
     (-3) + x3) + sqr((-3) + x4)) + 1/(0.7 + sqr((-8) + x1) + sqr((-1) + x2) +
     sqr((-8) + x3) + sqr((-1) + x4)) + 1/(0.5 + sqr((-6) + x1) + sqr((-2) + x2
     ) + sqr((-6) + x3) + sqr((-2) + x4)) + 1/(0.5 + sqr((-7) + x1) + sqr((-3.6
     ) + x2) + sqr((-7) + x3) + sqr((-3.6) + x4)) + objvar =E= 0;

* set non default bounds

x1.up = 10;
x2.up = 10;
x3.up = 10;
x4.up = 10;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
x1.l = 4 ;
x2.l = 4 ;
x3.l = 4 ;
x4.l = 4 ;

objvar.l = -10.5319 ;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
