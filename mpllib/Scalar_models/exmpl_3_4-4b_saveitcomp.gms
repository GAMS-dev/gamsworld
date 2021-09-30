*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         29       11        8       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         74       74        0        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,objvar;

Positive Variables  x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29;


e1..    x3 - x10 - x11 - x12 - x13 =E= 0;

e2..    x4 - x14 - x15 - x16 - x17 =E= 0;

e3..    x5 - x18 - x19 - x20 - x21 =E= 0;

e4..    x6 - x10 - x14 - x18 =E= 0;

e5..    x7 - x11 - x15 - x19 =E= 0;

e6..    x8 - x12 - x16 - x20 =E= 0;

e7..    x9 - x13 - x17 - x21 =E= 0;

e8..  - 0.4*x3 + x11 =G= 0;

e9..  - 0.2*x3 + x13 =G= 0;

e10..  - 0.1*x4 + x15 =G= 0;

e11..  - 0.1*x4 + x17 =G= 0;

e12..  - 0.3*x3 + x10 =L= 0;

e13..  - 0.5*x3 + x12 =L= 0;

e14..  - 0.2*x3 + x13 =L= 0;

e15..  - 0.5*x4 + x14 =L= 0;

e16..  - 0.1*x4 + x17 =L= 0;

e17..  - 0.7*x5 + x18 =L= 0;

e18..    x6 =L= 3000;

e19..    x7 =L= 2000;

e20..    x8 =L= 4000;

e21..    x9 =L= 1000;

e22..    x6 =G= 1500;

e23..    x7 =G= 1000;

e24..    x8 =G= 2000;

e25..    x9 =G= 500;

e26..    3*x6 + 6*x7 + 4*x8 + 5*x9 =E= 30000;

e27..    x2 - 8.5*x3 - 7*x4 - 5.5*x5 =E= 0;

e28..    x1 - 3*x3 - 2.5*x4 - 2*x5 =E= 0;

e29..    x1 - x2 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;