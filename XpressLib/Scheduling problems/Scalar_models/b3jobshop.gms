*  MIP written by GAMS Convert at 07/27/07 23:02:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         27        0        8       19        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16        9        7        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         68       68        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x8,x9,x10,x11,x12,x13,x14,x15;

Binary Variables  b1,b2,b3,b4,b5,b6,b7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27;


e1..  - x8 + objvar =G= 45;

e2..  - x9 + objvar =G= 20;

e3..  - x10 + objvar =G= 12;

e4..  - x11 + objvar =G= 10;

e5..  - x12 + objvar =G= 17;

e6..  - x13 + objvar =G= 10;

e7..  - x14 + objvar =G= 34;

e8..  - x15 + objvar =G= 28;

e9..    x8 - x13 =L= -45;

e10..    x9 - x14 =L= -20;

e11..    x10 - x12 =L= -12;

e12..  - x9 + x11 =L= -10;

e13..  - x10 + x15 =L= -28;

e14..  - 176*b1 + x8 - x9 =L= -45;

e15..  - 176*b2 + x8 - x10 =L= -45;

e16..  - 176*b3 + x9 - x10 =L= -20;

e17..  - 176*b4 + x11 - x12 =L= -10;

e18..  - 176*b5 + x13 - x14 =L= -10;

e19..  - 176*b6 + x13 - x15 =L= -10;

e20..  - 176*b7 + x14 - x15 =L= -34;

e21..    176*b1 - x8 + x9 =L= 156;

e22..    176*b2 - x8 + x10 =L= 164;

e23..    176*b3 - x9 + x10 =L= 164;

e24..    176*b4 - x11 + x12 =L= 159;

e25..    176*b5 - x13 + x14 =L= 142;

e26..    176*b6 - x13 + x15 =L= 148;

e27..    176*b7 - x14 + x15 =L= 148;

* set non default bounds

objvar.up = 176; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
