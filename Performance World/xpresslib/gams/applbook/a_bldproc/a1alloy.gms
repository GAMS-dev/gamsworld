*  LP written by GAMS Convert at 07/05/07 16:06:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        2        3        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         44       44        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 + x8 =E= 0;

e2..    2.5*x1 + 3*x2 - 2*x8 =G= 0;

e3..    0.3*x3 + 90*x4 + 96*x5 + 0.4*x6 + 0.6*x7 - 0.4*x8 =G= 0;

e4..    1.3*x1 + 0.8*x2 + 4*x5 + 1.2*x6 - 1.2*x8 =G= 0;

e5..    2.5*x1 + 3*x2 - 3*x8 =L= 0;

e6..    0.3*x3 + 90*x4 + 96*x5 + 0.4*x6 + 0.6*x7 - 0.6*x8 =L= 0;

e7..    1.3*x1 + 0.8*x2 + 4*x5 + 1.2*x6 - 1.65*x8 =L= 0;

e8..  - 200*x1 - 250*x2 - 150*x3 - 220*x4 - 240*x5 - 200*x6 - 165*x7 + objvar
      =E= 0;

* set non default bounds

x1.up = 400; 
x2.up = 300; 
x3.up = 600; 
x4.up = 500; 
x5.up = 200; 
x6.up = 300; 
x7.up = 250; 
x8.lo = 500; 

* set non default levels

x8.l = 500; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
