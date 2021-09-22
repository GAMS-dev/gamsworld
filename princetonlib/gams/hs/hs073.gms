*  NLP written by GAMS Convert at 07/27/06 09:26:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17       13        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4;


e1..    2.3*x1 + 5.6*x2 + 11.1*x3 + 1.3*x4 =E= 5;

e2.. 12*x1 - 1.645*sqrt(0.28*sqr(x1) + 0.19*sqr(x2) + 20.5*sqr(x3) + 0.62*sqr(
     x4)) + 11.9*x2 + 41.8*x3 + 52.1*x4 =E= 21;

e3..    x1 + x2 + x3 + x4 =E= 1;

e4..  - 24.55*x1 - 26.75*x2 - 39*x3 - 40.5*x4 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
