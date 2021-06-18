*  NLP written by GAMS Convert at 07/02/05 18:32:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        3        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         23       19        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..  - (sqr(0.53*x1) + sqr(0.44*x2) + sqr(4.5*x3) + sqr(0.79*x4)) + x5 =E= 0;

e2..    2.3*x1 + 5.6*x2 + 11.1*x3 + 1.3*x4 =G= 5;

e3..    12*x1 + 11.9*x2 + 41.8*x3 + 52.1*x4 - 1.645*x5 =G= 12;

e4..    x1 + x2 + x3 + x4 =E= 1;

e5..    24.55*x1 + 26.75*x2 + 39*x3 + 40.5*x4 + objvar =E= 0;

* set non default bounds


* set non default levels

x3.l = 0.4; 
x4.l = 0.6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
