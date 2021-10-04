*  NLP written by GAMS Convert at 10/06/06 11:32:04
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


e1..  - (sqr((-0.25) + exp(0.25*x2)*x1) + sqr((-0.5) + exp(0.5*x2)*x1) + sqr((-
     0.75) + exp(0.75*x2)*x1) + sqr((-1) + exp(x2)*x1) + sqr((-1.25) + exp(1.25
     *x2)*x1) + sqr((-1.5) + exp(1.5*x2)*x1) + sqr((-1.75) + exp(1.75*x2)*x1)
      + sqr((-2) + exp(2*x2)*x1) + sqr((-2.25) + exp(2.25*x2)*x1) + sqr((-2.5)
      + exp(2.5*x2)*x1)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
