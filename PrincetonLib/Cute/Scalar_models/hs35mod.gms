*  NLP written by GAMS Convert at 10/06/06 11:33:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        4        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x3;

Equations  e1,e2;


e1..  - x1 - x2 - 2*x3 =G= -3;

e2..  - (2*sqr(x1) - 8*x1 + 2*sqr(x2) - 6*x2 + sqr(x3) - 4*x3 + 2*x1*x2 + 2*x1*
     x3) + objvar =E= 9;

* set non default bounds

x2.fx = 0.5; 

* set non default levels

x1.l = 0.5; 
x3.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
