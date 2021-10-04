*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        8        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17       17        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    2.71785714285714*x1 =G= 2.71785714285714;

e2..    1.82896825396825*x2 =G= 1.82896825396825;

e3..    1.42896825396825*x3 =G= 1.42896825396825;

e4..    1.18654401154401*x4 =G= 1.18654401154401;

e5..    1.01987734487734*x5 =G= 1.01987734487734;

e6..    0.896800421800422*x6 =G= 0.896800421800422;

e7..    0.801562326562327*x7 =G= 0.801562326562327;

e8..    0.72537185037185*x8 =G= 0.72537185037185;

e9..  - 2.71785714285714*x1 - 1.82896825396825*x2 - 1.42896825396825*x3
      - 1.18654401154401*x4 - 1.01987734487734*x5 - 0.896800421800422*x6
      - 0.801562326562327*x7 - 0.72537185037185*x8 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
