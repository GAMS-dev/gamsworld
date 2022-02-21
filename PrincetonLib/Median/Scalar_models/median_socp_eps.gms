*  NLP written by GAMS Convert at 11/09/04 15:23:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        7        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4;


e1.. sqrt(1e-8 + sqr((-0.171747132) + x1)) - x2 =L= 0;

e2.. sqrt(1e-8 + sqr((-0.843266708) + x1)) - x3 =L= 0;

e3.. sqrt(1e-8 + sqr((-0.550375356) + x1)) - x4 =L= 0;

e4..  - x2 - x3 - x4 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
