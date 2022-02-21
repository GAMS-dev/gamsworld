*  NLP written by GAMS Convert at 10/06/06 11:31:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         41        1       40        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1.. x1*x2 =E= 1;

e2.. x1*x2*x3*x4 =E= 1;

e3.. x1*x2*x3*x4*x5*x6 =E= 1;

e4.. x1*x2*x3*x4*x5*x6*x7*x8 =E= 1;

e5.. x1*x2*x3*x4*x5*x6*x7*x8*x9*x10 =E= 1;

e6..  - (100*sqr(x2 - sqr(x1)) + 100*sqr(x3 - sqr(x2)) + 100*sqr(x4 - sqr(x3))
      + 100*sqr(x5 - sqr(x4)) + 100*sqr(x6 - sqr(x5)) + 100*sqr(x7 - sqr(x6))
      + 100*sqr(x8 - sqr(x7)) + sqr((-1) + x1) + sqr((-1) + x2) + sqr((-1) + x3
     ) + sqr((-1) + x4) + sqr((-1) + x5) + sqr((-1) + x6) + sqr((-1) + x7) + 90
     *sqr(x4 - sqr(x3)) + 90*sqr(x5 - sqr(x4)) + 90*sqr(x6 - sqr(x5)) + 90*sqr(
     x7 - sqr(x6)) + 90*sqr(x8 - sqr(x7)) + 90*sqr(x9 - sqr(x8)) + 90*sqr(x10
      - sqr(x9)) + sqr((-1) + x3) + sqr((-1) + x4) + sqr((-1) + x5) + sqr((-1)
      + x6) + sqr((-1) + x7) + sqr((-1) + x8) + sqr((-1) + x9) + 10.1*sqr((-1)
      + x2) + 10.1*sqr((-1) + x3) + 10.1*sqr((-1) + x4) + 10.1*sqr((-1) + x5)
      + 10.1*sqr((-1) + x6) + 10.1*sqr((-1) + x7) + 10.1*sqr((-1) + x8) + 10.1*
     sqr((-1) + x4) + 10.1*sqr((-1) + x5) + 10.1*sqr((-1) + x6) + 10.1*sqr((-1)
      + x7) + 10.1*sqr((-1) + x8) + 10.1*sqr((-1) + x9) + 10.1*sqr((-1) + x10)
      + (-19.8 + 19.8*x2)*(-1 + x4) + (-19.8 + 19.8*x3)*(-1 + x5) + (-19.8 + 
     19.8*x4)*(-1 + x6) + (-19.8 + 19.8*x5)*(-1 + x7) + (-19.8 + 19.8*x6)*(-1
      + x8) + (-19.8 + 19.8*x7)*(-1 + x9) + (-19.8 + 19.8*x8)*(-1 + x10))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -2; 
x2.l = -0.5; 
x3.l = 3; 
x4.l = 0.33333; 
x5.l = -4; 
x6.l = -0.25; 
x7.l = 5; 
x8.l = 0.2; 
x9.l = -6; 
x10.l = -0.16667; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
