*  NLP written by GAMS Convert at 11/11/08 09:12:12
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


e1..  - (cos(1 + 2*x1) + 2*cos(2 + 3*x1) + 3*cos(3 + 4*x1) + 4*cos(4 + 5*x1) +
     5*cos(5 + 6*x1))*(cos(1 + 2*x2) + 2*cos(2 + 3*x2) + 3*cos(3 + 4*x2) + 4*
     cos(4 + 5*x2) + 5*cos(5 + 6*x2)) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10;
x2.lo = -10; x2.up = 10;

* set non default levels


* set non default marginals

$if not set startsol $goto cont
$goto %startsol%

* 18 global minima
$label sol1
x1.l = -7.0835;
x2.l =  4.8580;
objvar.l = -186.7309;
$goto cont

$label sol2
x1.l = -7.0835;
x2.l = -7.7083;
objvar.l = -186.7309;
$goto cont

$label sol3
x1.l = -1.4251;
x2.l = -7.0865;
objvar.l = -186.7309;
$goto cont

$label sol4
x1.l =  5.4828;
x2.l =  4.8580;
objvar.l = -186.7309;
$goto cont

$label sol5
x1.l = -1.4251;
x2.l = -0.8003;
objvar.l = -186.7309;
$goto cont

$label sol6
x1.l = 4.8580;
x2.l = 5.4828;
objvar.l = -186.7309;
$goto cont

$label sol7
x1.l = -7.7083;
x2.l = -7.0836;
objvar.l = -186.7309;
$goto cont

$label sol8
x1.l = -7.0835;
x2.l = -1.4251;
objvar.l = -186.7309;
$goto cont

$label sol9
x1.l = -7.7083;
x2.l = -0.8003;
objvar.l = -186.7309;
$goto cont

$label sol10
x1.l = -7.7083;
x2.l =  5.4838;
objvar.l = -186.7309;
$goto cont

$label sol11
x1.l = -0.8003;
x2.l = -7.7083;
objvar.l = -186.7309;
$goto cont

$label sol12
x1.l = -0.8003;
x2.l = -1.4251;
objvar.l = -186.7309;
$goto cont

$label sol13
x1.l = -0.8003;
x2.l =  4.8580;
objvar.l = -186.7309;
$goto cont

$label sol14
x1.l = -1.4251;
x2.l =  5.4828;
objvar.l = -186.7309;
$goto cont

$label sol15
x1.l =  5.4828;
x2.l = -7.7083;
objvar.l = -186.7309;
$goto cont

$label sol16
x1.l =  4.8580;
x2.l =  -7.0835;
objvar.l = -186.7309;
$goto cont

$label sol17
x1.l =  5.4828;
x2.l =  -1.4251;
objvar.l = -186.7309;
$goto cont

$label sol18
x1.l =  4.8580;
x2.l =  -0.8003;
objvar.l = -186.7309;
$goto cont

$label cont


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
