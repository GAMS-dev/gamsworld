*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        9        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..    2.08333333333333*x1 =G= 2.08333333333333;

e2..    1.28333333333333*x2 =G= 1.28333333333333;

e3..    0.95*x3 =G= 0.95;

e4..    0.759523809523809*x4 =G= 0.759523809523809;

e5..  - 2.08333333333333*x1 - 1.28333333333333*x2 - 0.95*x3
      - 0.759523809523809*x4 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
