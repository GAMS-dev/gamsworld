*  NLP written by GAMS Convert at 03/22/08 22:27:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         51       51        0        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    8*x2 + x4 - 3*x5 + 7*x6 - x7 =L= 5;

e2..    7*x1 + 7*x2 + 6*x3 + 4*x4 + 5*x5 =L= 9;

e3..    8*x1 + x4 + 8*x5 - 3*x7 - 3*x8 =L= 6;

e4..    8*x1 + 3*x2 + 5*x3 + x5 + 8*x7 =L= 8;

e5..    x1 + 6*x2 + 3*x3 + 3*x4 + 3*x5 + 3*x6 + 4*x7 =L= 9;

e6..    5*x2 - x3 + 3*x7 - 3*x8 =L= 9;

e7..    7*x1 - 2*x2 + 2*x4 + 8*x5 + 8*x6 + 4*x7 - x8 =L= 7;

e8..    5*x2 + 5*x3 - 2*x4 - x5 + 6*x8 =L= 8;

e9..    7*x1 + 5*x2 + 4*x4 - 2*x5 + 7*x6 + 6*x7 + 6*x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;