*  NLP written by GAMS Convert at 10/06/06 11:53:54
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         18       10        8        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         98       17       81        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1.. sqr((-1.99609375) + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9) =E= 0;

e2.. sqr((-1.33332824707031) + sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5)
      + sqr(x6) + sqr(x7) + sqr(x8) + sqr(x9)) =E= 0;

e3.. sqr((-1.14285713434219) + POWER(x1,3) + POWER(x2,3) + POWER(x3,3) + POWER(
     x4,3) + POWER(x5,3) + POWER(x6,3) + POWER(x7,3) + POWER(x8,3) + POWER(x9,3
     )) =E= 0;

e4.. sqr((-1.06666666665114) + POWER(x1,4) + POWER(x2,4) + POWER(x3,4) + POWER(
     x4,4) + POWER(x5,4) + POWER(x6,4) + POWER(x7,4) + POWER(x8,4) + POWER(x9,4
     )) =E= 0;

e5.. sqr((-1.0322580645161) + POWER(x1,5) + POWER(x2,5) + POWER(x3,5) + POWER(
     x4,5) + POWER(x5,5) + POWER(x6,5) + POWER(x7,5) + POWER(x8,5) + POWER(x9,5
     )) =E= 0;

e6.. sqr((-1.01587301587302) + POWER(x1,6) + POWER(x2,6) + POWER(x3,6) + POWER(
     x4,6) + POWER(x5,6) + POWER(x6,6) + POWER(x7,6) + POWER(x8,6) + POWER(x9,6
     )) =E= 0;

e7.. sqr((-1.00787401574803) + POWER(x1,7) + POWER(x2,7) + POWER(x3,7) + POWER(
     x4,7) + POWER(x5,7) + POWER(x6,7) + POWER(x7,7) + POWER(x8,7) + POWER(x9,7
     )) =E= 0;

e8.. sqr((-1.00392156862745) + POWER(x1,8) + POWER(x2,8) + POWER(x3,8) + POWER(
     x4,8) + POWER(x5,8) + POWER(x6,8) + POWER(x7,8) + POWER(x8,8) + POWER(x9,8
     )) =E= 0;

e9.. sqr((-1.00195694716243) + POWER(x1,9) + POWER(x2,9) + POWER(x3,9) + POWER(
     x4,9) + POWER(x5,9) + POWER(x6,9) + POWER(x7,9) + POWER(x8,9) + POWER(x9,9
     )) =E= 0;

e10..  - x1 + x2 =G= 0;

e11..  - x2 + x3 =G= 0;

e12..  - x3 + x4 =G= 0;

e13..  - x4 + x5 =G= 0;

e14..  - x5 + x6 =G= 0;

e15..  - x6 + x7 =G= 0;

e16..  - x7 + x8 =G= 0;

e17..  - x8 + x9 =G= 0;

e18..    objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 0.111111111111111; 
x3.l = 0.222222222222222; 
x4.l = 0.333333333333333; 
x5.l = 0.444444444444444; 
x6.l = 0.555555555555556; 
x7.l = 0.666666666666667; 
x8.l = 0.777777777777778; 
x9.l = 0.888888888888889; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
