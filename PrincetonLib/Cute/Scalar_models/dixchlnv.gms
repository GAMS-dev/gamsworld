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


e1.. log(x1) + log(x2) =E= 0;

e2.. log(x1) + log(x2) + log(x3) + log(x4) =E= 0;

e3.. log(x1) + log(x2) + log(x3) + log(x4) + log(x5) + log(x6) =E= 0;

e4.. log(x1) + log(x2) + log(x3) + log(x4) + log(x5) + log(x6) + log(x7) + log(
     x8) =E= 0;

e5.. log(x1) + log(x2) + log(x3) + log(x4) + log(x5) + log(x6) + log(x7) + log(
     x8) + log(x9) + log(x10) =E= 0;

e6..  - (100*sqr(x2 - sqr(x1)) + sqr((-1) + x1) + 90*sqr(x4 - sqr(x3)) + sqr((-
     1) + x3) + 10.1*sqr((-1) + x2) + 10.1*sqr((-1) + x4) + 19.8*(-1 + x2)*(-1
      + x4) + 100*sqr(x3 - sqr(x2)) + sqr((-1) + x2) + 90*sqr(x5 - sqr(x4)) + 
     sqr((-1) + x4) + 10.1*sqr((-1) + x3) + 10.1*sqr((-1) + x5) + 19.8*(-1 + x3
     )*(-1 + x5) + 100*sqr(x4 - sqr(x3)) + sqr((-1) + x3) + 90*sqr(x6 - sqr(x5)
     ) + sqr((-1) + x5) + 10.1*sqr((-1) + x4) + 10.1*sqr((-1) + x6) + 19.8*(-1
      + x4)*(-1 + x6) + 100*sqr(x5 - sqr(x4)) + sqr((-1) + x4) + 90*sqr(x7 - 
     sqr(x6)) + sqr((-1) + x6) + 10.1*sqr((-1) + x5) + 10.1*sqr((-1) + x7) + 
     19.8*(-1 + x5)*(-1 + x7) + 100*sqr(x6 - sqr(x5)) + sqr((-1) + x5) + 90*
     sqr(x8 - sqr(x7)) + sqr((-1) + x7) + 10.1*sqr((-1) + x6) + 10.1*sqr((-1)
      + x8) + 19.8*(-1 + x6)*(-1 + x8) + 100*sqr(x7 - sqr(x6)) + sqr((-1) + x6)
      + 90*sqr(x9 - sqr(x8)) + sqr((-1) + x8) + 10.1*sqr((-1) + x7) + 10.1*sqr(
     (-1) + x9) + 19.8*(-1 + x7)*(-1 + x9) + 100*sqr(x8 - sqr(x7)) + sqr((-1)
      + x7) + 90*sqr(x10 - sqr(x9)) + sqr((-1) + x9) + 10.1*sqr((-1) + x8) + 
     10.1*sqr((-1) + x10) + 19.8*(-1 + x8)*(-1 + x10)) + objvar =E= 0;

* set non default bounds

x1.lo = 1E-8; 
x2.lo = 1E-8; 
x3.lo = 1E-8; 
x4.lo = 1E-8; 
x5.lo = 1E-8; 
x6.lo = 1E-8; 
x7.lo = 1E-8; 
x8.lo = 1E-8; 
x9.lo = 1E-8; 
x10.lo = 1E-8; 

* set non default levels

x1.l = 2; 
x2.l = 0.333333333333333; 
x3.l = 4; 
x4.l = 0.2; 
x5.l = 6; 
x6.l = 0.142857142857143; 
x7.l = 8; 
x8.l = 0.111111111111111; 
x9.l = 10; 
x10.l = 0.0909090909090909; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
