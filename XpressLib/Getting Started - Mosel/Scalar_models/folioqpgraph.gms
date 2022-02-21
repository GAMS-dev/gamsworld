*  NLP written by GAMS Convert at 05/10/09 15:17:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        2        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         35       25       10        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e2..    x1 + x2 + x3 + x4 =G= 0.5;

e3..    5*x1 + 17*x2 + 26*x3 + 12*x4 + 8*x5 + 9*x6 + 7*x7 + 6*x8 + 31*x9
      + 21*x10 =G= 25;

e4..  - (0.1*x1*x1 + 19*x2*x2 - 2*x2*x3 + 4*x2*x4 + x2*x5 + x2*x6 + x2*x7 + 0.5
     *x2*x8 + 10*x2*x9 + 5*x2*x10 - 2*x3*x2 + 28*x3*x3 + x3*x4 + 2*x3*x5 + x3*
     x6 + x3*x7 - 2*x3*x9 - x3*x10 + 4*x4*x2 + x4*x3 + 22*x4*x4 + x4*x6 + 2*x4*
     x7 + 3*x4*x9 + 4*x4*x10 + x5*x2 + 2*x5*x3 + 4*x5*x5 - 1.5*x5*x6 - 2*x5*x7
      - x5*x8 + x5*x9 + x5*x10 + x6*x2 + x6*x3 + x6*x4 - 1.5*x6*x5 + 3.5*x6*x6
      + 2*x6*x7 + 0.5*x6*x8 + x6*x9 + 1.5*x6*x10 + x7*x2 + x7*x3 + 2*x7*x4 - 2*
     x7*x5 + 2*x7*x6 + 5*x7*x7 + 0.5*x7*x8 + x7*x9 + 2.5*x7*x10 + 0.5*x8*x2 - 
     x8*x5 + 0.5*x8*x6 + 0.5*x8*x7 + x8*x8 + 0.5*x8*x9 + 0.5*x8*x10 + 10*x9*x2
      - 2*x9*x3 + 3*x9*x4 + x9*x5 + x9*x6 + x9*x7 + 0.5*x9*x8 + 25*x9*x9 + 8*x9
     *x10 + 5*x10*x2 - x10*x3 + 4*x10*x4 + x10*x5 + 1.5*x10*x6 + 2.5*x10*x7 + 
     0.5*x10*x8 + 8*x10*x9 + 16*x10*x10) + objvar =E= 0;

* set non default bounds

x1.up = 0.3; 
x2.up = 0.3; 
x3.up = 0.3; 
x4.up = 0.3; 
x5.up = 0.3; 
x6.up = 0.3; 
x7.up = 0.3; 
x8.up = 0.3; 
x9.up = 0.3; 
x10.up = 0.3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
