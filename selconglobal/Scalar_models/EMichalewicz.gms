*  DNLP written by GAMS Convert at 11/11/08 09:11:47
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          6        1        5        0
*
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1;


e1.. sin(IfThen(0,0.866025403784439*x1,IfThen(1,0.866025403784439*x1 - 0.5*x2,
     x1)))*POWER(sin(0.318309886183791*IfThen(0,0.866025403784439*x1,IfThen(1,
     0.866025403784439*x1 - 0.5*x2,x1))*IfThen(0,0.866025403784439*x1,IfThen(1,
     0.866025403784439*x1 - 0.5*x2,x1))),20) + sin(IfThen(1,0.5*x1 +
     0.866025403784439*x2,IfThen(1,0.866025403784439*x2 - 0.5*x3,x2)))*POWER(
     sin(0.636619772367581*IfThen(1,0.5*x1 + 0.866025403784439*x2,IfThen(1,
     0.866025403784439*x2 - 0.5*x3,x2))*IfThen(1,0.5*x1 + 0.866025403784439*x2,
     IfThen(1,0.866025403784439*x2 - 0.5*x3,x2))),20) + sin(IfThen(0,0.5*x2 +
     0.866025403784439*x3,IfThen(1,0.866025403784439*x3 - 0.5*x4,x3)))*POWER(
     sin(0.954929658551372*IfThen(0,0.5*x2 + 0.866025403784439*x3,IfThen(1,
     0.866025403784439*x3 - 0.5*x4,x3))*IfThen(0,0.5*x2 + 0.866025403784439*x3,
     IfThen(1,0.866025403784439*x3 - 0.5*x4,x3))),20) + sin(IfThen(1,0.5*x3 +
     0.866025403784439*x4,IfThen(1,0.866025403784439*x4 - 0.5*x5,x4)))*POWER(
     sin(1.27323954473516*IfThen(1,0.5*x3 + 0.866025403784439*x4,IfThen(1,
     0.866025403784439*x4 - 0.5*x5,x4))*IfThen(1,0.5*x3 + 0.866025403784439*x4,
     IfThen(1,0.866025403784439*x4 - 0.5*x5,x4))),20) + sin(IfThen(0,0.5*x4 +
     0.866025403784439*x5,IfThen(0,0.866025403784439*x5,x5)))*POWER(sin(
     1.59154943091895*IfThen(0,0.5*x4 + 0.866025403784439*x5,IfThen(0,
     0.866025403784439*x5,x5))*IfThen(0,0.5*x4 + 0.866025403784439*x5,IfThen(0,
     0.866025403784439*x5,x5))),20) + objvar =E= 0;

* set non default bounds

x1.up = 3.14159265358979;
x2.up = 3.14159265358979;
x3.up = 3.14159265358979;
x4.up = 3.14159265358979;
x5.up = 3.14159265358979;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1

x1.l = 2.683 ;
x2.l = 0.259 ;
x3.l = 2.074 ;
x4.l = 1.023 ;
x5.l = 1.720 ;

objvar.l = -4.687658;

$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
