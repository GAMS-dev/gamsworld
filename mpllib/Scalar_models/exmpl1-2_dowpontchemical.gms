*  LP written by GAMS Convert at 06/27/07 15:16:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        6        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       27        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 - 0.45*x5 + x6 =E= 0;

e2..    x2 - 0.55*x5 + x7 =E= 0;

e3..    x3 - 0.8*x6 + x8 =E= 0;

e4..    x4 - 0.75*x7 - 0.75*x8 =E= 0;

e5..    x7 - 1.5*x8 =E= 0;

e6..    x5 =L= 56;

e7..    x6 =L= 25;

e8..    x7 + x8 =L= 46;

e9..  - 2.4*x1 - 3.2*x2 - 6.4*x3 - 12.2*x4 + 2.5*x5 + 3.5*x6 + 4.2*x7 + 4.2*x8
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;