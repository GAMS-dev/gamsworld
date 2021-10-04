*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16        2       14        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         53       16       37        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - 0.75/(x3*x4) + x1 =G= 0;

e2..  - x9/(x5*x4) + x1 =G= 0;

e3.. (-x10/(x6*x4)) - 10/x4 + x1 =G= 0;

e4.. (-0.19/(x4*x7)) - 10/x4 + x1 =G= 0;

e5..  - 0.125/(x4*x8) + x1 =G= 0;

e6..  - 0.00131*exp(0.666*log(x5))*x9*exp(1.5*log(x4)) + 10000*x2 =G= 0;

e7..  - 0.001038*exp(1.6*log(x6))*x10*POWER(x4,3) + 10000*x2 =G= 0;

e8..  - 0.000223*exp(0.666*log(x7))*exp(1.5*log(x4)) + 10000*x2 =G= 0;

e9..  - 7.6e-5*exp(3.55*log(x8))*exp(5.66*log(x4)) + 10000*x2 =G= 0;

e10..  - 0.000698*exp(1.2*log(x3))*sqr(x4) + 10000*x2 =G= 0;

e11..  - 5e-5*exp(1.6*log(x3))*POWER(x4,3) + 10000*x2 =G= 0;

e12..  - 6.54e-6*exp(2.42*log(x3))*exp(4.17*log(x4)) + 10000*x2 =G= 0;

e13..  - 0.000257*exp(0.666*log(x3))*exp(1.5*log(x4)) + 10000*x2 =G= 0;

e14.. (-2.003*x4*x5) - 1.885*x6*x4 - 0.184*x8*x4 - 2*exp(0.803*log(x3))*x4
       =G= -30;

e15..    x9 + x10 =E= 0.255;

e16.. (-1200 + 3000*x1 + 280000*x2)/(0.002 + x1 + 60*x2) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 0.1; 
x3.lo = 5E-5; x3.up = 0.0081; 
x4.lo = 10; x4.up = 1000; 
x5.lo = 5E-5; x5.up = 0.0017; 
x6.lo = 5E-5; x6.up = 0.0013; 
x7.lo = 5E-5; x7.up = 0.0027; 
x8.lo = 5E-5; x8.up = 0.002; 
x9.lo = 5E-5; x9.up = 1; 
x10.lo = 5E-5; x10.up = 1; 

* set non default levels

x1.l = 10; 
x2.l = 0.005; 
x3.l = 0.0081; 
x4.l = 100; 
x5.l = 0.0017; 
x6.l = 0.0013; 
x7.l = 0.0027; 
x8.l = 0.002; 
x9.l = 0.15; 
x10.l = 0.105; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
