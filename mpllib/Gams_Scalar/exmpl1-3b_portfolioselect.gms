*  LP written by GAMS Convert at 06/27/07 15:16:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25       25        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x2 + x3 + x4 + x5 - x6 =L= 10;

e2..    x1 + x5 =L= 3;

e3..    0.6*x1 + 0.6*x2 - 0.4*x3 - 0.4*x4 + 3.6*x5 =L= 0;

e4..    4*x1 + 10*x2 - x3 - 2*x4 - 3*x5 =L= 0;

e5..  - 0.086*x1 - 0.054*x2 - 0.05*x3 - 0.044*x4 - 0.09*x5 + 0.055*x6 + objvar
      =E= 0;

* set non default bounds

x6.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;