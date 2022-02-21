*  LP written by GAMS Convert at 06/27/07 15:16:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25       25        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x2 =E= 50000;

e2..    x1 - x3 - x4 - x5 =E= 0;

e3..    x2 - x6 - x7 - x8 =E= 0;

e4..    x3 + x6 =E= 10000;

e5..    x4 + x7 =E= 15000;

e6..    x5 + x8 =E= 25000;

e7..  - 0.44*x1 - 0.49*x2 - 0.18*x3 - 0.22*x4 - 0.27*x5 - 0.25*x6 - 0.23*x7
      - 0.19*x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;
