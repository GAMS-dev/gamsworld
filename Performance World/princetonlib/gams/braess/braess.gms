*  NLP written by GAMS Convert at 06/18/05 10:31:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        9        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..  - x1 + x3 =E= 0;

e2..  - x2 + x4 =E= 0;

e3..    x3 + x4 =E= 6;

e4..    x1 + x2 =E= 6;

e5..  - (0.5*sqr(x1) + 50*x1 + 5*sqr(x2) + 5*sqr(x3) + 0.5*sqr(x4) + 50*x4)
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
