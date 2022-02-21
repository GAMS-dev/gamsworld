*  NLP written by GAMS Convert at 07/02/05 18:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        4        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4;


e1..    x1 - 2*x2 =G= -1;

e2.. (-sqr(x1)) - sqr(x2) =G= -1;

e3.. sqr(x1) + sqr(x2) =G= 0;

e4..    x2 + objvar =E= 0;

* set non default bounds

x1.lo = -1; x1.up = 1; 
x2.lo = -1; x2.up = 1; 

* set non default levels

x1.l = -0.1; 
x2.l = -0.9; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
