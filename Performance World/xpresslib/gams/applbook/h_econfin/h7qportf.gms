*  NLP written by GAMS Convert at 09/21/07 20:34:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         12        9        3        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3;


e1..    x1 + x2 + x3 + x4 =E= 1;

e2..    8*x1 + 9*x2 + 12*x3 + 7*x4 =G= 7;

e3..  - (4*x1*x1 + 3*x1*x2 - x1*x3 + 3*x2*x1 + 6*x2*x2 + x2*x3 - x3*x1 + x3*x2
      + 10*x3*x3) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
