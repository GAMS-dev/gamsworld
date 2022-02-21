*  NLP written by GAMS Convert at 07/02/05 18:32:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        3        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         36        7       29        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - (sqrt(sqr(x2)) + sqr(x3)) + x8 =E= 0;

e2..  - (sqrt(sqr(x3)) + sqr(x2 - x1)) + x9 =E= 0;

e3.. sqr(x4 - x6) + sqr(x5 - x7) =G= 4;

e4.. x3*x4 - x2*x5 - x8 =G= 0;

e5.. x3*x6 - x2*x7 - x8 =G= 0;

e6.. x1*x3 + (x2 - x1)*x5 - x3*x4 - x9 =G= 0;

e7.. x1*x3 + (x2 - x1)*x7 - x3*x6 - x9 =G= 0;

e8..  - x1*x3 + objvar =E= 0;

* set non default bounds

x5.lo = 1; 
x7.lo = 1; 

* set non default levels

x1.l = 3; 
x2.l = 0.01; 
x3.l = 2; 
x4.l = -1.5; 
x5.l = 1.5; 
x6.l = 5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
