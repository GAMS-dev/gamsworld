*  NLP written by GAMS Convert at 07/02/05 18:32:32
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
*         27        5       22        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x7,x8;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - (-x5*x8 - x6*x8 + x7*x8) + x1 =E= 11;

e2..  - (x6*x8*(x7 - x5) + x5 + 10*x6 - x7 + x8) + x2 =E= 0;

e3..  - (-4*x5*x8 - 4*x6*x8 + x7*x8) + x3 =E= 11;

e4..  - (2*x6*x8*(x7 - 4*x5) + 2*x5 + 20*x6 - 0.5*x7 + 2*x8) + x4 =E= 0;

e5.. sqr(x1) + sqr(x2) - sqr(x3) - sqr(x4) =E= 0;

e6..  - (sqr(x1) + sqr(x2)) + objvar =E= 0;

* set non default bounds

x5.lo = 0.1; 
x6.lo = 0.1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
