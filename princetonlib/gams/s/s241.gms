*  NLP written by GAMS Convert at 07/02/05 18:32:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         26       12       14        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - (sqr(x1) + sqr(x2) + sqr(x3)) + x4 =E= -1;

e2..  - (sqr(x1) + sqr(x2) + sqr((-2) + x3)) + x5 =E= -1;

e3..  - x1 - x2 - x3 + x6 =E= -1;

e4..  - x1 - x2 + x3 + x7 =E= 1;

e5..  - (POWER(x1,3) + 3*sqr(x2) + sqr(1 - x1 + 5*x3)) + x8 =E= -36;

e6..  - (sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(x8)) + objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
