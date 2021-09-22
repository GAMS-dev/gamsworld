*  NLP written by GAMS Convert at 07/02/05 18:32:25
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

Negative Variables  x2;

Equations  e1,e2,e3,e4;


e1.. x1*x2 =G= 700;

e2..  - 5*sqr(0.04*x1) + x2 =G= 0;

e3.. sqr((-50) + x2) - 5*x1 =G= -275;

e4.. 0.1269366345*sqr(x1) - 3.8112755343*x1 - 0.0020567665*POWER(x1,3) + 
     1.0345e-5*POWER(x1,4) + 0.0302344793*x1*x2 - 6.8306567613*x2 - 
     0.0012813448*sqr(x1)*x2 + 3.52559e-5*POWER(x1,3)*x2 - 2.266e-7*POWER(x1,4)
     *x2 + 0.2564581253*sqr(x2) - 0.003460403*POWER(x2,3) + 1.35139e-5*POWER(x2
     ,4) - 28.1064434908/(1 + x2) - 5.2375e-6*sqr(x1)*sqr(x2) - 6.3e-9*POWER(x1
     ,3)*sqr(x2) + 7e-10*POWER(x1,3)*POWER(x2,3) + 0.0003405462*sqr(x2)*x1 - 
     1.6638e-6*POWER(x2,3)*x1 - 2.8673112392*exp(0.0005*x1*x2) + objvar
      =E= -75.1963666677;

* set non default bounds

x1.lo = 51; x1.up = 75; 
x2.up = 65; 

* set non default levels

x1.l = 75; 
x2.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
