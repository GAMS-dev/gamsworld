*  NLP written by GAMS Convert at 07/02/05 18:32:27
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

Negative Variables  x5;

Equations  e1;


e1..  - (sqr((-1.07640035028567) + exp(-0.1*x1)*x3 - exp(-0.1*x2)*x4 + 3*exp(-
     0.1*x5)) + sqr((-1.49004122924658) + exp(-0.2*x1)*x3 - exp(-0.2*x2)*x4 + 3
     *exp(-0.2*x5)) + sqr((-1.395465514579) + exp(-0.3*x1)*x3 - exp(-0.3*x2)*x4
      + 3*exp(-0.3*x5)) + sqr((-1.18443140557593) + exp(-0.4*x1)*x3 - exp(-0.4*
     x2)*x4 + 3*exp(-0.4*x5)) + sqr((-0.978846774427044) + exp(-0.5*x1)*x3 - 
     exp(-0.5*x2)*x4 + 3*exp(-0.5*x5)) + sqr((-0.808571735078932) + exp(-0.6*x1
     )*x3 - exp(-0.6*x2)*x4 + 3*exp(-0.6*x5)) + sqr((-0.674456081839291) + exp(
     -0.7*x1)*x3 - exp(-0.7*x2)*x4 + 3*exp(-0.7*x5)) + sqr((-0.569938262912808)
      + exp(-0.8*x1)*x3 - exp(-0.8*x2)*x4 + 3*exp(-0.8*x5)) + sqr((-
     0.487923778062043) + exp(-0.9*x1)*x3 - exp(-0.9*x2)*x4 + 3*exp(-0.9*x5))
      + sqr((-0.422599358188832) + exp(-x1)*x3 - exp(-x2)*x4 + 3*exp(-x5)) + 
     sqr((-0.369619594903334) + exp(-1.1*x1)*x3 - exp(-1.1*x2)*x4 + 3*exp(-1.1*
     x5))) + objvar =E= 0;

* set non default bounds

x5.up = 2; 

* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 
x4.l = 2; 
x5.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
