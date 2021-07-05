
*  LP written by GAMS Convert at 06/27/07 15:16:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        1        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       27        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6;


e1..    0.82*x1 + 0.62*x2 + 1.42*x3 + 2.03*x4 =L= 16000;

e2..    0.43*x1 + 0.69*x2 + 0.33*x3 + 0.2*x4 + 0.036*x6 =L= 5000;

e3..    15*x1 + 16*x2 + 9*x3 + 9*x4 - x5 - x6 =L= 8000;

e4..    x6 =L= 80000;

e5..    x1 + x2 - x3 - x4 =G= 0;

e6..  - 12.5*x1 - 11.3*x2 - 17.2*x3 - 19.9*x4 + 0.29*x5 + 0.14*x6 + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;
