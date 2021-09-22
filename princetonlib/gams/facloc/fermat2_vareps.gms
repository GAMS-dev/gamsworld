*  NLP written by GAMS Convert at 12/13/04 10:18:32
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


e1..  - (sqrt(sqr(x3) + sqr(x1) + sqr(x2)) + sqrt(sqr(x3) + sqr((-4) + x1) + 
     sqr(x2)) + sqrt(sqr(x3) + sqr((-2) + x1) + sqr((-1) + x2)) + x3) + objvar
      =E= 0;

* set non default bounds

x3.lo = 1E-8; 

* set non default levels

x1.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
