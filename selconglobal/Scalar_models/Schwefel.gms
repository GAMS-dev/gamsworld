*  DNLP written by GAMS Convert at 11/11/08 09:34:07
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
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1.. sin(sqrt(abs(x1)))*x1 + sin(sqrt(abs(x2)))*x2 + sin(sqrt(abs(x3)))*x3 +
     sin(sqrt(abs(x4)))*x4 + sin(sqrt(abs(x5)))*x5 + sin(sqrt(abs(x6)))*x6 +
     sin(sqrt(abs(x7)))*x7 + sin(sqrt(abs(x8)))*x8 + sin(sqrt(abs(x9)))*x9 +
     sin(sqrt(abs(x10)))*x10 + objvar =E= 0;

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

$label sol1
 x1.l = 420.97 ;
 x2.l = 420.97 ;
 x3.l = 420.97 ;
 x4.l = 420.97 ;
 x5.l = 420.97 ;
 x6.l = 420.97 ;
 x7.l = 420.97 ;
 x8.l = 420.97 ;
 x9.l = 420.97 ;
x10.l = 420.97 ;

objvar.l = -418.9829*10 ;

$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
