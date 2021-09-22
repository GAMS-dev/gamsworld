*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        2        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        9        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4;


e1..    0.3*x1 + 0.1*x2 =L= 2.7;

e2..    0.5*x1 + 0.5*x2 =E= 6;

e3..    0.6*x1 + 0.4*x2 =G= 6;

e4..  - 0.4*x1 - 0.5*x2 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;