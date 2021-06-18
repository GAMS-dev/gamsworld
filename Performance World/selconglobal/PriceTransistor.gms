*  DNLP written by GAMS Convert at 11/11/08 09:49:30
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*         10        1        9        0
*
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1;


e1..  - (sqr(x1*x3 - x2*x4) + (-28.5132 + (1 - x1*x2)*x3*(-1 + exp(x5*(0.485 -
     0.0052095*x7 - 0.0285132*x8))) + 23.3037*x2)*(-28.5132 + (1 - x1*x2)*x3*(-
     1 + exp(x5*(0.485 - 0.0052095*x7 - 0.0285132*x8))) + 23.3037*x2) + (
     23.3037 + (1 - x1*x2)*x4*(-1 + exp(x6*(0.116 - 0.0052095*x7 + 0.0233037*x9
     ))) - 28.5132*x1)*(23.3037 + (1 - x1*x2)*x4*(-1 + exp(x6*(0.116 -
     0.0052095*x7 + 0.0233037*x9))) - 28.5132*x1) + (-111.8467 + (1 - x1*x2)*x3
     *(-1 + exp(x5*(0.752 - 0.0100677*x7 - 0.1118467*x8))) + 101.779*x2)*(-
     111.8467 + (1 - x1*x2)*x3*(-1 + exp(x5*(0.752 - 0.0100677*x7 - 0.1118467*
     x8))) + 101.779*x2) + (101.779 + (1 - x1*x2)*x4*(-1 + exp(x6*(-0.502 -
     0.0100677*x7 + 0.101779*x9))) - 111.8467*x1)*(101.779 + (1 - x1*x2)*x4*(-1
      + exp(x6*(-0.502 - 0.0100677*x7 + 0.101779*x9))) - 111.8467*x1) + (-
     134.3884 + (1 - x1*x2)*x3*(-1 + exp(x5*(0.869 - 0.0229274*x7 - 0.1343884*
     x8))) + 111.461*x2)*(-134.3884 + (1 - x1*x2)*x3*(-1 + exp(x5*(0.869 -
     0.0229274*x7 - 0.1343884*x8))) + 111.461*x2) + (111.461 + (1 - x1*x2)*x4*(
     -1 + exp(x6*(0.166 - 0.0229274*x7 + 0.111461*x9))) - 134.3884*x1)*(111.461
      + (1 - x1*x2)*x4*(-1 + exp(x6*(0.166 - 0.0229274*x7 + 0.111461*x9))) -
     134.3884*x1) + (-211.4823 + (1 - x1*x2)*x3*(-1 + exp(x5*(0.982 - 0.0202153
     *x7 - 0.2114823*x8))) + 191.267*x2)*(-211.4823 + (1 - x1*x2)*x3*(-1 + exp(
     x5*(0.982 - 0.0202153*x7 - 0.2114823*x8))) + 191.267*x2) + (191.267 + (1
      - x1*x2)*x4*(-1 + exp(x6*(-0.473 - 0.0202153*x7 + 0.191267*x9))) -
     211.4823*x1)*(191.267 + (1 - x1*x2)*x4*(-1 + exp(x6*(-0.473 - 0.0202153*x7
      + 0.191267*x9))) - 211.4823*x1)) + objvar =E= 0;

* set non default bounds

x1.up = 10;
x2.up = 10;
x3.up = 10;
x4.up = 10;
x5.up = 10;
x6.up = 10;
x7.up = 10;
x8.up = 10;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
 x1.l = 0.9;
 x2.l = 0.45;
 x3.l = 1.;
 x4.l = 2.;
 x5.l = 8.;
 x6.l = 8.;
 x7.l = 5.;
 x8.l = 1.;
 x9.l = 2.;

objvar.l = 0;

$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
