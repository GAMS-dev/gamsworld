*  MIP written by GAMS Convert at 02/22/08 02:33:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        5        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15        5       10        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         33       33        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,x11,x12,x13,x14,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10;

Equations  e1,e2,e3,e4,e5,e6;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 =L= 5;

e2..    b2 - x11 =E= 0;

e3..    b5 - x12 =E= 0;

e4..    b8 - x13 =E= 0;

e5..    b10 - x14 =E= 0;

e6..  - b1 - b2 - b3 - b4 - b5 - b6 - b7 - b8 - b9 - b10 - x11 - x12 - x13
      - x14 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
