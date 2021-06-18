*  LP written by GAMS Convert at 10/19/05 08:11:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22        9        6        7        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17       17        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         56       56        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..  - 0.00261*x10 - 0.0239*x15 - 0.00983*x16 + objvar =E= 0;

e2..    x13 =L= 6250;

e3..    x13 =G= 2500;

e4..    x1 =L= 192000;

e5..    x7 =L= 62000;

e6..    x1 - x3 =L= 132000;

e7..    x14 =L= 9000;

e8..    x14 =G= 3000;

e9..    x2 =L= 244000;

e10..    x6 =L= 142000;

e11..  - x1 - x2 - x8 + x10 =E= 0;

e12..    x1 + x2 - x7 + x8 - x11 - x12 =E= 0;

e13..    x1 - x3 - x5 - x7 =E= 0;

e14..    x2 - x4 - x6 =E= 0;

e15..    x3 + x4 + x8 - x9 - x11 =E= 0;

e16..    x5 + x6 + x9 - x12 =E= 0;

e17..    x15 + x16 =G= 12000;

e18..    x11 =G= 271536;

e19..    x12 =G= 100623;

e20..    x13 + x14 + x15 =G= 24550;

e21..    1359.8*x1 - 1267.8*x3 - 1251.4*x5 - 192*x7 - 3413*x13 =E= 0;

e22..    1359.8*x2 - 1267.8*x4 - 1251.4*x6 - 3413*x14 =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing objvar;
