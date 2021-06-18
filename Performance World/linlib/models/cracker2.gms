*  LP written by GAMS Convert at 10/24/05 21:51:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        6        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         42       42        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 2.84*x1 + 0.22*x2 + 3.33*x3 - 1.09*x4 - 9.39*x5 - 9.51*x6 + objvar
      =E= 0;

e2..    1.1*x1 + 0.9*x2 + 0.9*x3 + x4 + 1.1*x5 + 0.9*x6 =L= 200000;

e3..    0.5*x1 + 0.35*x2 + 0.25*x3 + 0.25*x4 + 0.5*x5 + 0.35*x6 =E= 50000;

e4..    0.01*x1 + 0.15*x2 + 0.15*x3 + 0.18*x4 + 0.01*x5 + 0.15*x6 =E= 1000;

e5..    0.4*x1 + 0.06*x2 + 0.04*x3 + 0.05*x4 - 0.6*x5 + 0.06*x6 =E= 0;

e6..    0.1*x2 + 0.01*x3 + 0.01*x4 - 0.9*x6 =E= 0;

e7..  - 6857.6*x1 + 364*x2 + 2032*x3 - 1145*x4 - 6857.6*x5 + 364*x6 + 21520*x7
      =E= 20000000;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
