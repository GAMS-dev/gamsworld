*  MIP written by GAMS Convert at 07/27/07 23:02:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22        0        3       19        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         14        9        5        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       58        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,x6,x7,x8,x9,x10,x11,x12,x13,objvar;

Positive Variables  x6,x7,x8,x9,x10,x11,x12,x13;

Binary Variables  b1,b2,b3,b4,b5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..  - x11 + objvar =G= 10;

e2..  - x12 + objvar =G= 34;

e3..  - x10 + objvar =G= 17;

e4..    x6 - x11 =L= -45;

e5..  - x7 + x9 =L= -10;

e6..    x7 - x12 =L= -20;

e7..  - x8 + x13 =L= -28;

e8..    x8 - x10 =L= -12;

e9..  - 176*b1 + x6 - x7 =L= -45;

e10..  - 176*b1 + x6 - x8 =L= -45;

e11..  - 176*b2 + x7 - x8 =L= -20;

e12..  - 176*b3 + x9 - x10 =L= -10;

e13..  - 176*b4 + x11 - x12 =L= -10;

e14..  - 176*b4 + x11 - x13 =L= -10;

e15..  - 176*b5 + x12 - x13 =L= -34;

e16..    176*b1 - x6 + x7 =L= 156;

e17..    176*b1 - x6 + x8 =L= 164;

e18..    176*b2 - x7 + x8 =L= 164;

e19..    176*b3 - x9 + x10 =L= 159;

e20..    176*b4 - x11 + x12 =L= 142;

e21..    176*b4 - x11 + x13 =L= 148;

e22..    176*b5 - x12 + x13 =L= 148;

* set non default bounds

objvar.up = 176; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
