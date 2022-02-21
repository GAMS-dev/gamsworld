*  NLP written by GAMS Convert at 11/29/04 16:22:37
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


Variables  x1,x2,objvar;

Equations  e1;


e1..  - (sqrt(1e-8 + sqr(x1) + sqr(x2)) + sqrt(1e-8 + sqr((-4) + x1) + sqr(x2))
      + sqrt(1e-8 + sqr((-2) + x1) + sqr((-4) + x2))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
