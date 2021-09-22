*  MIP written by GAMS Convert at 07/05/07 16:06:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         31        1        0       30        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19        1       18        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         78       78        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
          ,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..  - b1 + b9 =L= 0;

e2..  - b2 + b9 =L= 0;

e3..  - b3 + b9 =L= 0;

e4..  - b2 + b10 =L= 0;

e5..  - b3 + b10 =L= 0;

e6..  - b4 + b10 =L= 0;

e7..  - b3 + b11 =L= 0;

e8..  - b4 + b11 =L= 0;

e9..  - b5 + b11 =L= 0;

e10..  - b4 + b12 =L= 0;

e11..  - b5 + b12 =L= 0;

e12..  - b6 + b12 =L= 0;

e13..  - b5 + b13 =L= 0;

e14..  - b6 + b13 =L= 0;

e15..  - b7 + b13 =L= 0;

e16..  - b6 + b14 =L= 0;

e17..  - b7 + b14 =L= 0;

e18..  - b8 + b14 =L= 0;

e19..  - b9 + b15 =L= 0;

e20..  - b10 + b15 =L= 0;

e21..  - b11 + b15 =L= 0;

e22..  - b10 + b16 =L= 0;

e23..  - b11 + b16 =L= 0;

e24..  - b12 + b16 =L= 0;

e25..  - b11 + b17 =L= 0;

e26..  - b12 + b17 =L= 0;

e27..  - b13 + b17 =L= 0;

e28..  - b12 + b18 =L= 0;

e29..  - b13 + b18 =L= 0;

e30..  - b14 + b18 =L= 0;

e31..  - 100*b1 + 100*b2 + 100*b3 + 100*b4 + 100*b5 + 100*b6 - 200*b7 + 100*b8
       + 1000*b9 - 300*b10 + 200*b11 + 200*b13 + 1000*b14 + 1000*b15 + 1000*b16
       - 700*b17 - 200*b18 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;
