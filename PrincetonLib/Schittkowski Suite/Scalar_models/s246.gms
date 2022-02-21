*  NLP written by GAMS Convert at 07/02/05 18:32:26
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


e1..  - (100*sqr(x3 - sqr(0.5*x1 + 0.5*x2)) + sqr(1 - x1) + sqr(1 - x2))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 
x2.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
