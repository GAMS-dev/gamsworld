*  NLP written by GAMS Convert at 10/06/06 11:47:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         22        6       16        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5;


e1.. sqr(x1 - POWER(1 + x4,4)) + sqr(x2 - POWER(x1 - POWER(1 + x4,4),4)) + 2*
     sqr(x3) + sqr(x4) + 5*POWER(1 + x4,4) + 5*POWER(x1 - POWER(1 + x4,4),4) - 
     5*x1 - 5*x2 - 21*x3 + 7*x4 - x5 =L= 0;

e2.. 11*sqr(x1 - POWER(1 + x4,4)) + 11*sqr(x2 - POWER(x1 - POWER(1 + x4,4),4))
      + 12*sqr(x3) + 11*sqr(x4) - 5*POWER(1 + x4,4) + 15*POWER(x1 - POWER(1 + 
     x4,4),4) + 5*x1 - 15*x2 - 11*x3 - 3*x4 - x5 =L= 80;

e3.. 11*sqr(x1 - POWER(1 + x4,4)) + 21*sqr(x2 - POWER(x1 - POWER(1 + x4,4),4))
      + 12*sqr(x3) + 21*sqr(x4) + 15*POWER(1 + x4,4) + 5*POWER(x1 - POWER(1 + 
     x4,4),4) - 15*x1 - 5*x2 - 21*x3 - 3*x4 - x5 =L= 100;

e4.. 11*sqr(x1 - POWER(1 + x4,4)) + 11*sqr(x2 - POWER(x1 - POWER(1 + x4,4),4))
      + 12*sqr(x3) + sqr(x4) - 15*POWER(1 + x4,4) + 15*POWER(x1 - POWER(1 + x4,
     4),4) + 15*x1 - 15*x2 - 21*x3 - 3*x4 - x5 =L= 50;

e5..  - x5 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
