*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        3        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1;

Equations  e1,e2;


e1..    x1 + x2 =E= 0.85;

e2..  - 0.5*(sqr((-0.25) + 0.1*x1 + x2) + sqr((-0.3) + 0.3*x1 + x2) + sqr((-
     0.625) + 0.5*x1 + x2) + sqr((-0.701) + 0.7*x1 + x2) + sqr((-1) + 0.9*x1 + 
     x2)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
