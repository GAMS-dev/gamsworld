*  LP written by GAMS Convert at 09/03/08 03:39:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         14       14        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       27        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12
      - 0.247818044975271*x13 =E= 0.973973537709319;

e2..    x13 - objvar =E= 0;

e3..    1.03053*x1 + 1.05516*x2 + 1.06272*x3 + 1.05296*x4 + 1.35733*x5
      + 1.03663*x6 + 1.3917*x7 + 1.12229*x8 + 1.0888*x9 + 1.01958*x10
      + 1.29997*x11 + 1.45687*x12 =G= 1.02912647881342;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
