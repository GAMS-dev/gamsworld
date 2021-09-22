*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        5        0       16        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21        1       20        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         69       69        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..    b5 + b6 + b7 + b8 =E= 1;

e2..    b9 + b10 + b11 + b12 =E= 1;

e3..    b13 + b14 + b15 + b16 =E= 1;

e4..    b17 + b18 + b19 + b20 =E= 1;

e5..  - b1 + b5 =L= 0;

e6..  - b2 + b6 =L= 0;

e7..  - b3 + b7 =L= 0;

e8..  - b4 + b8 =L= 0;

e9..  - b1 + b9 =L= 0;

e10..  - b2 + b10 =L= 0;

e11..  - b3 + b11 =L= 0;

e12..  - b4 + b12 =L= 0;

e13..  - b1 + b13 =L= 0;

e14..  - b2 + b14 =L= 0;

e15..  - b3 + b15 =L= 0;

e16..  - b4 + b16 =L= 0;

e17..  - b1 + b17 =L= 0;

e18..  - b2 + b18 =L= 0;

e19..  - b3 + b19 =L= 0;

e20..  - b4 + b20 =L= 0;

e21..  - 50000*b1 - 50000*b2 - 50000*b3 - 50000*b4 - 28000*b5 - 84000*b6
       - 112000*b7 - 112000*b8 - 60000*b9 - 20000*b10 - 50000*b11 - 50000*b12
       - 96000*b13 - 60000*b14 - 24000*b15 - 60000*b16 - 64000*b17 - 40000*b18
       - 40000*b19 - 16000*b20 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;