*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22        4        8       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        105      105        0        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..  - 0.4*x1 + 0.6*x2 - 0.4*x3 - 0.4*x4 =G= 0;

e2..  - 0.2*x1 - 0.2*x2 - 0.2*x3 + 0.8*x4 =G= 0;

e3..  - 0.1*x5 + 0.9*x6 - 0.1*x7 - 0.1*x8 =G= 0;

e4..  - 0.1*x5 - 0.1*x6 - 0.1*x7 + 0.9*x8 =G= 0;

e5..    0.7*x1 - 0.3*x2 - 0.3*x3 - 0.3*x4 =L= 0;

e6..  - 0.5*x1 - 0.5*x2 + 0.5*x3 - 0.5*x4 =L= 0;

e7..  - 0.2*x1 - 0.2*x2 - 0.2*x3 + 0.8*x4 =L= 0;

e8..    0.5*x5 - 0.5*x6 - 0.5*x7 - 0.5*x8 =L= 0;

e9..  - 0.1*x5 - 0.1*x6 - 0.1*x7 + 0.9*x8 =L= 0;

e10..    0.3*x9 - 0.7*x10 - 0.7*x11 - 0.7*x12 =L= 0;

e11..    x1 + x5 + x9 =L= 3000;

e12..    x2 + x6 + x10 =L= 2000;

e13..    x3 + x7 + x11 =L= 4000;

e14..    x4 + x8 + x12 =L= 1000;

e15..    x1 + x5 + x9 =G= 1500;

e16..    x2 + x6 + x10 =G= 1000;

e17..    x3 + x7 + x11 =G= 2000;

e18..    x4 + x8 + x12 =G= 500;

e19..    3*x1 + 6*x2 + 4*x3 + 5*x4 + 3*x5 + 6*x6 + 4*x7 + 5*x8 + 3*x9 + 6*x10
       + 4*x11 + 5*x12 =E= 30000;

e20..  - 8.5*x1 - 8.5*x2 - 8.5*x3 - 8.5*x4 - 7*x5 - 7*x6 - 7*x7 - 7*x8 - 5.5*x9
       - 5.5*x10 - 5.5*x11 - 5.5*x12 + x13 =E= 0;

e21..  - 3*x1 - 3*x2 - 3*x3 - 3*x4 - 2.5*x5 - 2.5*x6 - 2.5*x7 - 2.5*x8 - 2*x9
       - 2*x10 - 2*x11 - 2*x12 + x14 =E= 0;

e22..  - x13 + x14 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;