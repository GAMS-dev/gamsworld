
*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        7        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         41       41        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..  - x1 - 1.5*x2 - x3 - 1.5*x4 - x5 - 1.5*x6 - x7 - 1.5*x8 + x13 =E= 0;

e2..  - 0.3*x9 - 0.3*x10 - 0.3*x11 - 0.3*x12 + x14 =E= 0;

e3..    x1 =L= 100;

e4..    x3 =L= 150;

e5..    x5 =L= 140;

e6..    x7 =L= 160;

e7..    x2 =L= 50;

e8..    x4 =L= 75;

e9..    x6 =L= 70;

e10..    x8 =L= 80;

e11..  - x1 - x2 + x9 - x12 =E= -80;

e12..  - x3 - x4 - x9 + x10 =E= -200;

e13..  - x5 - x6 - x10 + x11 =E= -300;

e14..  - x7 - x8 - x11 + x12 =E= -200;

e15..  - x13 - x14 + objvar =E= 0;

* set non default bounds

x1.up = 100; 
x2.up = 50; 
x3.up = 150; 
x4.up = 75; 
x5.up = 140; 
x6.up = 70; 
x7.up = 160; 
x8.up = 80; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;

