*  NLP written by GAMS Convert at 03/22/08 22:27:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         17        1        0       16        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         67       67        0        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17;


e1..    2*x2 - x3 + 4*x8 + 2*x9 =L= 10;

e2..    3*x6 + 3*x12 =L= 10;

e3..  - x1 + 4*x2 + 4*x3 + 3*x6 - x11 =L= 10;

e4..    4*x2 + 3*x4 + 2*x9 + 4*x12 =L= 7;

e5..  - x5 + 4*x7 + 2*x8 + 5*x10 =L= 10;

e6..    2*x3 + 3*x4 + 5*x12 =L= 5;

e7..    2*x1 + x3 + 2*x8 + 2*x9 - x10 + 2*x11 + 4*x12 =L= 5;

e8..    2*x9 + 3*x11 =L= 6;

e9..  - x4 + 2*x7 + x8 + 4*x9 =L= 5;

e10..    4*x1 - x2 + 4*x10 =L= 7;

e11..  - x4 + 2*x9 + 5*x10 =L= 6;

e12..    2*x11 =L= 7;

e13..  - x1 - x2 =L= 9;

e14..    2*x1 + 3*x4 + 5*x6 =L= 5;

e15..    2*x2 + x3 + 3*x5 + 5*x6 =L= 9;

e16..    2*x2 + 5*x3 + 4*x5 + 3*x7 =L= 5;

e17..    3*x1 + 2*x3 + 2*x4 + 3*x5 + x6 - x7 + 2*x8 + 3*x9 - x10 + x11 + 4*x12
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;