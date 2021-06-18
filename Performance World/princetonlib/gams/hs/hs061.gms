*  NLP written by GAMS Convert at 07/27/06 09:26:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        3        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3;


e1..  - 2*sqr(x2) + 3*x1 =E= 7;

e2..  - sqr(x3) + 4*x1 =E= 11;

e3..  - (4*sqr(x1) + 2*sqr(x2) + 2*sqr(x3) - 33*x1 + 16*x2 - 24*x3) + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
