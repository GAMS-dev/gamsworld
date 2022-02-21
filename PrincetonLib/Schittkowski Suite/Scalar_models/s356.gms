*  NLP written by GAMS Convert at 07/02/05 18:32:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        6        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37        8       29        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - 0.707*x1*x2*(0.166666666666667*sqr(x2) + 0.5*sqr(x1 + x3)) + x5 =E= 0;

e2..  - 2500000*POWER(x4,3)*x3 + x6 =E= 0;

e3..  - 4000000*POWER(x4,3)*x3 + x7 =E= 0;

e4..  - 4243.28147100424/(x1*x2) + x8 =E= 0;

e5..  - sqrt(sqr(x2) + sqr(x1 + x3))*(42000 + 1500*x2)/x5 + x9 =E= 0;

e6..  - x1 + x4 =G= 0;

e7..  - 1e-6*sqrt(x8*x8 + 2*x8*x9*x2/sqrt(sqr(x2) + sqr(x1 + x3)) + x9*x9)
      =G= -0.0136;

e8..  - 5.04/(sqr(x3)*x4) =G= -3;

e9.. 2.04744897959184e-8*sqrt(x6*x7)*(1 - 0.0357142857142857*sqrt(x6/x7)*x3)
      =G= 0.006;

e10..  - 2.1952/(POWER(x3,3)*x4) =G= -0.25;

e11..  - (1.10471*sqr(x1)*x2 + 0.04811*x3*x4*(14 + x2)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.125; 
x2.lo = 7; 
x5.lo = 1E-8; 
x7.lo = 1E-8; 

* set non default levels

x1.l = 1; 
x3.l = 8; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
