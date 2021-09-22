*  NLP written by GAMS Convert at 10/06/06 11:33:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         14        1       13        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         34       27        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Negative Variables  x3,x6;

Positive Variables  x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..    10*x1 - x2 =G= 10;

e2..    10*x1 - x2 =G= 10;

e3..    10*x1 - x2 =G= 10;

e4..    10*x1 - x2 =G= 10;

e5..    10*x1 - x2 =G= 10;

e6..    10*x1 - x2 =G= 10;

e7..    10*x1 - x2 =G= 10;

e8..    10*x1 - x2 =G= 10;

e9..    10*x1 - x2 =G= 10;

e10..    10*x1 - x2 =G= 10;

e11..    10*x1 - x2 =G= 10;

e12..    10*x1 - x2 =G= 10;

e13..    10*x1 - x2 =G= 10;

e14..  - (0.01*(sqr(x1) + sqr(x3) + sqr(x5) + sqr(x6)) + sqr(x2) + sqr(x4) + 
      sqr(x7)) + objvar =E= -100;

* set non default bounds

x1.lo = 2; x1.up = 50; 
x2.lo = -50; x2.up = 50; 
x3.up = 50; 
x4.lo = 2; 

* set non default levels

x2.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
