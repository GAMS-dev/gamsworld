*  NLP written by GAMS Convert at 01/14/09 03:34:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        3        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        3        7        0
*
*  Solve m using NLP maximizing objvar;
*


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4,e5;


e1.. sqrt(sqr(x1)) - x2 =E= 0;

e2..    x2 =G= 20;

e3.. sqrt(sqr(x2 - x3)) =L= 9;

e4.. sqrt(sqr(x1 - x3)) =E= 5;

e5..  - sqrt(sqr(x1 - x3)) + objvar =E= 0;

* set non default bounds

x1.lo = -50; x1.up = 50; 
x2.lo = -50; x2.up = 50; 
x3.lo = -50; x3.up = 50; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
