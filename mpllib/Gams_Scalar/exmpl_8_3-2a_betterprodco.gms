*  NLP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         43       43        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 + x2 + x3 + x4 + x5 =E= 75;

e2..    x6 + x7 + x8 + x9 + x10 =E= 75;

e3..    x11 + x12 + x13 + x14 + x15 =E= 45;

e4..    x1 + x6 + x11 =E= 20;

e5..    x2 + x7 + x12 =E= 30;

e6..    x3 + x8 + x13 =E= 30;

e7..    x4 + x9 + x14 =E= 40;

e8..    x5 + x10 + x15 =E= 75;

e9..  - 41*x1 - 27*x2 - 28*x3 - 24*x4 - 40*x6 - 29*x7 - 999*x8 - 23*x9 - 37*x11
      - 30*x12 - 27*x13 - 21*x14 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;

