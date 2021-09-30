
*  LP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         19        1        0       18        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         38       38        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..    x1 - x2 =L= -2;

e2..    x2 - x3 =L= -4;

e3..    x3 - x4 =L= -10;

e4..    x3 - x5 =L= -10;

e5..    x3 - x9 =L= -10;

e6..    x4 - x7 =L= -6;

e7..    x5 - x6 =L= -4;

e8..    x5 - x8 =L= -4;

e9..    x6 - x10 =L= -5;

e10..    x7 - x8 =L= -7;

e11..    x8 - x13 =L= -9;

e12..    x9 - x10 =L= -7;

e13..    x10 - x11 =L= -8;

e14..    x10 - x12 =L= -8;

e15..    x11 - x14 =L= -4;

e16..    x12 - x14 =L= -5;

e17..    x13 - x15 =L= -2;

e18..    x14 - x15 =L= -6;

e19..  - x15 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;

