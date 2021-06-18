*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Negative Variables  x1;

Equations  e1;


e1..  - (100*sqr(x2 - sqr(x1)) + sqr(1 - x1) + 100*sqr(x3 - sqr(x2)) + sqr(1 - 
     x2) + 100*sqr(x4 - sqr(x3)) + sqr(1 - x3) + 100*sqr(x5 - sqr(x4)) + sqr(1
      - x4) + 100*sqr(x6 - sqr(x5)) + sqr(1 - x5) + 100*sqr(x7 - sqr(x6)) + 
     sqr(1 - x6) + 100*sqr(x8 - sqr(x7)) + sqr(1 - x7) + 100*sqr(x9 - sqr(x8))
      + sqr(1 - x8) + 100*sqr(x10 - sqr(x9)) + sqr(1 - x9)) + objvar =E= 0;

* set non default bounds

x1.up = -0.6; 

* set non default levels

x1.l = -1.2; 
x2.l = 1; 
x3.l = -1.2; 
x4.l = 1; 
x5.l = -1.2; 
x6.l = 1; 
x7.l = -1.2; 
x8.l = 1; 
x9.l = -1.2; 
x10.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
