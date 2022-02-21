*  NLP written by GAMS Convert at 10/06/06 11:53:54
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         50       13       37        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Negative Variables  x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - exp((-x2) - x3) + x4 =E= 0;

e2..  - exp((-x2) - 2*x3) + x5 =E= 0;

e3..  - exp((-x2) - 3*x3) + x6 =E= 0;

e4..  - exp((-x2) - 4*x3) + x7 =E= 0;

e5..  - exp((-x2) - 5*x3) + x8 =E= 0;

e6..  - exp((-x2) - 6*x3) + x9 =E= 0;

e7..  - exp((-x2) - 7*x3) + x10 =E= 0;

e8..  - exp((-x2) - 8*x3) + x11 =E= 0;

e9..  - exp((-x2) - 9*x3) + x12 =E= 0;

e10..  - exp((-x2) - 10*x3) + x13 =E= 0;

e11..  - exp((-x2) - 11*x3) + x14 =E= 0;

e12..  - exp((-x2) - 12*x3) + x15 =E= 0;

e13..  - (sqr(5.308 - x1/(1 + x4)) + sqr(7.24 - x1/(1 + x5)) + sqr(9.638 - x1/(
      1 + x6)) + sqr(12.866 - x1/(1 + x7)) + sqr(17.069 - x1/(1 + x8)) + sqr(
      23.192 - x1/(1 + x9)) + sqr(31.443 - x1/(1 + x10)) + sqr(38.558 - x1/(1
       + x11)) + sqr(50.156 - x1/(1 + x12)) + sqr(62.948 - x1/(1 + x13)) + sqr(
      75.995 - x1/(1 + x14)) + sqr(91.972 - x1/(1 + x15))) + objvar =E= 0;

* set non default bounds

x3.up = 3; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
