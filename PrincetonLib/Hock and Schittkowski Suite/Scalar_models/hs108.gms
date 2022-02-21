*  NLP written by GAMS Convert at 07/27/06 09:26:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         14        1       13        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         49        1       48        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1.. (-sqr(x3)) - sqr(x4) =G= -1;

e2.. (-sqr(x5)) - sqr(x6) =G= -1;

e3..  - sqr(x9) =G= -1;

e4.. (-sqr(x1)) - sqr(x2 - x9) =G= -1;

e5.. (-sqr(x1 - x5)) - sqr(x2 - x6) =G= -1;

e6.. (-sqr(x1 - x7)) - sqr(x2 - x8) =G= -1;

e7.. (-sqr(x3 - x7)) - sqr(x4 - x8) =G= -1;

e8.. (-sqr(x3 - x5)) - sqr(x4 - x6) =G= -1;

e9.. (-sqr(x7)) - sqr(x8 - x9) =G= -1;

e10.. x1*x4 - x2*x3 =G= 0;

e11.. x3*x9 =G= 0;

e12..  - x5*x9 =G= 0;

e13.. x5*x8 - x6*x7 =G= 0;

e14.. 0.5*(x1*x4 - x2*x3 + x3*x9 - x5*x9 + x5*x8 - x6*x7) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 
x2.l = -1; 
x3.l = -1; 
x4.l = -1; 
x5.l = -1; 
x6.l = -1; 
x7.l = -1; 
x8.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
