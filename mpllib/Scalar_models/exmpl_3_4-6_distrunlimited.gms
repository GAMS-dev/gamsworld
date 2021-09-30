*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        6        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         24       24        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x1 - x2 - x3 =E= -50;

e2..    x1 - x4 =E= -40;

e3..    x2 + x4 - x5 =E= 0;

e4..    x3 - x6 + x7 =E= 30;

e5..    x5 + x6 - x7 =E= 60;

e6..    x1 =L= 10;

e7..    x5 =L= 80;

e8..  - 200*x1 - 400*x2 - 900*x3 - 300*x4 - 100*x5 - 300*x6 - 200*x7 + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;