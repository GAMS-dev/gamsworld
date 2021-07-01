*  NLP written by GAMS Convert at 12/11/08 04:54:02
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


e1.. -(100*sqr(x2 - x1*x1) + sqr((-0.6) + 6.4*sqr((-0.5) + x2) - x1)) + objvar
      =E= 0;

* set non default bounds

x1.lo = -5; x1.up = 5; 
x2.lo = -5; x2.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;
$if not set startsol $goto cont
$goto %startsol%

* Only local minimum
$label sol1
x1.l = 0.3412;
x2.l = 0.1164;
objvar.l = 0;
$goto cont

$label sol2
x1.l = 1;
x2.l = 1;
objvar.l = 0;

$label cont
m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
