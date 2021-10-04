*  NLP written by GAMS Convert at 10/06/06 11:33:49
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


e1..  - (sqr(4 - (exp(x1) + exp(x2))) + sqr(6 - (exp(2*x1) + exp(2*x2))) + sqr(
     8 - (exp(3*x1) + exp(3*x2))) + sqr(10 - (exp(4*x1) + exp(4*x2))) + sqr(12
      - (exp(5*x1) + exp(5*x2))) + sqr(14 - (exp(6*x1) + exp(6*x2))) + sqr(16
      - (exp(7*x1) + exp(7*x2))) + sqr(18 - (exp(8*x1) + exp(8*x2))) + sqr(20
      - (exp(9*x1) + exp(9*x2))) + sqr(22 - (exp(10*x1) + exp(10*x2))))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.3; 
x2.l = 0.4; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
