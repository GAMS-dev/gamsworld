*  NLP written by GAMS Convert at 07/27/06 09:26:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        3        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Negative Variables  x2;

Equations  e1,e2,e3;


e1.. sqr(x1) + x2 =G= 0;

e2.. sqr(x2) + x1 =G= 0;

e3..  - (100*sqr(x2 - sqr(x1)) + sqr(1 - x1)) + objvar =E= 0;

* set non default bounds

x1.lo = -0.5; x1.up = 0.5; 
x2.up = 1; 

* set non default levels

x1.l = 0.5; 
x2.l = 0.25; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
