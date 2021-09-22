*  NLP written by GAMS Convert at 07/02/05 18:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        5        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Negative Variables  x1;

Equations  e1,e2,e3;


e1..  - (-0.25*sqr(x3) - sqr(x4)) + x1 =E= 1;

e2..    x2 - x3 + 2*x4 =E= 1;

e3..  - (sqr((-2) + x3) + sqr((-1) + x4) + 0.04/(0.0001 + x1) + 5*sqr(x2))
      + objvar =E= 0;

* set non default bounds

x1.up = -0.5; 

* set non default levels

x1.l = -0.5; 
x3.l = 2; 
x4.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
