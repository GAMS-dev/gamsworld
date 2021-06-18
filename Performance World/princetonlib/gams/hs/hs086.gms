*  NLP written by GAMS Convert at 07/27/06 09:26:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1       10        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         43       38        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - 16*x1 + 2*x2 + x4 =G= -40;

e2..  - 2*x2 + 4*x4 + 2*x5 =G= -2;

e3..  - 3.5*x1 + 2*x3 =G= -0.25;

e4..  - 2*x2 - 4*x4 - x5 =G= -4;

e5..  - 9*x2 - 2*x3 + x4 - 2.8*x5 =G= -4;

e6..    2*x1 - 4*x3 =G= -1;

e7..  - x1 - x2 - x3 - x4 - x5 =G= -40;

e8..  - x1 - 2*x2 - 3*x3 - 2*x4 - x5 =G= -60;

e9..    x1 + 2*x2 + 3*x3 + 4*x4 + 5*x5 =G= 5;

e10..    x1 + x2 + x3 + x4 + x5 =G= 1;

e11..  - (30*x1*x1 - 20*x2*x1 - 10*x3*x1 + 32*x4*x1 - 10*x5*x1 + 39*x2*x2 - 20*
      x1*x2 - 6*x3*x2 - 31*x4*x2 + 32*x5*x2 + (-10*x1*x3) - 6*x2*x3 + 10*x3*x3
       - 6*x4*x3 - 10*x5*x3 + 32*x1*x4 - 31*x2*x4 - 6*x3*x4 + 39*x4*x4 - 20*x5*
      x4 + 32*x2*x5 - 10*x1*x5 - 10*x3*x5 - 20*x4*x5 + 30*x5*x5 + 4*POWER(x1,3)
       - 15*x1 + 8*POWER(x2,3) - 27*x2 + 10*POWER(x3,3) - 36*x3 + 6*POWER(x4,3)
       - 18*x4 + 2*POWER(x5,3) - 12*x5) + objvar =E= 0;

* set non default bounds


* set non default levels

x5.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
