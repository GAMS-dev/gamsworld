*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15        5       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1.. (-sqr(x1)) - sqr(x2) - sqr(x3) - sqr(x4) - sqr(x5) =G= -34;

e2..    x1 =G= 1;

e3..    x2 =G= 2;

e4..    x3 =G= 3;

e5..    x4 =G= 4;

e6..  - (x1*x2*x3*x4 - 3*x1*x2*x4 - 4*x1*x2*x3 + 12*x1*x2 - x2*x3*x4 + 3*x2*x4
      + 4*x2*x3 - 12*x2 - 2*x1*x3*x4 + 6*x1*x4 + 8*x1*x3 - 24*x1 + 2*x3*x4 - 6*
     x4 - 8*x3 + 1.5*POWER(x5,4) - 5.75*POWER(x5,3) + 5.25*sqr(x5)) + objvar
      =E= 24;

* set non default bounds


* set non default levels

x1.l = 1.1; 
x2.l = 2.1; 
x3.l = 3.1; 
x4.l = 4.1; 
x5.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
