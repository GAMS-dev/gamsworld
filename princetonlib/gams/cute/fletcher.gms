*  NLP written by GAMS Convert at 10/06/06 11:32:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        2        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        7        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4,e5;


e1.. sqr(x1*x3 + x2*x4)/(sqr(x1) + sqr(x2)) - sqr(x3) - sqr(x4) =E= -1;

e2..    x1 - x3 =G= 1;

e3..    x2 - x4 =G= 1;

e4..    x3 - x4 =G= 0;

e5..  - x1*x2 + objvar =E= 0;

* set non default bounds

x4.lo = 1; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
