*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17        2       15        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4;


e1.. (-sqr(x1)) - sqr(x2) - sqr(x3) - sqr(x4) - x1 + x2 + x3 + x4 =G= -8;

e2.. (-sqr(x1)) - 2*sqr(x2) - sqr(x3) - 2*sqr(x4) + x1 + x4 =G= -9;

e3.. (-sqr(x1)) - sqr(x2) - sqr(x3) - 2*x1 + x2 + x4 =G= -5;

e4..  - (sqr(x1) + sqr(x2) + 2*sqr(x3) + sqr(x4) - 5*x1 - 5*x2 - 21*x3 + 7*x4)
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
