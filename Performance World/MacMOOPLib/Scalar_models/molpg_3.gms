*  NLP written by GAMS Convert at 03/22/08 22:27:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        1        0       14        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         55       55        0        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    x1 + 4*x7 + 3*x10 =L= 10;

e2..  - x2 + x4 + 5*x8 =L= 8;

e3..    2*x1 + 5*x2 + 4*x3 + 2*x5 - x7 =L= 7;

e4..  - x2 + 2*x3 + 4*x6 + 5*x9 =L= 10;

e5..    x3 + x4 + 3*x7 =L= 8;

e6..    2*x2 + x8 - x9 + 3*x10 =L= 8;

e7..    2*x6 =L= 5;

e8..    x1 + 5*x3 + x5 - x9 =L= 9;

e9..    5*x9 =L= 7;

e10..    3*x1 + 4*x2 + 4*x5 - x8 + 3*x10 =L= 9;

e11..    3*x2 + 4*x3 + 3*x8 =L= 7;

e12..    3*x4 + 2*x6 + 5*x10 =L= 7;

e13..    5*x1 + x3 =L= 7;

e14..  - x1 + 2*x2 + 5*x4 + 2*x8 + x9 =L= 7;

e15..    x1 - x3 + x4 + 2*x5 + 3*x6 - 2*x7 - x9 + 3*x10 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;