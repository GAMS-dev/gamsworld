*  NLP written by GAMS Convert at 10/06/06 11:33:41
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        3        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4;


e1.. x1*x2 =G= 700;

e2..  - 0.008*sqr(x1) + x2 =G= 0;

e3.. sqr((-50) + x2) - 5*x1 =G= -275;

e4..  - (0.0020567*POWER(x1,3) + 3.8112*x1 - 1.0345e-5*POWER(x1,4) - 0.030234*
     x1*x2 + 6.8306*x2 + 0.00128134*sqr(x1)*x2 + 2.266e-7*POWER(x1,4)*x2 - 
     0.25645*sqr(x2) + 0.0034604*POWER(x2,3) - 1.3514e-5*POWER(x2,4) + 28.106/(
     1 + x2) + 5.2375e-6*sqr(x1)*sqr(x2) + 6.3e-8*POWER(x1,3)*sqr(x2) - 7e-10*
     POWER(x1,3)*POWER(x2,3) - 0.0003405*sqr(x2)*x1 + 1.6638e-6*POWER(x2,3)*x1
      + 2.8673*exp(0.0005*x1*x2) - 3.5256e-5*POWER(x1,3)*x2 - 0.12694*sqr(x1))
      + objvar =E= -75.196;

* set non default bounds

x1.up = 75; 
x2.up = 65; 

* set non default levels

x1.l = 60; 
x2.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
