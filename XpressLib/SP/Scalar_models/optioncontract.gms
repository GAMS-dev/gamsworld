*  NLP written by GAMS Convert at 09/03/08 03:39:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        8        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         32       32        0        0
*
*  Solve m using NLP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar,x14,x15;

Positive Variables  x1,x9,x10,x11,x12,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 2*x10 + 12*x12 + x14 =E= 8658.132;

e2..  - 1.5*x1 - 8*x2 - 8*x4 - 8*x5 - 0.5*x9 - 0.5*x10 - 6*x11 - 6*x12 + x15
      =E= 0;

e3..    x7 - x9 + x11 =E= 0;

e4..    x8 - x10 + x12 =E= 0;

e5..  - x2 - x5 - x7 + x8 =E= -187.365;

e6..  - x3 + x6 =E= 0;

e7..  - x4 + x7 =E= -534.146;

e8..    x1 =L= 10000;

e9..  - x1 + x2 =L= 0;

e10..    objvar - x14 + x15 =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
