*  NLP written by GAMS Convert at 11/11/08 09:34:02
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


e1..  - (sqr(log((-2) + x1)) + sqr(log(10 - x1)) + sqr(log((-2) + x2)) + sqr(
     log(10 - x2)) + sqr(log((-2) + x3)) + sqr(log(10 - x3)) + sqr(log((-2) +
     x4)) + sqr(log(10 - x4)) + sqr(log((-2) + x5)) + sqr(log(10 - x5)) + sqr(
     log((-2) + x6)) + sqr(log(10 - x6)) + sqr(log((-2) + x7)) + sqr(log(10 -
     x7)) + sqr(log((-2) + x8)) + sqr(log(10 - x8)) + sqr(log((-2) + x9)) +
     sqr(log(10 - x9)) + sqr(log((-2) + x10)) + sqr(log(10 - x10)) - exp(0.2*
     log(x1*x2*x3*x4*x5*x6*x7*x8*x9*x10))) + objvar =E= 0;

* set non default bounds

x1.lo = 2.000001; x1.up = 9.999999;
x2.lo = 2.000001; x2.up = 9.999999;
x3.lo = 2.000001; x3.up = 9.999999;
x4.lo = 2.000001; x4.up = 9.999999;
x5.lo = 2.000001; x5.up = 9.999999;
x6.lo = 2.000001; x6.up = 9.999999;
x7.lo = 2.000001; x7.up = 9.999999;
x8.lo = 2.000001; x8.up = 9.999999;
x9.lo = 2.000001; x9.up = 9.999999;
x10.lo = 2.000001; x10.up = 9.999999;

* set non default levels

x1.l = 2.000001;
x2.l = 2.000001;
x3.l = 2.000001;
x4.l = 2.000001;
x5.l = 2.000001;
x6.l = 2.000001;
x7.l = 2.000001;
x8.l = 2.000001;
x9.l = 2.000001;
x10.l = 2.000001;

* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
 x1.l = 9.351 ;
 x2.l = 9.351 ;
 x3.l = 9.351 ;
 x4.l = 9.351 ;
 x5.l = 9.351 ;
 x6.l = 9.351 ;
 x7.l = 9.351 ;
 x8.l = 9.351 ;
 x9.l = 9.351 ;
x10.l = 9.351 ;

objvar.l = -45.778 ;

$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
