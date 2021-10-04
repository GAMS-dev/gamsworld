*  NLP written by GAMS Convert at 10/06/06 11:33:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        5        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 + x2 =G= 1;

e2.. sqr(x1) + sqr(x2) =G= 1;

e3.. 9*sqr(x1) + sqr(x2) =G= 9;

e4.. sqr(x1) - x2 =G= 0;

e5.. sqr(x2) - x1 =G= 0;

e6..  - (sqr(x1) + sqr(x2)) + objvar =E= 0;

* set non default bounds

x1.lo = -50; x1.up = 50; 
x2.lo = -50; x2.up = 50; 

* set non default levels

x1.l = 3; 
x2.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
