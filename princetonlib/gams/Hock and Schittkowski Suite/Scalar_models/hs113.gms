*  NLP written by GAMS Convert at 07/27/06 09:26:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        8        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         43       22       21        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - 4*x1 - 5*x2 + 3*x7 - 9*x8 =G= -105;

e2..  - 10*x1 + 8*x2 + 17*x7 - 2*x8 =G= 0;

e3..    8*x1 - 2*x2 - 5*x9 + 2*x10 =G= -12;

e4.. (-3*sqr((-2) + x1)) - 4*sqr((-3) + x2) - 2*sqr(x3) + 7*x4 =G= -120;

e5.. (-5*sqr(x1)) - sqr((-6) + x3) - 8*x2 + 2*x4 =G= -40;

e6.. (-0.5*sqr((-8) + x1)) - 2*sqr((-4) + x2) - 3*sqr(x5) + x6 =G= -30;

e7.. (-sqr(x1)) - 2*sqr((-2) + x2) + 2*x1*x2 - 14*x5 + 6*x6 =G= 0;

e8..  - 12*sqr((-8) + x9) + 3*x1 - 6*x2 + 7*x10 =G= 0;

e9..  - (sqr(x1) + sqr(x2) + x1*x2 - 14*x1 - 16*x2 + sqr((-10) + x3) + 4*sqr((-
     5) + x4) + sqr((-3) + x5) + 2*sqr((-1) + x6) + 5*sqr(x7) + 7*sqr((-11) + 
     x8) + 2*sqr((-10) + x9) + sqr((-7) + x10)) + objvar =E= 45;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 3; 
x3.l = 5; 
x4.l = 5; 
x5.l = 1; 
x6.l = 2; 
x7.l = 7; 
x8.l = 3; 
x9.l = 6; 
x10.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
