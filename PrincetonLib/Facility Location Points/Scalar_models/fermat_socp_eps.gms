*  NLP written by GAMS Convert at 12/13/04 10:18:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        7        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1.. sqrt(2e-8 + sqr(x1) + sqr(x2)) - x3 =L= 0;

e2.. sqrt(2e-8 + sqr((-4) + x1) + sqr(x2)) - x4 =L= 0;

e3.. sqrt(2e-8 + sqr((-2) + x1) + sqr((-4) + x2)) - x5 =L= 0;

e4..  - x3 - x4 - x5 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
