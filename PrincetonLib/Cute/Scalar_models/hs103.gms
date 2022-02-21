*  NLP written by GAMS Convert at 10/06/06 11:33:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        5        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         46        1       45        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. (-0.5*sqrt(x1)*x7/(sqr(x6)*x3)) - 0.7*POWER(x1,3)*x2*x6*sqrt(x7)/sqr(x3)
      - 0.2*exp(0.666666666666667*log(x6))*x3*sqrt(sqrt(x7))/(sqrt(x4)*x2)
      =G= -1;

e2.. (-1.3*x2*x6/(sqrt(x1)*x3*x5)) - 0.8*sqr(x6)*x3/(x4*x5) - 3.1*sqrt(x2)*exp(
     0.333333333333333*log(x6))/(sqr(x4)*x1*x5) =G= -1;

e3.. (-2*x1*x5*exp(0.333333333333333*log(x7))/(exp(1.5*log(x3))*x6)) - 0.1*x2*
     x5/(sqrt(x3)*x6*sqrt(x7)) - sqrt(x3)*x2*x5/x1 - 0.65*x3*x5*x7/(sqr(x2)*x6)
      =G= -1;

e4.. (-0.2*sqrt(x5)*x2*exp(0.333333333333333*log(x7))/(sqr(x1)*x4)) - 0.3*sqrt(
     x1)*sqr(x2)*x3*exp(0.333333333333333*log(x4))*sqrt(sqrt(x7))/exp(
     0.666666666666667*log(x5)) - 0.4*x3*x5*exp(0.75*log(x7))/(POWER(x1,3)*sqr(
     x2)) - 0.5*sqrt(x7)*x4/sqr(x3) =G= -1;

e5.. 10*sqr(x4)*x1*exp(0.5*log(x7))/(POWER(x6,3)*x2) + 15*x3*x4/(sqr(x2)*x1*x5*
     sqrt(x7)) + 20*x2*x6/(sqr(x1)*x4*sqr(x5)) + 25*sqr(x1)*sqr(x2)*sqrt(x5)*x7
     /(sqr(x6)*x3) =G= 100;

e6.. 10*sqr(x4)*x1*exp(0.5*log(x7))/(POWER(x6,3)*x2) + 15*x3*x4/(sqr(x2)*x1*x5*
     sqrt(x7)) + 20*x2*x6/(sqr(x1)*x4*sqr(x5)) + 25*sqr(x1)*sqr(x2)*sqrt(x5)*x7
     /(sqr(x6)*x3) =L= 3000;

e7..  - (10*sqr(x4)*x1*exp(0.5*log(x7))/(POWER(x6,3)*x2) + 15*x3*x4/(sqr(x2)*x1
     *x5*sqrt(x7)) + 20*x2*x6/(sqr(x1)*x4*sqr(x5)) + 25*sqr(x1)*sqr(x2)*sqrt(x5
     )*x7/(sqr(x6)*x3)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.1; x1.up = 10; 
x2.lo = 0.1; x2.up = 10; 
x3.lo = 0.1; x3.up = 10; 
x4.lo = 0.1; x4.up = 10; 
x5.lo = 0.1; x5.up = 10; 
x6.lo = 0.1; x6.up = 10; 
x7.lo = 0.01; x7.up = 10; 

* set non default levels

x2.l = 6; 
x3.l = 6; 
x4.l = 6; 
x5.l = 6; 
x6.l = 6; 
x7.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
