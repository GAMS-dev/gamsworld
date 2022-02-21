*  NLP written by GAMS Convert at 10/06/06 11:33:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr(1.561 + exp(0.3*x3) - exp(0.3*x2)*x1) + sqr(1.473 + exp(0.35*x3)
      - exp(0.35*x2)*x1) + sqr(1.391 + exp(0.4*x3) - exp(0.4*x2)*x1) + sqr(
     1.313 + exp(0.45*x3) - exp(0.45*x2)*x1) + sqr(1.239 + exp(0.5*x3) - exp(
     0.5*x2)*x1) + sqr(1.169 + exp(0.55*x3) - exp(0.55*x2)*x1) + sqr(1.103 + 
     exp(0.6*x3) - exp(0.6*x2)*x1) + sqr(1.04 + exp(0.65*x3) - exp(0.65*x2)*x1)
      + sqr(0.981 + exp(0.7*x3) - exp(0.7*x2)*x1) + sqr(0.925 + exp(0.75*x3) - 
     exp(0.75*x2)*x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
