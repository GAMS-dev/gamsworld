*  NLP written by GAMS Convert at 10/06/06 11:33:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        3        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2;


e1..    10*x1 - x2 =G= 10;

e2..  - (0.01*sqr(x1) + sqr(x2)) + objvar =E= -100;

* set non default bounds

x1.lo = 2; x1.up = 50; 
x2.lo = -50; x2.up = 50; 

* set non default levels

x2.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
