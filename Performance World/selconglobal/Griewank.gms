*  NLP written by GAMS Convert at 11/11/08 09:11:55
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


e1..  - (0.00025*(x1*x1 + x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*x7 + x8*x8
      + x9*x9 + x10*x10) - cos(x1)*cos(0.707106781186547*x2)*cos(
     0.577350269189626*x3)*cos(0.5*x4)*cos(0.447213595499958*x5)*cos(
     0.408248290463863*x6)*cos(0.377964473009227*x7)*cos(0.353553390593274*x8)*
     cos(0.333333333333333*x9)*cos(0.316227766016838*x10)) + objvar =E= 1;

* set non default bounds

x1.lo = -500; x1.up = 500;
x2.lo = -500; x2.up = 500;
x3.lo = -500; x3.up = 500;
x4.lo = -500; x4.up = 500;
x5.lo = -500; x5.up = 500;
x6.lo = -500; x6.up = 500;
x7.lo = -500; x7.up = 500;
x8.lo = -500; x8.up = 500;
x9.lo = -500; x9.up = 500;
x10.lo = -500; x10.up = 500;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0;
x2.l = 0;
x3.l = 0;
x4.l = 0;
x5.l = 0;
x6.l = 0;
x7.l = 0;
x8.l = 0;
x9.l = 0;
x10.l = 0;
objvar.l = 0;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
