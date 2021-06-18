*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          6        1        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1;


e1..  - (sqr(0.844 - x1 - x2 - x3) + sqr(0.908 - (exp(-10*x4)*x2 + exp(-10*x5)*
     x3) - x1) + sqr(0.932 - (exp(-20*x4)*x2 + exp(-20*x5)*x3) - x1) + sqr(
     0.936 - (exp(-30*x4)*x2 + exp(-30*x5)*x3) - x1) + sqr(0.925 - (exp(-40*x4)
     *x2 + exp(-40*x5)*x3) - x1) + sqr(0.908 - (exp(-50*x4)*x2 + exp(-50*x5)*x3
     ) - x1) + sqr(0.881 - (exp(-60*x4)*x2 + exp(-60*x5)*x3) - x1) + sqr(0.85
      - (exp(-70*x4)*x2 + exp(-70*x5)*x3) - x1) + sqr(0.818 - (exp(-80*x4)*x2
      + exp(-80*x5)*x3) - x1) + sqr(0.784 - (exp(-90*x4)*x2 + exp(-90*x5)*x3)
      - x1) + sqr(0.751 - (exp(-100*x4)*x2 + exp(-100*x5)*x3) - x1) + sqr(0.718
      - (exp(-110*x4)*x2 + exp(-110*x5)*x3) - x1) + sqr(0.685 - (exp(-120*x4)*
     x2 + exp(-120*x5)*x3) - x1) + sqr(0.658 - (exp(-130*x4)*x2 + exp(-130*x5)*
     x3) - x1) + sqr(0.628 - (exp(-140*x4)*x2 + exp(-140*x5)*x3) - x1) + sqr(
     0.603 - (exp(-150*x4)*x2 + exp(-150*x5)*x3) - x1) + sqr(0.58 - (exp(-160*
     x4)*x2 + exp(-160*x5)*x3) - x1) + sqr(0.558 - (exp(-170*x4)*x2 + exp(-170*
     x5)*x3) - x1) + sqr(0.538 - (exp(-180*x4)*x2 + exp(-180*x5)*x3) - x1) + 
     sqr(0.522 - (exp(-190*x4)*x2 + exp(-190*x5)*x3) - x1) + sqr(0.506 - (exp(-
     200*x4)*x2 + exp(-200*x5)*x3) - x1) + sqr(0.49 - (exp(-210*x4)*x2 + exp(-
     210*x5)*x3) - x1) + sqr(0.478 - (exp(-220*x4)*x2 + exp(-220*x5)*x3) - x1)
      + sqr(0.467 - (exp(-230*x4)*x2 + exp(-230*x5)*x3) - x1) + sqr(0.457 - (
     exp(-240*x4)*x2 + exp(-240*x5)*x3) - x1) + sqr(0.448 - (exp(-250*x4)*x2 + 
     exp(-250*x5)*x3) - x1) + sqr(0.438 - (exp(-260*x4)*x2 + exp(-260*x5)*x3)
      - x1) + sqr(0.431 - (exp(-270*x4)*x2 + exp(-270*x5)*x3) - x1) + sqr(0.424
      - (exp(-280*x4)*x2 + exp(-280*x5)*x3) - x1) + sqr(0.42 - (exp(-290*x4)*x2
      + exp(-290*x5)*x3) - x1) + sqr(0.414 - (exp(-300*x4)*x2 + exp(-300*x5)*x3
     ) - x1) + sqr(0.411 - (exp(-310*x4)*x2 + exp(-310*x5)*x3) - x1) + sqr(
     0.406 - (exp(-320*x4)*x2 + exp(-320*x5)*x3) - x1)) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10; 
x2.lo = -10; x2.up = 10; 
x3.lo = -10; x3.up = 10; 
x4.lo = -10; x4.up = 10; 
x5.lo = -10; x5.up = 10; 

* set non default levels

x1.l = 0.5; 
x2.l = 1.5; 
x3.l = -1; 
x4.l = 0.01; 
x5.l = 0.02; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
