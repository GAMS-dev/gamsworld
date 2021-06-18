*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         12       12        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         12        1       11        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,objvar;

Equations  e1;


e1..  - (sqr(1.366 - (exp(-sqr(-x9)*x6)*x2 + exp(-sqr(-x10)*x7)*x3 + exp(-sqr(-
     x11)*x8)*x4) - x1) + sqr(1.191 - (exp(-0.1*x5)*x1 + exp(-sqr(0.1 - x9)*x6)
     *x2 + exp(-sqr(0.1 - x10)*x7)*x3 + exp(-sqr(0.1 - x11)*x8)*x4)) + sqr(
     1.112 - (exp(-0.2*x5)*x1 + exp(-sqr(0.2 - x9)*x6)*x2 + exp(-sqr(0.2 - x10)
     *x7)*x3 + exp(-sqr(0.2 - x11)*x8)*x4)) + sqr(1.013 - (exp(-0.3*x5)*x1 + 
     exp(-sqr(0.3 - x9)*x6)*x2 + exp(-sqr(0.3 - x10)*x7)*x3 + exp(-sqr(0.3 - 
     x11)*x8)*x4)) + sqr(0.991 - (exp(-0.4*x5)*x1 + exp(-sqr(0.4 - x9)*x6)*x2
      + exp(-sqr(0.4 - x10)*x7)*x3 + exp(-sqr(0.4 - x11)*x8)*x4)) + sqr(0.885
      - (exp(-0.5*x5)*x1 + exp(-sqr(0.5 - x9)*x6)*x2 + exp(-sqr(0.5 - x10)*x7)*
     x3 + exp(-sqr(0.5 - x11)*x8)*x4)) + sqr(0.831 - (exp(-0.6*x5)*x1 + exp(-
     sqr(0.6 - x9)*x6)*x2 + exp(-sqr(0.6 - x10)*x7)*x3 + exp(-sqr(0.6 - x11)*x8
     )*x4)) + sqr(0.847 - (exp(-0.7*x5)*x1 + exp(-sqr(0.7 - x9)*x6)*x2 + exp(-
     sqr(0.7 - x10)*x7)*x3 + exp(-sqr(0.7 - x11)*x8)*x4)) + sqr(0.786 - (exp(-
     0.8*x5)*x1 + exp(-sqr(0.8 - x9)*x6)*x2 + exp(-sqr(0.8 - x10)*x7)*x3 + exp(
     -sqr(0.8 - x11)*x8)*x4)) + sqr(0.725 - (exp(-0.9*x5)*x1 + exp(-sqr(0.9 - 
     x9)*x6)*x2 + exp(-sqr(0.9 - x10)*x7)*x3 + exp(-sqr(0.9 - x11)*x8)*x4)) + 
     sqr(0.746 - (exp(-x5)*x1 + exp(-sqr(1 - x9)*x6)*x2 + exp(-sqr(1 - x10)*x7)
     *x3 + exp(-sqr(1 - x11)*x8)*x4)) + sqr(0.679 - (exp(-1.1*x5)*x1 + exp(-
     sqr(1.1 - x9)*x6)*x2 + exp(-sqr(1.1 - x10)*x7)*x3 + exp(-sqr(1.1 - x11)*x8
     )*x4)) + sqr(0.608 - (exp(-1.2*x5)*x1 + exp(-sqr(1.2 - x9)*x6)*x2 + exp(-
     sqr(1.2 - x10)*x7)*x3 + exp(-sqr(1.2 - x11)*x8)*x4)) + sqr(0.655 - (exp(-
     1.3*x5)*x1 + exp(-sqr(1.3 - x9)*x6)*x2 + exp(-sqr(1.3 - x10)*x7)*x3 + exp(
     -sqr(1.3 - x11)*x8)*x4)) + sqr(0.616 - (exp(-1.4*x5)*x1 + exp(-sqr(1.4 - 
     x9)*x6)*x2 + exp(-sqr(1.4 - x10)*x7)*x3 + exp(-sqr(1.4 - x11)*x8)*x4)) + 
     sqr(0.606 - (exp(-1.5*x5)*x1 + exp(-sqr(1.5 - x9)*x6)*x2 + exp(-sqr(1.5 - 
     x10)*x7)*x3 + exp(-sqr(1.5 - x11)*x8)*x4)) + sqr(0.602 - (exp(-1.6*x5)*x1
      + exp(-sqr(1.6 - x9)*x6)*x2 + exp(-sqr(1.6 - x10)*x7)*x3 + exp(-sqr(1.6
      - x11)*x8)*x4)) + sqr(0.626 - (exp(-1.7*x5)*x1 + exp(-sqr(1.7 - x9)*x6)*
     x2 + exp(-sqr(1.7 - x10)*x7)*x3 + exp(-sqr(1.7 - x11)*x8)*x4)) + sqr(0.651
      - (exp(-1.8*x5)*x1 + exp(-sqr(1.8 - x9)*x6)*x2 + exp(-sqr(1.8 - x10)*x7)*
     x3 + exp(-sqr(1.8 - x11)*x8)*x4)) + sqr(0.724 - (exp(-1.9*x5)*x1 + exp(-
     sqr(1.9 - x9)*x6)*x2 + exp(-sqr(1.9 - x10)*x7)*x3 + exp(-sqr(1.9 - x11)*x8
     )*x4)) + sqr(0.649 - (exp(-2*x5)*x1 + exp(-sqr(2 - x9)*x6)*x2 + exp(-sqr(2
      - x10)*x7)*x3 + exp(-sqr(2 - x11)*x8)*x4)) + sqr(0.649 - (exp(-2.1*x5)*x1
      + exp(-sqr(2.1 - x9)*x6)*x2 + exp(-sqr(2.1 - x10)*x7)*x3 + exp(-sqr(2.1
      - x11)*x8)*x4)) + sqr(0.694 - (exp(-2.2*x5)*x1 + exp(-sqr(2.2 - x9)*x6)*
     x2 + exp(-sqr(2.2 - x10)*x7)*x3 + exp(-sqr(2.2 - x11)*x8)*x4)) + sqr(0.644
      - (exp(-2.3*x5)*x1 + exp(-sqr(2.3 - x9)*x6)*x2 + exp(-sqr(2.3 - x10)*x7)*
     x3 + exp(-sqr(2.3 - x11)*x8)*x4)) + sqr(0.624 - (exp(-2.4*x5)*x1 + exp(-
     sqr(2.4 - x9)*x6)*x2 + exp(-sqr(2.4 - x10)*x7)*x3 + exp(-sqr(2.4 - x11)*x8
     )*x4)) + sqr(0.661 - (exp(-2.5*x5)*x1 + exp(-sqr(2.5 - x9)*x6)*x2 + exp(-
     sqr(2.5 - x10)*x7)*x3 + exp(-sqr(2.5 - x11)*x8)*x4)) + sqr(0.612 - (exp(-
     2.6*x5)*x1 + exp(-sqr(2.6 - x9)*x6)*x2 + exp(-sqr(2.6 - x10)*x7)*x3 + exp(
     -sqr(2.6 - x11)*x8)*x4)) + sqr(0.558 - (exp(-2.7*x5)*x1 + exp(-sqr(2.7 - 
     x9)*x6)*x2 + exp(-sqr(2.7 - x10)*x7)*x3 + exp(-sqr(2.7 - x11)*x8)*x4)) + 
     sqr(0.533 - (exp(-2.8*x5)*x1 + exp(-sqr(2.8 - x9)*x6)*x2 + exp(-sqr(2.8 - 
     x10)*x7)*x3 + exp(-sqr(2.8 - x11)*x8)*x4)) + sqr(0.495 - (exp(-2.9*x5)*x1
      + exp(-sqr(2.9 - x9)*x6)*x2 + exp(-sqr(2.9 - x10)*x7)*x3 + exp(-sqr(2.9
      - x11)*x8)*x4)) + sqr(0.5 - (exp(-3*x5)*x1 + exp(-sqr(3 - x9)*x6)*x2 + 
     exp(-sqr(3 - x10)*x7)*x3 + exp(-sqr(3 - x11)*x8)*x4)) + sqr(0.423 - (exp(-
     3.1*x5)*x1 + exp(-sqr(3.1 - x9)*x6)*x2 + exp(-sqr(3.1 - x10)*x7)*x3 + exp(
     -sqr(3.1 - x11)*x8)*x4)) + sqr(0.395 - (exp(-3.2*x5)*x1 + exp(-sqr(3.2 - 
     x9)*x6)*x2 + exp(-sqr(3.2 - x10)*x7)*x3 + exp(-sqr(3.2 - x11)*x8)*x4)) + 
     sqr(0.375 - (exp(-3.3*x5)*x1 + exp(-sqr(3.3 - x9)*x6)*x2 + exp(-sqr(3.3 - 
     x10)*x7)*x3 + exp(-sqr(3.3 - x11)*x8)*x4)) + sqr(0.372 - (exp(-3.4*x5)*x1
      + exp(-sqr(3.4 - x9)*x6)*x2 + exp(-sqr(3.4 - x10)*x7)*x3 + exp(-sqr(3.4
      - x11)*x8)*x4)) + sqr(0.391 - (exp(-3.5*x5)*x1 + exp(-sqr(3.5 - x9)*x6)*
     x2 + exp(-sqr(3.5 - x10)*x7)*x3 + exp(-sqr(3.5 - x11)*x8)*x4)) + sqr(0.396
      - (exp(-3.6*x5)*x1 + exp(-sqr(3.6 - x9)*x6)*x2 + exp(-sqr(3.6 - x10)*x7)*
     x3 + exp(-sqr(3.6 - x11)*x8)*x4)) + sqr(0.405 - (exp(-3.7*x5)*x1 + exp(-
     sqr(3.7 - x9)*x6)*x2 + exp(-sqr(3.7 - x10)*x7)*x3 + exp(-sqr(3.7 - x11)*x8
     )*x4)) + sqr(0.428 - (exp(-3.8*x5)*x1 + exp(-sqr(3.8 - x9)*x6)*x2 + exp(-
     sqr(3.8 - x10)*x7)*x3 + exp(-sqr(3.8 - x11)*x8)*x4)) + sqr(0.429 - (exp(-
     3.9*x5)*x1 + exp(-sqr(3.9 - x9)*x6)*x2 + exp(-sqr(3.9 - x10)*x7)*x3 + exp(
     -sqr(3.9 - x11)*x8)*x4)) + sqr(0.523 - (exp(-4*x5)*x1 + exp(-sqr(4 - x9)*
     x6)*x2 + exp(-sqr(4 - x10)*x7)*x3 + exp(-sqr(4 - x11)*x8)*x4)) + sqr(0.562
      - (exp(-4.1*x5)*x1 + exp(-sqr(4.1 - x9)*x6)*x2 + exp(-sqr(4.1 - x10)*x7)*
     x3 + exp(-sqr(4.1 - x11)*x8)*x4)) + sqr(0.607 - (exp(-4.2*x5)*x1 + exp(-
     sqr(4.2 - x9)*x6)*x2 + exp(-sqr(4.2 - x10)*x7)*x3 + exp(-sqr(4.2 - x11)*x8
     )*x4)) + sqr(0.653 - (exp(-4.3*x5)*x1 + exp(-sqr(4.3 - x9)*x6)*x2 + exp(-
     sqr(4.3 - x10)*x7)*x3 + exp(-sqr(4.3 - x11)*x8)*x4)) + sqr(0.672 - (exp(-
     4.4*x5)*x1 + exp(-sqr(4.4 - x9)*x6)*x2 + exp(-sqr(4.4 - x10)*x7)*x3 + exp(
     -sqr(4.4 - x11)*x8)*x4)) + sqr(0.708 - (exp(-4.5*x5)*x1 + exp(-sqr(4.5 - 
     x9)*x6)*x2 + exp(-sqr(4.5 - x10)*x7)*x3 + exp(-sqr(4.5 - x11)*x8)*x4)) + 
     sqr(0.633 - (exp(-4.6*x5)*x1 + exp(-sqr(4.6 - x9)*x6)*x2 + exp(-sqr(4.6 - 
     x10)*x7)*x3 + exp(-sqr(4.6 - x11)*x8)*x4)) + sqr(0.668 - (exp(-4.7*x5)*x1
      + exp(-sqr(4.7 - x9)*x6)*x2 + exp(-sqr(4.7 - x10)*x7)*x3 + exp(-sqr(4.7
      - x11)*x8)*x4)) + sqr(0.645 - (exp(-4.8*x5)*x1 + exp(-sqr(4.8 - x9)*x6)*
     x2 + exp(-sqr(4.8 - x10)*x7)*x3 + exp(-sqr(4.8 - x11)*x8)*x4)) + sqr(0.632
      - (exp(-4.9*x5)*x1 + exp(-sqr(4.9 - x9)*x6)*x2 + exp(-sqr(4.9 - x10)*x7)*
     x3 + exp(-sqr(4.9 - x11)*x8)*x4)) + sqr(0.591 - (exp(-5*x5)*x1 + exp(-sqr(
     5 - x9)*x6)*x2 + exp(-sqr(5 - x10)*x7)*x3 + exp(-sqr(5 - x11)*x8)*x4)) + 
     sqr(0.559 - (exp(-5.1*x5)*x1 + exp(-sqr(5.1 - x9)*x6)*x2 + exp(-sqr(5.1 - 
     x10)*x7)*x3 + exp(-sqr(5.1 - x11)*x8)*x4)) + sqr(0.597 - (exp(-5.2*x5)*x1
      + exp(-sqr(5.2 - x9)*x6)*x2 + exp(-sqr(5.2 - x10)*x7)*x3 + exp(-sqr(5.2
      - x11)*x8)*x4)) + sqr(0.625 - (exp(-5.3*x5)*x1 + exp(-sqr(5.3 - x9)*x6)*
     x2 + exp(-sqr(5.3 - x10)*x7)*x3 + exp(-sqr(5.3 - x11)*x8)*x4)) + sqr(0.739
      - (exp(-5.4*x5)*x1 + exp(-sqr(5.4 - x9)*x6)*x2 + exp(-sqr(5.4 - x10)*x7)*
     x3 + exp(-sqr(5.4 - x11)*x8)*x4)) + sqr(0.71 - (exp(-5.5*x5)*x1 + exp(-
     sqr(5.5 - x9)*x6)*x2 + exp(-sqr(5.5 - x10)*x7)*x3 + exp(-sqr(5.5 - x11)*x8
     )*x4)) + sqr(0.729 - (exp(-5.6*x5)*x1 + exp(-sqr(5.6 - x9)*x6)*x2 + exp(-
     sqr(5.6 - x10)*x7)*x3 + exp(-sqr(5.6 - x11)*x8)*x4)) + sqr(0.72 - (exp(-
     5.7*x5)*x1 + exp(-sqr(5.7 - x9)*x6)*x2 + exp(-sqr(5.7 - x10)*x7)*x3 + exp(
     -sqr(5.7 - x11)*x8)*x4)) + sqr(0.636 - (exp(-5.8*x5)*x1 + exp(-sqr(5.8 - 
     x9)*x6)*x2 + exp(-sqr(5.8 - x10)*x7)*x3 + exp(-sqr(5.8 - x11)*x8)*x4)) + 
     sqr(0.581 - (exp(-5.9*x5)*x1 + exp(-sqr(5.9 - x9)*x6)*x2 + exp(-sqr(5.9 - 
     x10)*x7)*x3 + exp(-sqr(5.9 - x11)*x8)*x4)) + sqr(0.428 - (exp(-6*x5)*x1 + 
     exp(-sqr(6 - x9)*x6)*x2 + exp(-sqr(6 - x10)*x7)*x3 + exp(-sqr(6 - x11)*x8)
     *x4)) + sqr(0.292 - (exp(-6.1*x5)*x1 + exp(-sqr(6.1 - x9)*x6)*x2 + exp(-
     sqr(6.1 - x10)*x7)*x3 + exp(-sqr(6.1 - x11)*x8)*x4)) + sqr(0.162 - (exp(-
     6.2*x5)*x1 + exp(-sqr(6.2 - x9)*x6)*x2 + exp(-sqr(6.2 - x10)*x7)*x3 + exp(
     -sqr(6.2 - x11)*x8)*x4)) + sqr(0.098 - (exp(-6.3*x5)*x1 + exp(-sqr(6.3 - 
     x9)*x6)*x2 + exp(-sqr(6.3 - x10)*x7)*x3 + exp(-sqr(6.3 - x11)*x8)*x4)) + 
     sqr(0.054 - (exp(-6.4*x5)*x1 + exp(-sqr(6.4 - x9)*x6)*x2 + exp(-sqr(6.4 - 
     x10)*x7)*x3 + exp(-sqr(6.4 - x11)*x8)*x4))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1.3; 
x2.l = 0.65; 
x3.l = 0.65; 
x4.l = 0.7; 
x5.l = 0.6; 
x6.l = 3; 
x7.l = 5; 
x8.l = 7; 
x9.l = 2; 
x10.l = 4.5; 
x11.l = 5.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
