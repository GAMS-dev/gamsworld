*  NLP written by GAMS Convert at 07/02/05 18:32:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          6        3        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2;


e1..  - 3*x1 - 3*x3 =G= -30;

e2..  - (sqrt(sqr(-x1) + sqr(-x2) + sqr(-x3)) + sqrt(sqr(10 - x1) + sqr(-x2) + 
     sqr(-x3)) + sqrt(sqr(10 - x1) + sqr(10 - x2) + sqr(-x3)) + sqrt(sqr(-x1)
      + sqr(10 - x2) + sqr(-x3)) + sqrt(sqr(-x1) + sqr(-x2) + sqr(10 - x3)) + 
     sqrt(sqr(10 - x1) + sqr(-x2) + sqr(10 - x3)) + sqrt(sqr(10 - x1) + sqr(10
      - x2) + sqr(10 - x3)) + sqrt(sqr(-x1) + sqr(10 - x2) + sqr(10 - x3)))
      + objvar =E= 0;

* set non default bounds

x1.up = 42; 
x2.up = 42; 
x3.up = 42; 

* set non default levels

x2.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
