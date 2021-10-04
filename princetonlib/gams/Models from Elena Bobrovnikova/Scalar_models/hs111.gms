*  NLP written by GAMS Convert at 06/26/06 16:29:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25        1       24        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4;


e1.. exp(x1) + 2*exp(x2) + 2*exp(x3) + exp(x6) + exp(x10) =E= 2;

e2.. exp(x4) + 2*exp(x5) + exp(x6) + exp(x7) =E= 1;

e3.. exp(x3) + exp(x7) + exp(x8) + 2*exp(x9) + exp(x10) =E= 1;

e4..  - (exp(x1)*(-6.089 + x1 - log(0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(
     x4) + exp(x5) + exp(x6) + exp(x7) + exp(x8) + exp(x9) + exp(x10))) + exp(
     x2)*(-17.164 + x2 - log(0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(x4) + 
     exp(x5) + exp(x6) + exp(x7) + exp(x8) + exp(x9) + exp(x10))) + exp(x3)*(-
     34.054 + x3 - log(0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(x4) + exp(x5)
      + exp(x6) + exp(x7) + exp(x8) + exp(x9) + exp(x10))) + exp(x4)*(-5.914 + 
     x4 - log(0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6
     ) + exp(x7) + exp(x8) + exp(x9) + exp(x10))) + exp(x5)*(-24.721 + x5 - 
     log(0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6) + 
     exp(x7) + exp(x8) + exp(x9) + exp(x10))) + exp(x6)*(-14.986 + x6 - log(
     0.0001 + exp(x1) + exp(x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6) + exp(
     x7) + exp(x8) + exp(x9) + exp(x10))) + exp(x7)*(-24.1 + x7 - log(0.0001 + 
     exp(x1) + exp(x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6) + exp(x7) + exp(
     x8) + exp(x9) + exp(x10))) + exp(x8)*(-10.708 + x8 - log(0.0001 + exp(x1)
      + exp(x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6) + exp(x7) + exp(x8) + 
     exp(x9) + exp(x10))) + exp(x9)*(-26.662 + x9 - log(0.0001 + exp(x1) + exp(
     x2) + exp(x3) + exp(x4) + exp(x5) + exp(x6) + exp(x7) + exp(x8) + exp(x9)
      + exp(x10))) + exp(x10)*(-22.179 + x10 - log(0.0001 + exp(x1) + exp(x2)
      + exp(x3) + exp(x4) + exp(x5) + exp(x6) + exp(x7) + exp(x8) + exp(x9) + 
     exp(x10)))) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10; 
x2.lo = -10; x2.up = 10; 
x3.lo = -10; x3.up = 10; 
x4.lo = -10; x4.up = 10; 
x5.lo = -10; x5.up = 10; 
x6.lo = -10; x6.up = 10; 
x7.lo = -10; x7.up = 10; 
x8.lo = -10; x8.up = 10; 
x9.lo = -10; x9.up = 10; 
x10.lo = -10; x10.up = 10; 

* set non default levels

x1.l = -2.3; 
x2.l = -2.3; 
x3.l = -2.3; 
x4.l = -2.3; 
x5.l = -2.3; 
x6.l = -2.3; 
x7.l = -2.3; 
x8.l = -2.3; 
x9.l = -2.3; 
x10.l = -2.3; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
