*  LP written by GAMS Convert at 09/03/08 03:39:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        2        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         26       26        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 + x2 + x3 + x4 =L= 500;

e2..  - 24*x3 - 24*x4 + x9 + x10 =L= 0;

e3..    x9 =L= 6000;

e4..    3*x1 + x5 - x7 =G= 200;

e5..    3.6*x2 + x6 - x8 =G= 240;

e6..  - 150*x1 - 150*x2 - 150*x3 - 150*x4 - 238*x5 - 210*x6 + 170*x7 + 150*x8
      + 36*x9 + 10*x10 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
