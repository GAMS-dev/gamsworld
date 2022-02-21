*  NLP written by GAMS Convert at 10/06/06 11:33:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        1        9        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         33       18       15        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 5*x2*x2 + x1 + x5 =G= 0;

e2..  - (3.2*x3*x3 + 3.2*x3*x6 + 0.8*x6*x6) + x1 + x5 =G= 0;

e3..  - (20*x5*x5 - 40*x5*x6 + 20*x6*x6 - x5) + x1 =G= 0;

e4..  - (3.2*x2*x2 - 3.2*x2*x5 + 0.8*x5*x5 - x5) + x1 =G= 0;

e5..  - 5*x3*x3 + x1 + x5 =G= 0;

e6..  - (3.2*x4*x4 + 3.2*x4*x7 + 0.8*x7*x7) + x1 + x5 =G= 0;

e7..  - (20*x6*x6 - 40*x6*x7 + 20*x7*x7) + x1 + x5 =G= 0;

e8..  - (3.2*x3*x3 - 3.2*x3*x6 + 0.8*x6*x6) + x1 + x5 =G= 0;

e9..  - 5*x4*x4 + x1 + x5 =G= 0;

e10..  - x1 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
