*  NLP written by GAMS Convert at 11/11/08 09:12:00
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1;


e1.. exp(-(10*sqr((-0.1312) + x1) + 3*sqr((-0.1696) + x2) + 17*sqr((-0.5569) +
     x3) + 3.5*sqr((-0.0124) + x4) + 1.7*sqr((-0.8283) + x5) + 8*sqr((-0.5886)
      + x6))) + 1.2*exp(-(0.05*sqr((-0.2329) + x1) + 10*sqr((-0.4135) + x2) +
     17*sqr((-0.8307) + x3) + 0.1*sqr((-0.3736) + x4) + 8*sqr((-0.1004) + x5)
      + 14*sqr((-0.9991) + x6))) + 3*exp(-(3*sqr((-0.2348) + x1) + 3.5*sqr((-
     0.1451) + x2) + 1.7*sqr((-0.3522) + x3) + 10*sqr((-0.2883) + x4) + 17*sqr(
     (-0.3047) + x5) + 8*sqr((-0.665) + x6))) + 3.2*exp(-(17*sqr((-0.4047) + x1
     ) + 8*sqr((-0.8828) + x2) + 0.05*sqr((-0.8732) + x3) + 10*sqr((-0.5743) +
     x4) + 0.1*sqr((-0.1091) + x5) + 14*sqr((-0.0381) + x6))) + objvar =E= 0;

* set non default bounds

x1.up = 1;
x2.up = 1;
x3.up = 1;
x4.up = 1;
x5.up = 1;
x6.up = 1;

* set non default levels

* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0.201690 ;
x2.l = 0.150011 ;
x3.l = 0.476874 ;
x4.l = 0.275332 ;
x5.l = 0.311652 ;
x6.l = 0.657301 ;

objvar.l = -3.322368 ;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
