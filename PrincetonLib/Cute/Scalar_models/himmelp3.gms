*  NLP written by GAMS Convert at 10/06/06 11:33:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        2        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3;


e1.. x1*x2 =G= 700;

e2.. 0.008*sqr(x1) - x2 =L= 0;

e3..  - (3.8112755343*x1 - (0.1269366345*sqr(x1) - 0.0020567665*POWER(x1,3) + 
     1.0345e-5*POWER(x1,4) + (0.0302344793*x1 - 0.0012813448*sqr(x1) + 
     3.52599e-5*POWER(x1,3) - 2.266e-7*POWER(x1,4))*x2 + 0.2564581253*sqr(x2)
      - 0.003460403*POWER(x2,3) + 1.35139e-5*POWER(x2,4) - 28.1064434908/(1 + 
     x2) + (0.0003405462*x1 - 5.2375e-6*sqr(x1) - 6.3e-9*POWER(x1,3))*sqr(x2)
      + (7e-10*POWER(x1,3) - 1.6638e-6*x1)*POWER(x2,3) - 2.8673112392*exp(
     0.0005*x1*x2)) + 6.8306567613*x2) + objvar =E= -75.1963666677;

* set non default bounds

x1.up = 75; 
x2.up = 65; 

* set non default levels

x1.l = 31; 
x2.l = 48; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
