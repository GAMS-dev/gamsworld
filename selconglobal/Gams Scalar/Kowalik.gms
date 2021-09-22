*  DNLP written by GAMS Convert at 11/11/08 09:49:19
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
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1;


e1..  - (sqr(0.1957 - x1*(1 + 0.25*x2)/(1 + 0.25*x3 + 0.0625*x4)) + sqr(0.1947
      - x1*(1 + 0.5*x2)/(1 + 0.5*x3 + 0.25*x4)) + sqr(0.1735 - x1*(1 + x2)/(1
      + x3 + x4)) + sqr(0.16 - x1*(1 + 2*x2)/(1 + 2*x3 + 4*x4)) + sqr(0.0844 -
     x1*(1 + 4*x2)/(1 + 4*x3 + 16*x4)) + sqr(0.0627 - x1*(1 + 6*x2)/(1 + 6*x3
      + 36*x4)) + sqr(0.0456 - x1*(1 + 8*x2)/(1 + 8*x3 + 64*x4)) + sqr(0.0342
      - x1*(1 + 10*x2)/(1 + 10*x3 + 100*x4)) + sqr(0.0323 - x1*(1 + 12*x2)/(1
      + 12*x3 + 144*x4)) + sqr(0.0235 - x1*(1 + 14*x2)/(1 + 14*x3 + 196*x4)) +
     sqr(0.0246 - x1*(1 + 16*x2)/(1 + 16*x3 + 256*x4))) + objvar =E= 0;

* set non default bounds

x1.up = 0.42;
x2.up = 0.42;
x3.up = 0.42;
x4.up = 0.42;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0.192;
x2.l = 0.190;
x3.l = 0.123;
x4.l = 0.135;

objvar.l = 0.00030748;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
