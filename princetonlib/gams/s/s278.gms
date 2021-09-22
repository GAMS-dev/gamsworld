*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        6        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13       13        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    2.45*x1 =G= 2.45;

e2..    1.59285714285714*x2 =G= 1.59285714285714;

e3..    1.21785714285714*x3 =G= 1.21785714285714;

e4..    0.995634920634921*x4 =G= 0.995634920634921;

e5..    0.845634920634921*x5 =G= 0.845634920634921;

e6..    0.736544011544012*x6 =G= 0.736544011544012;

e7..  - 2.45*x1 - 1.59285714285714*x2 - 1.21785714285714*x3
      - 0.995634920634921*x4 - 0.845634920634921*x5 - 0.736544011544012*x6
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
