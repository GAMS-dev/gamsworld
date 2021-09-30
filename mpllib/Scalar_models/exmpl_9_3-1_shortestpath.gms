*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         25       25        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21        5       16        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         83       83        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,x17,x18,x19
          ,x20,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25;


e1..    b1 + b5 + b9 + b13 =E= 1;

e2..    b2 + b6 + b10 + b14 =E= 1;

e3..    b3 + b7 + b11 + b15 =E= 1;

e4..    b4 + b8 + b12 + b16 =E= 1;

e5..    b1 + b2 + b3 + b4 =E= 1;

e6..    b5 + b6 + b7 + b8 =E= 1;

e7..    b9 + b10 + b11 + b12 =E= 1;

e8..    b13 + b14 + b15 + b16 =E= 1;

e9..  - 2*b1 - x17 =E= 0;

e10..  - 2*b1 - 2*b2 - x17 =E= 0;

e11..  - 2*b1 - 2*b2 - 2*b3 - x17 =E= 0;

e12..  - 2*b1 - 2*b2 - 2*b3 - 2*b4 - x17 =E= 0;

e13..  - x18 =E= 0;

e14..  - x18 =E= 0;

e15..  - x18 =E= 0;

e16..  - x18 =E= 0;

e17..  - 7*b9 - x19 =E= 0;

e18..  - 7*b9 - 7*b10 - x19 =E= 0;

e19..  - 7*b9 - 7*b10 - 7*b11 - x19 =E= 0;

e20..  - 7*b9 - 7*b10 - 7*b11 - 7*b12 - x19 =E= 0;

e21..  - 8*b13 - x20 =E= 0;

e22..  - 8*b13 - 8*b14 - x20 =E= 0;

e23..  - 8*b13 - 8*b14 - 8*b15 - x20 =E= 0;

e24..  - 8*b13 - 8*b14 - 8*b15 - 8*b16 - x20 =E= 0;

e25..  - x17 - x18 - x19 - x20 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;
