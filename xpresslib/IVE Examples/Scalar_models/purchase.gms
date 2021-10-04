*  LP written by GAMS Convert at 01/17/08 23:45:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        7        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37       37        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Negative Variables  x1,x2,x3;

Positive Variables  x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x1 + 100*x5 + 200*x6 + 1000*x7 =E= 0;

e2..  - x2 + 50*x9 + 250*x10 + 2000*x11 =E= 0;

e3..  - x3 + 100*x13 + 300*x14 + 4000*x15 =E= 0;

e4..    x4 + x5 + x6 + x7 =E= 1;

e5..    x8 + x9 + x10 + x11 =E= 1;

e6..    x12 + x13 + x14 + x15 =E= 1;

e7..    x1 + x2 + x3 =G= 600;

e8..  - 920*x5 - 1820*x6 - 7420*x7 - 450*x9 - 2150*x10 - 16675*x11 - 1100*x13
      - 2800*x14 - 30550*x15 + objvar =E= 0;

* set non default bounds

x1.up = 240; 
x2.up = 210; 
x3.up = 240; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
