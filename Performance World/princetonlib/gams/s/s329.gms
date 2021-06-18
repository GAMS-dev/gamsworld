*  NLP written by GAMS Convert at 07/02/05 18:32:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        2        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        1        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x2;

Equations  e1,e2,e3,e4;


e1.. sqr((-5) + x1) + sqr((-5) + x2) =G= 100;

e2.. sqr((-6) + x1) + sqr((-5) + x2) =G= 0;

e3.. (-sqr((-6) + x1)) - sqr((-5) + x2) =E= -82.81;

e4..  - (POWER((-10) + x1,3) + POWER((-20) + x2,3)) + objvar =E= 0;

* set non default bounds

x1.lo = 13; x1.up = 16; 
x2.up = 15; 

* set non default levels

x1.l = 14.35; 
x2.l = 8.6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
