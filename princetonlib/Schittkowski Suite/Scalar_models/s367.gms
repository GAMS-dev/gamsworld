*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        3        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         32       21       11        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 =G= -10;

e2..  - x1 - x2 - x3 - x4 =G= -5;

e3.. (-sqr(x6)) - sqr(x7) - x1 - x3 - x5 =G= -5;

e4..    2*x4 + x5 + 0.8*x6 + x7 =E= 5;

e5.. sqr(x2) + sqr(x3) + sqr(x5) + sqr(x6) =E= 5;

e6..  - (-x1*x3 - 5*x1 - 4*x3 - 5*x5/(1 + x5) - 8*x6/(1 + x6) - 10*(exp(-2*x7)
      - 2*exp(-x7))) + 5*x2 + 6*x4 + objvar =E= -10;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 
x4.l = 0.1; 
x5.l = 0.1; 
x6.l = 0.1; 
x7.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
