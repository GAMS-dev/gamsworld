*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - (sqr((-1) + x1) + sqr((-1) + x10) + 10*(9*sqr(sqr(x1) - x2) + 8*sqr(
     sqr(x2) - x3) + 7*sqr(sqr(x3) - x4) + 6*sqr(sqr(x4) - x5) + 5*sqr(sqr(x5)
      - x6) + 4*sqr(sqr(x6) - x7) + 3*sqr(sqr(x7) - x8) + 2*sqr(sqr(x8) - x9)
      + sqr(sqr(x9) - x10))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
